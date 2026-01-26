$ErrorActionPreference = "Stop"

param(
  [string]$ExcelPath = "_samples\\heathIndicator-OAH.xlsx",
  [string]$SheetName = "BN_2024_Disease prevalence",
  [string]$OutFile = "_samples\\benevento\\diseasePrevalence\\BN_2024_Disease_prevalence_long.csv"
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

  $headerRowIndex = $null
  $indicatorHeaderRow = $null
  $headerMap = @{}

  foreach ($row in $rows) {
    $rowValues = @{}
    foreach ($cell in $row.SelectNodes("ns:c", $nsSheet)) {
      $cellRef = $cell.GetAttribute("r")
      $colIndex = Get-ColumnIndex $cellRef
      $rowValues[$colIndex] = (Get-CellValue $cell $sharedStrings $nsSheet)
    }

    if (-not $headerRowIndex -and ($rowValues.Values | Where-Object { $_ -and $_.Trim() -eq "% Men" })) {
      $headerRowIndex = [int]$row.GetAttribute("r")
      foreach ($colIndex in $rowValues.Keys) {
        $header = $rowValues[$colIndex]
        if ($header) { $headerMap[$header.Trim()] = $colIndex }
      }
    }

    if (-not $indicatorHeaderRow -and ($rowValues.Values | Where-Object { $_ -and $_.Trim() -eq "Indicators" })) {
      $indicatorHeaderRow = [int]$row.GetAttribute("r")
      foreach ($colIndex in $rowValues.Keys) {
        $header = $rowValues[$colIndex]
        if ($header -and $header.Trim() -eq "Indicators") { $headerMap["Indicators"] = $colIndex }
      }
    }

    if ($headerRowIndex -and $indicatorHeaderRow) { break }
  }

  if (-not $headerRowIndex) { throw "Header row with '% Men' not found" }
  if (-not $indicatorHeaderRow) { throw "Header row with 'Indicators' not found" }

  $bnColumns = $headerMap.Keys | Where-Object { $_ -match '^BN\\d+[MW]$' }
  if ($bnColumns.Count -eq 0) { throw "No BN columns found in header row" }

  $culture = [System.Globalization.CultureInfo]::InvariantCulture
  $numberStyles = [System.Globalization.NumberStyles]::Float

  $dataStartRow = [Math]::Max($headerRowIndex, $indicatorHeaderRow) + 1
  $outRows = @()

  foreach ($row in $rows) {
    $rowIndex = [int]$row.GetAttribute("r")
    if ($rowIndex -lt $dataStartRow) { continue }
    $rowValues = @{}
    foreach ($cell in $row.SelectNodes("ns:c", $nsSheet)) {
      $cellRef = $cell.GetAttribute("r")
      $colIndex = Get-ColumnIndex $cellRef
      $rowValues[$colIndex] = (Get-CellValue $cell $sharedStrings $nsSheet)
    }
    $indicatorValue = $rowValues[$headerMap["Indicators"]]
    if (-not $indicatorValue) { continue }

    $age = "n.d."
    $cleanIndicator = $indicatorValue
    if ($indicatorValue -match '^% of men and women aged (?<age>[^ ]+) yo (?<rest>.+)$') {
      $age = $matches.age
      $cleanIndicator = "% {0}" -f $matches.rest.Trim()
    }

    foreach ($col in $bnColumns) {
      $value = $rowValues[$headerMap[$col]]
      if ($null -eq $value -or $value -eq "") { continue }

      if ($col -notmatch '^BN(?<num>\\d+)(?<sex>[MW])$') { continue }
      $location = "BN$($matches.num)"
      $sex = $matches.sex

      $m = $sex -eq "M"
      $f = $sex -eq "W"

      $outValue = $value
      $parsed = 0.0
      if ([double]::TryParse($value, $numberStyles, $culture, [ref]$parsed)) {
        $rounded = [math]::Round($parsed, 2)
        $outValue = $rounded.ToString("0.##", $culture)
      }

      $outRows += [PSCustomObject]@{
        Indicator = $cleanIndicator
        location  = $location
        M         = $m
        F         = $f
        age       = $age
        value     = $outValue
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
