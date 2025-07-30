# Script Suite for Generating CSV, PlantUML, and XHTML

This suite contains scripts that automate the process of extracting mappings from JSON files, generating PlantUML diagrams, and converting them into XHTML files with corresponding sections.

## Prerequisites
- Python 3.x
- Required Python packages: `pandas`, `argparse`, `shutil`
- Ensure that the necessary directories and files (JSON, PlantUML, XHTML template) are in place.

## How to Use

### Step 1: Prepare the `config.py`
You need a `config.py` file that contains the following paths:
- `scripts_dir`: Directory where the scripts are located.
- `directory_path`: Directory containing the input JSON files.
- `csv_file`: Path where the CSV file will be generated.
- `puml_dir`: Directory for PlantUML files.
- `template_file_path`: Path to the XHTML template file.
- `xml_output_dir`: Directory where XHTML files will be generated.

### Step 2: Run the Main Script

To run all the scripts, execute the following command:

```bash
python run_all_scripts.py -config /path/to/config.py
