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
    powershell -Command "(Get-Content -Raw '%%F') -replace 'StructureDefinition-location-eu\.html', 'https://hl7.eu/fhir/base/StructureDefinition-location-eu.html' -replace 'StructureDefinition-patient-eu-core\.html', 'https://hl7.eu/fhir/base/StructureDefinition-patient-eu-core.html' -replace 'StructureDefinition-practitionerRole-eu-core\.html', 'https://hl7.eu/fhir/base/StructureDefinition-practitionerRole-eu-core.html' -replace 'StructureDefinition-practitioner-eu-core\.html', 'https://hl7.eu/fhir/base/StructureDefinition-practitioner-eu-core.html' -replace 'StructureDefinition-organization-eu-core\.html', 'https://hl7.eu/fhir/base/StructureDefinition-organization-eu-core.html' -replace 'StructureDefinition-Observation-resultslab-eu-lab.html', 'https://hl7.eu/fhir/laboratory/StructureDefinition-Observation-resultslab-eu-lab.html' -replace 'StructureDefinition-organization-eu.html', 'https://hl7.eu/fhir/base/StructureDefinition-organization-eu.html' | Set-Content '!tmp_file!'"
    move /Y "!tmp_file!" "%%F" >nul
)

echo Done.