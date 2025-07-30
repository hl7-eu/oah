@echo off
setlocal enabledelayedexpansion

REM === Default config file ===
set "CONFIG_FILE=config\config.bat"

REM === Parse command line arguments ===
if /i "%1"=="-h" (
    echo Usage: %~nx0 [-c config\your-config.bat]
    echo.
    echo Options:
    echo   -c <file>     Use custom configuration file
    echo   -h            Show this help message
    echo.
    echo If no -c option is provided, uses default: config\config.bat
    goto end
)

if /i "%1"=="-c" (
    if not "%2"=="" (
        set "CONFIG_FILE=%2"
    ) else (
        echo ERROR: -c flag provided but no config file specified.
        goto end
    )
)

REM === Compute full path and load configuration ===
set "CONFIG_PATH=%~dp0%CONFIG_FILE%"
echo Running with config file: %CONFIG_PATH%
echo Use "-c <config_file>" to specify a different config file.

if exist "%CONFIG_PATH%" (
    call "%CONFIG_PATH%"
) else (
    echo ERROR: Configuration file not found: "%CONFIG_PATH%"
    goto end
)

REM === Validate required tools ===
if not exist "%PYTHON_ENV%" (
    echo ERROR: Python environment not found at "%PYTHON_ENV%"
    goto end
)

where sushi >nul 2>nul
if errorlevel 1 (
    echo ERROR: sushi not found in PATH
    goto end
)

REM === User menu ===
echo.
echo Select which scripts to run:
echo 1 - Only script 1 (gen-fsh-from-xls)
echo 2 - Only script 2 (clean-map-run-sushi)
echo 3 - Only script 3 (generateMapDiagrams)
echo 4 - Only script 4 (fix-links)
echo 5 - Scripts 1 to 3
echo 6 - Scripts 1 to 4 (ALL)
echo.
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
echo.
echo Running script 1: gen-fsh-from-xls
echo  - Input directory : %INPUT_DIR%
echo  - Output directory: %OUTPUT_DIR%

if not exist "%OUTPUT_DIR%" (
    echo Creating output directory: "%OUTPUT_DIR%"
    mkdir "%OUTPUT_DIR%"
)

"%PYTHON_ENV%" "%BIN_DIR%\excel-to-fsh.py" --input "%INPUT_DIR%" --output "%OUTPUT_DIR%"
goto end

:run2
echo.
echo Running script 2: clean map files and run sushi
del /q "%OUTPUT_CSV%\*.csv"
del /q "%INPUT_IMAGES%\*-map.plantuml"
del /q "%INPUT_PAGECONTENT%\*-map.xml"
pushd "%PROJECT_DIR%"
call sushi .
popd
goto end

:run3
echo.
echo Running script 3: generateMapDiagrams
"%PYTHON_ENV%" "%BIN_DIR%\run_all_scripts.py" -config "%DIAG_CONFIG%"
goto end

:run4
echo.
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

if not defined REPLACEMENTS_FILE (
    echo ERROR: REPLACEMENTS_FILE variable not set.
    goto end
)

if not exist "%REPLACEMENTS_FILE%" (
    echo ERROR: Replacements file not found: %REPLACEMENTS_FILE%
    goto end
)

"%PYTHON_ENV%" "%BIN_DIR%\fix_links.py" "%INPUT_IMAGES%" "%REPLACEMENTS_FILE%"

echo Done.
goto :eof



:end
echo.
echo Finished.
pause
