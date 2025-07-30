@echo off
setlocal enabledelayedexpansion


REM === Load configuration ===
call "%~dp0config.bat"


echo Select which scripts to run:
echo 1 - Only script 1 (gen-fsh-from-xls)
echo 2 - Only script 2 (clean-map-run-sushi)
echo 3 - Only script 3 (generateMapDiagrams)
echo 4 - Only script 4 (fix-links)
echo 5 - Scripts 1 to 3
echo 6 - Scripts 1 to 4 (ALL)
set /p choice=Enter choice [1-6]:

if "%choice%"=="1" goto run1
if "%choice%"=="2" goto run2
if "%choice%"=="3" goto run3
if "%choice%"=="4" goto run4
if "%choice%"=="5" goto run5
if "%choice%"=="6" goto run6

echo Invalid choice: %choice%
goto end

:run1
echo Running script 1: gen-fsh-from-xls
"%PYTHON_ENV%" "%SCRIPTS_DIR%\excel-to-fsh.py" --config "%CONFIG_INI%"
goto end

:run2
echo Running script 2: clean map files and run sushi
del /q "%OUTPUT_CSV%\*.csv"
del /q "%INPUT_IMAGES%\*-map.plantuml"
del /q "%INPUT_PAGECONTENT%\*-map.xml"
pushd "%PROJECT_DIR%"
call sushi .
popd
goto end

:run3
echo Running script 3: generateMapDiagrams
"%PYTHON_ENV%" "%SCRIPTS_DIR%\gen-map-diag\run_all_scripts.py" -config "%DIAG_CONFIG%"
goto end

:run4
echo Running script 4: fix-links
call :fixLinks
goto end

:run5
call :run1
call :run2
call :run3
goto end

:run6
call :run1
call :run2
call :run3
call :fixLinks
goto end

:fixLinks
echo --- Fixing links in -map.plantuml files ---
for %%F in ("%INPUT_IMAGES%\*-map.plantuml") do (
    echo Processing %%~nxF
    powershell -Command "(Get-Content -Raw \"%%F\") -replace 'StructureDefinition-Attachment.html', 'https://hl7.org/fhir/R4/datatypes.html#Attachment' -replace 'StructureDefinition-DataRequirement.html', 'https://hl7.org/fhir/R4/datatypes.html#DataRequirement' | Set-Content \"%%F.tmp\""
    move /Y "%%F.tmp" "%%F" >nul
)
echo Done.
goto :eof

:end
echo Finished.
pause
