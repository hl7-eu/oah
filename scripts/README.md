
# Model Map Generator

This utility generates model maps by executing a Python script using paths and settings defined in a centralized configuration file (`config.bat`).

## 🧾 Prerequisites

- Python environment with required dependencies installed
- `config.bat` properly configured
- Scripts and input folders are in the expected relative structure

## 📁 Directory Structure

```

project-root/
│
├── input/
│   ├── model-maps/         # Input data for maps
│   └── models/             # Input model definitions
│
├── output/
│   └── model-maps/         # Output directory for generated model maps
│
├── scripts/
│   └── maps/
│       └── generate-model-maps.py
│
├── config.bat
└── gen\_model\_maps.bat

````

## ⚙️ Configuration

The script relies on `config.bat` to define key paths and the Python interpreter. A typical `config.bat` might look like this:

```bat
REM === config.bat ===

REM Set project root relative to config file
for %%i in ("%~dp0..\..") do set "PROJECT_DIR=%%~fi"

REM Python environment
set PYTHON_ENV=c:\workspace\___Python\env\Scripts\python.exe

REM Script directories
set SCRIPTS_DIR=%PROJECT_DIR%\scripts
set BIN_DIR=%SCRIPTS_DIR%\bin

REM Optional configuration
set DIAG_CONFIG=%SCRIPTS_DIR%\config\config.py

REM Input/output directories
set INPUT_IMAGES=%PROJECT_DIR%\input\images-source
set INPUT_PAGECONTENT=%PROJECT_DIR%\input\pagecontent
set OUTPUT_CSV=%SCRIPTS_DIR%\generateMapDiagramsFiles

REM For model map generation
set INPUT_DIR=%PROJECT_DIR%\input\model-maps
set INPUT_MODELS=%PROJECT_DIR%\input\models
set OUTPUT_DIR=%PROJECT_DIR%\output\model-maps
````

## 🚀 Usage

Once everything is configured:

1. Open a terminal (cmd).
2. Navigate to the project root.
3. Run the batch script:

```cmd
gen_model_maps.bat
```

This will:

* Call `config.bat` to initialize environment variables.
* Run the Python script with paths derived from those variables.
* Generate model maps in the output directory specified in `config.bat`.

## 🛠️ Customization

To change input/output folders or Python environment:

* Edit `config.bat` accordingly.
* No changes needed in `gen_model_maps.bat`.

## 🧹 Output

Generated files will appear in the directory defined by:

```bat
set OUTPUT_DIR=...
```

from `config.bat`.


