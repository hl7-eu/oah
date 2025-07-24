@echo off
setlocal enabledelayedexpansion

REM Set the directory containing the files
set "src_dir=..\input\images-source"

REM Loop through all *-map.plantuml files in the directory
for %%F in (%src_dir%\*-map.plantuml) do (
    echo Processing %%F
    REM Use a temporary file for replacement
    set "tmp_file=%%F.tmp"
    REM Replace the links using PowerShell
    powershell -Command "(Get-Content -Raw \"%%F\") -replace 'StructureDefinition-Attachment.html', 'https://hl7.org/fhir/R4/datatypes.html#Attachment' -replace 'StructureDefinition-DataRequirement.html', 'https://hl7.org/fhir/R4/datatypes.html#DataRequirement' | Set-Content \"!tmp_file!\""
    move /Y "!tmp_file!" "%%F" >nul
)

echo Done.