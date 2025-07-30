REM === config.bat ===

REM Path to Python interpreter
set PYTHON_ENV=c:\workspace\___Python\env\Scripts\python.exe

REM Base project directory (adjust if needed)
set PROJECT_DIR=%~dp0..

REM Subdirectories and config files
set CONFIG_INI=%PROJECT_DIR%\models-src\config.ini
set SCRIPTS_DIR=%PROJECT_DIR%\scripts
set DIAG_CONFIG=%SCRIPTS_DIR%\generateMapDiagramsFiles\config.py
set INPUT_IMAGES=%PROJECT_DIR%\input\images-source
set INPUT_PAGECONTENT=%PROJECT_DIR%\input\pagecontent
set OUTPUT_CSV=%SCRIPTS_DIR%\generateMapDiagramsFiles
