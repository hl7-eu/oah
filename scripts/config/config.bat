REM === config.bat ===

REM === Set project root 2 levels above this config file ===
for %%i in ("%~dp0..\..") do set "PROJECT_DIR=%%~fi"

REM === Python env location ===
set PYTHON_ENV=c:\workspace\___Python\env\Scripts\python.exe

REM === Subfolders and files ===
set SCRIPTS_DIR=%PROJECT_DIR%\scripts
set BIN_DIR=%SCRIPTS_DIR%\bin
set DIAG_CONFIG=%SCRIPTS_DIR%\config\config.py
set INPUT_IMAGES=%PROJECT_DIR%\input\images-source
set INPUT_PAGECONTENT=%PROJECT_DIR%\input\pagecontent
set OUTPUT_CSV=%SCRIPTS_DIR%\support-files
REM === Input and output directories for script 1 ===
set INPUT_DIR=%PROJECT_DIR%\models-src
set OUTPUT_DIR=%PROJECT_DIR%\input\fsh\model-maps
set REPLACEMENTS_FILE=%SCRIPTS_DIR%\support-files\link-replacements.txt
