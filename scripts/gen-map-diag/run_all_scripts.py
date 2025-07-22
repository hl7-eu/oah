import subprocess
import os
import sys
import argparse
import logging
import importlib.util

# Set up logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Parse command-line arguments
parser = argparse.ArgumentParser(description="Run all scripts with optional configuration file.")
parser.add_argument("-config", type=str, default="./config.py", help="Path to the configuration file.")
args = parser.parse_args()

# Load the specified config file dynamically
config_file = args.config
if not os.path.exists(config_file):
    logging.warning(f"Configuration file '{config_file}' not found. Using default './config.py'.")
    config_file = "./config.py"

# Dynamically import the config file
spec = importlib.util.spec_from_file_location("config", config_file)
config = importlib.util.module_from_spec(spec)
spec.loader.exec_module(config)

# Ensure paths are absolute by joining with current script's directory
scripts_dir = os.path.abspath(config.scripts_dir)

# Paths from config
directory_path = config.directory_path
csv_file = config.csv_file
puml_dir = config.puml_dir

scripts = [
    os.path.join(scripts_dir, "extract-map-csv.py"),
    os.path.join(scripts_dir, "generate_diagrams.py"),
    os.path.join(scripts_dir, "generate-xhtml.py")
]

# Define whether to run with the -clean option
use_clean_option = True

# Function to run a script with the ability to add additional arguments
def run_script(script_path, clean_option=False, extra_args=None):
    try:
        # Build the command with optional -clean and extra arguments
        command = [sys.executable, script_path]
        if clean_option and '-clean' in extra_args:
            command.append('-clean')
        if extra_args:
            command.extend(extra_args)

        # Run the script and capture the output
        result = subprocess.run(command, check=True, capture_output=True, text=True)
        logging.info(f"Output of {script_path}:\n{result.stdout}")
        return True
    except subprocess.CalledProcessError as e:
        logging.error(f"Error running {script_path}:\n{e.stderr}")
        return False
    except Exception as e:
        logging.error(f"Unexpected error while running {script_path}: {e}")
        return False

# Run the scripts in sequence
for script in scripts:
    if 'extract-map-csv.py' in script:
        # Pass the directory and csv file paths to extract-map-csv.py
        extra_args = ['-directory', directory_path, '-csv_file', csv_file]
        if not run_script(script, clean_option=False, extra_args=extra_args):
            logging.error(f"Stopping execution because {script} failed.")
            break
    elif 'generate_diagrams.py' in script:
        # Pass the csv_file and puml_dir arguments to generate_diagrams.py
        extra_args = ['-csv_file', csv_file, '-puml_dir', puml_dir]
        if not run_script(script, clean_option=use_clean_option, extra_args=extra_args):
            logging.error(f"Stopping execution because {script} failed.")
            break
    elif 'generate-xhtml.py' in script:
        # For generate-xhtml.py, pass the template and output directory
        extra_args = ['-template', config.template_file_path, '-puml_dir', config.puml_dir, '-xml_output_dir', config.xml_output_dir]
        if not run_script(script, clean_option=False, extra_args=extra_args):
            logging.error(f"Stopping execution because {script} failed.")
            break
    else:
        # Pass the -clean argument if needed
        if not run_script(script, clean_option=use_clean_option, extra_args=['-clean']):
            logging.error(f"Stopping execution because {script} failed.")
            break
