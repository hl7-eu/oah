# Model Map Utilities

This repository provides a set of batch and Python scripts to transform models, generate diagrams, run SUSHI, and fix hyperlinks. All paths and tool configurations are centralized via `config.bat` for easier reuse and portability.

---

## 📁 Project Structure

```
project-root/
│
├── input/
│   ├── images-source/        # PlantUML diagram input files
│   ├── model-maps/           # Source model map data (Run 1)
│   ├── models/               # Input models (Run 1)
│   └── pagecontent/          # Generated XML content (Run 2)
│
├── output/
│   └── model-maps/           # Output from model map generation
│
├── models-src/               # Excel input (Run 1)
├── scripts/
│   ├── bin/
│   │   ├── excel-to-fsh.py
│   │   ├── run_all_scripts.py
│   │   └── fix_links.py      # ✅ Python replacement for fixing links
│   └── config/
│       └── config.bat
│
├── support-files/
│   └── link-replacements.txt # ✅ Link mappings for Run 4
│
└── gen_model_maps.bat        # ✅ Main runner script
```

---

## ⚙️ Configuration

All paths and tools are configured in:

```
scripts/config/config.bat
```

A typical example:

```bat
REM === Project root
for %%i in ("%~dp0..\..") do set "PROJECT_DIR=%%~fi"

REM === Python environment
set PYTHON_ENV=c:\workspace\___Python\env\Scripts\python.exe

REM === Input/output directories
set INPUT_IMAGES=%PROJECT_DIR%\input\images-source
set OUTPUT_CSV=%PROJECT_DIR%\scripts\support-files
set INPUT_DIR=%PROJECT_DIR%\models-src
set OUTPUT_DIR=%PROJECT_DIR%\input\fsh\model-maps

REM === Link replacement config for Run 4
set REPLACEMENTS_FILE=%PROJECT_DIR%\support-files\link-replacements.txt
```

---

## 🚀 Usage

Run the main batch file interactively:

```cmd
gen_model_maps.bat
```

You’ll be prompted to select one of the following:

- `1` - Run `gen-fsh-from-xls`
- `2` - Clean old files and run SUSHI
- `3` - Generate diagrams
- `4` - ✅ Fix links in `*-map.plantuml` files using a Python script
- `5` - Run scripts 1 to 3
- `6` - Run everything (1–4)

You can also specify a custom config file:

```cmd
gen_model_maps.bat -c config\your-custom-config.bat
```

---

## 🔗 Script 4: Fix Links in PlantUML Files

This script replaces relative references (like `StructureDefinition-XYZ.html`) in `*-map.plantuml` files with canonical URLs.

### Configuration

Replacements are defined in:

```
support-files/link-replacements.txt
```

Example format:

```
StructureDefinition-Attachment.html=https://hl7.org/fhir/R4/datatypes.html#Attachment
StructureDefinition-DataRequirement.html=https://hl7.org/fhir/R4/datatypes.html#DataRequirement
```

### How It Works

- The script reads all `*-map.plantuml` files in the `input/images-source/` folder.
- It applies all replacements defined in the text file.
- It rewrites the files in-place (using a `.tmp` file under the hood).

### File: `scripts/bin/fix_links.py`

This script is called from `gen_model_maps.bat` using:

```cmd
"%PYTHON_ENV%" "%BIN_DIR%\fix_links.py" "%INPUT_IMAGES%" "%REPLACEMENTS_FILE%"
```

---

## 🧪 Requirements

- Python 3.x
- SUSHI installed and available in `PATH`
- A configured Python environment path in `config.bat`

---

## 📞 Help

Run `gen_model_maps.bat -h` for usage help.

```
Usage: gen_model_maps.bat [-c config\your-config.bat]

Options:
  -c <file>     Use custom configuration file
  -h            Show this help message

If no -c option is provided, uses default: config\config.bat
```

---
