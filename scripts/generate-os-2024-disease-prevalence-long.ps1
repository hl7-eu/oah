$ErrorActionPreference = "Stop"

param(
  [string]$ExcelPath = "_samples\\heathIndicator-OAH.xlsx",
  [string]$SheetName = "OS_2024_Disease prevalence",
  [string]$OutFile = "_samples\\benevento\\diseasePrevalence\\OS_2024_Disease_prevalence_long.csv",
  [string]$Location = "Nordre Aker"
)

Add-Type -AssemblyName System.IO.Compression.FileSystem

function Get-ZipEntryText($zipFile, $entryPath) {
  $entry = $zipFile.GetEntry($entryPath)
  if (-not $entry) { return $null }
  $reader = New-Object System.IO.StreamReader($entry.Open())
  try { return $reader.ReadToEnd() } finally { $reader.Dispose() }
}

function Get-SharedStrings($zipFile) {
  $xmlText = Get-ZipEntryText $zipFile "xl/sharedStrings.xml"
  if (-not $xmlText) { return @() }
  [xml]$xml = $xmlText
  $ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
  $ns.AddNamespace("ns", "http://schemas.openxmlformats.org/spreadsheetml/2006/main")
  $strings = @()
  foreach ($si in $xml.SelectNodes("//ns:si", $ns)) {
    $tNode = $si.SelectSingleNode("ns:t", $ns)
    if ($tNode) { $strings += $tNode.InnerText; continue }
    $rNodes = $si.SelectNodes("ns:r", $ns)
    if ($rNodes -and $rNodes.Count -gt 0) {
      $strings += ($rNodes | ForEach-Object { $_.SelectSingleNode("ns:t", $ns).InnerText }) -join ""
      continue
    }
    $strings += ""
  }
  return $strings
}

function Get-ColumnIndex($cellRef) {
  $letters = ($cellRef -replace "[^A-Z]", "")
  $index = 0
  foreach ($ch in $letters.ToCharArray()) { $index = $index * 26 + ([int][char]$ch - 64) }
  return $index
}

function Get-CellValue($cell, $sharedStrings, $nsSheet) {
  if (-not $cell) { return $null }
  $cellType = $cell.GetAttribute("t")
  $vNode = $cell.SelectSingleNode("ns:v", $nsSheet)
  if ($cellType -eq "s") {
    if (-not $vNode) { return $null }
    $idx = [int]$vNode.InnerText
    if ($idx -ge 0 -and $idx -lt $sharedStrings.Count) { return $sharedStrings[$idx] }
    return $null
  }
  if ($cellType -eq "inlineStr") {
    $tNode = $cell.SelectSingleNode("ns:is/ns:t", $nsSheet)
    return $tNode.InnerText
  }
  return $vNode.InnerText
}

$zip = [System.IO.Compression.ZipFile]::OpenRead((Join-Path $PWD $ExcelPath))
try {
  $workbookXml = Get-ZipEntryText $zip "xl/workbook.xml"
  if (-not $workbookXml) { throw "workbook.xml not found" }
  [xml]$workbook = $workbookXml
  $nsWb = New-Object System.Xml.XmlNamespaceManager($workbook.NameTable)
  $nsWb.AddNamespace("ns", "http://schemas.openxmlformats.org/spreadsheetml/2006/main")
  $nsWb.AddNamespace("r", "http://schemas.openxmlformats.org/officeDocument/2006/relationships")
  $sheetNode = $workbook.SelectSingleNode("//ns:sheet[@name='$SheetName']", $nsWb)
  if (-not $sheetNode) { throw "Sheet not found: $SheetName" }
  $relId = $sheetNode.GetAttribute("r:id")

  $relsXml = Get-ZipEntryText $zip "xl/_rels/workbook.xml.rels"
  [xml]$rels = $relsXml
  $nsRels = New-Object System.Xml.XmlNamespaceManager($rels.NameTable)
  $nsRels.AddNamespace("ns", "http://schemas.openxmlformats.org/package/2006/relationships")
  $sheetRel = $rels.SelectSingleNode("//ns:Relationship[@Id='$relId']", $nsRels)
  if (-not $sheetRel) { throw "Sheet relationship not found for $relId" }
  $sheetPath = "xl/{0}" -f $sheetRel.GetAttribute("Target")

  $sheetXmlText = Get-ZipEntryText $zip $sheetPath
  if (-not $sheetXmlText) { throw "Sheet XML not found: $sheetPath" }
  [xml]$sheetXml = $sheetXmlText
  $nsSheet = New-Object System.Xml.XmlNamespaceManager($sheetXml.NameTable)
  $nsSheet.AddNamespace("ns", "http://schemas.openxmlformats.org/spreadsheetml/2006/main")

  $sharedStrings = Get-SharedStrings $zip
  $rows = $sheetXml.SelectNodes("//ns:sheetData/ns:row", $nsSheet)

  $columns = @(
    "OS1M + OS3M + OS9M",
    "OS1W + OS3W + OS9W",
    "TOT (M + W)",
    "% 18-29 years",
    "% 30-39 years",
    "% 40-49 years",
    "% 50-59 years",
    "% 60-69 years",
    "% 70 years or above"
  )

  $headerMap = @{
    "OS1M + OS3M + OS9M" = 2
    "OS1W + OS3W + OS9W" = 3
    "TOT (M + W)"        = 4
    "% 18-29 years"      = 5
    "% 30-39 years"      = 6
    "% 40-49 years"      = 7
    "% 50-59 years"      = 8
    "% 60-69 years"      = 9
    "% 70 years or above"= 10
  }

  $agePattern = '^%\s*(?<age>\d{2}-\d{2})\s*years$'
  $outRows = @()

  foreach ($row in $rows) {
    $rowIndex = [int]$row.GetAttribute("r")
    if ($rowIndex -le 2) { continue }
    $rowValues = @{}
    foreach ($cell in $row.SelectNodes("ns:c", $nsSheet)) {
      $cellRef = $cell.GetAttribute("r")
      $colIndex = Get-ColumnIndex $cellRef
      $rowValues[$colIndex] = (Get-CellValue $cell $sharedStrings $nsSheet)
    }
    $indicatorValue = $rowValues[1]
    if (-not $indicatorValue) { continue }

    foreach ($col in $columns) {
      $value = $rowValues[$headerMap[$col]]
      if ($null -eq $value -or $value -eq "") { continue }

      $age = "n.d."
      if ($col -match $agePattern) { $age = $matches.age }
      if ($col -eq "% 70 years or above") { $age = ">=70" }

      $m = $col -eq "OS1M + OS3M + OS9M"
      $f = $col -eq "OS1W + OS3W + OS9W"
      if (-not $m -and -not $f) { $m = $true; $f = $true }

      $outRows += [PSCustomObject]@{
        Indicator = $indicatorValue
        location  = $Location
        M         = $m
        F         = $f
        age       = $age
        value     = $value
      }
    }
  }

  $outDir = Split-Path -Parent (Join-Path $PWD $OutFile)
  if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir | Out-Null }
  $outRows | Export-Csv -Path (Join-Path $PWD $OutFile) -NoTypeInformation -Encoding UTF8
  Write-Output ("Wrote {0} rows to {1}" -f $outRows.Count, (Join-Path $PWD $OutFile))
}
finally {
  $zip.Dispose()
}
