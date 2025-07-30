import os
import argparse
import configparser
import pandas as pd

# Function to load the config file
def load_config(config_path):
    if not os.path.exists(config_path):
        raise FileNotFoundError(f"Config file not found: {config_path}")
    config = configparser.ConfigParser()
    config.read(config_path)
    
    if 'settings' not in config:
        raise KeyError("The 'settings' section is missing in the config file.")
    
    return config['settings']

# Function to process ConceptMaps
def process_conceptmaps(file_path, output_directory):
    # Load the 'ConceptMaps' sheet
    df_conceptmaps = pd.read_excel(file_path, sheet_name="ConceptMaps")
    
    # Iterate over each row in the ConceptMaps sheet
    for _, row in df_conceptmaps.iterrows():
        instance_name = row['Instance']  # Correctly handle the Instance (Id)
        conceptmap_name = row['Name']    # Correctly handle the Name
        
        # Handle the experimental field, defaulting to true if empty
        experimental_value = str(row['Experimental']).lower() if pd.notnull(row['Experimental']) else 'true'
        
        fsh_filename = f"{conceptmap_name}.fsh"
        
        # Start building the FSH content from the ConceptMaps sheet
        fsh_content = f"""Instance: {instance_name}
InstanceOf: ConceptMap
Usage: #definition
* url = "{row['URL']}"
* name = "{conceptmap_name}"
* title = "{row['Title']}"
* status = #{row['Status']}
* experimental = {experimental_value}
* description = \"\"\"{row['Description']}\"\"\"
"""
        
        # Now load the corresponding sheet for the mappings
        try:
            df_mappings = pd.read_excel(file_path, sheet_name=conceptmap_name)
            
            # Group rows by 'Group Source' and 'Group Target'
            grouped = df_mappings.groupby(['Group Source', 'Group Target'])
            
            # Iterate over each group and add group elements to the FSH content
            for (group_source, group_target), group_rows in grouped:
                fsh_content += f"* group[+].source = \"{group_source}\"\n"
                fsh_content += f"* group[=].target = \"{group_target}\"\n"
                
                # Iterate over the elements within each group
                for _, mapping_row in group_rows.iterrows():
                    # Replace NaN with empty strings for display fields
                    source_display = mapping_row['Source Display'] if pd.notnull(mapping_row['Source Display']) else ""
                    target_display = mapping_row['Target Display'] if pd.notnull(mapping_row['Target Display']) else ""

                    fsh_content += f"* group[=].element[+].code = #{mapping_row['Source Code']}\n"
                    fsh_content += f"* group[=].element[=].display = \"{source_display}\"\n"
                    fsh_content += f"* group[=].element[=].target.code = #{mapping_row['Target Code']}\n"
                    fsh_content += f"* group[=].element[=].target.display = \"{target_display}\"\n"
                    fsh_content += f"* group[=].element[=].target.equivalence = #{mapping_row['Equivalence']}\n"
                    if pd.notnull(mapping_row['Comment']):
                        fsh_content += f"* group[=].element[=].target.comment = \"{mapping_row['Comment']}\"\n"
        
        except Exception as e:
            print(f"Error loading sheet for {conceptmap_name}: {e}")
            continue

        # Save the FSH file for ConceptMaps
        output_path = os.path.join(output_directory, fsh_filename)
        with open(output_path, 'w') as f:
            f.write(fsh_content)
        print(f"Created {fsh_filename} in {output_directory}")

# Function to process LogicalModels
def process_logicalmodels(file_path, output_directory):
    # Load the 'LogicalModels' sheet
    df_logicalmodels = pd.read_excel(file_path, sheet_name="LogicalModels")
    
    # Iterate over each row in the LogicalModels sheet
    for _, row in df_logicalmodels.iterrows():
        logical_name = row['Name']
        fsh_filename = f"{logical_name}.fsh"
        
        # Start building the FSH content for LogicalModels
        fsh_content = f"""Logical: {logical_name}
Id: {row['Id']}
Title: "{row['Title']}"
Description: \"\"\"{row['Description']}\"\"\"
"""
        # Save the FSH file for LogicalModels
        output_path = os.path.join(output_directory, fsh_filename)
        with open(output_path, 'w') as f:
            f.write(fsh_content)
        print(f"Created {fsh_filename} in {output_directory}")
        
        # Now append the LogicalModel elements if available
        try:
            df_elements = pd.read_excel(file_path, sheet_name=logical_name)
            
            # Iterate over each element row
            for _, element_row in df_elements.iterrows():
                element = element_row['Element']
                cardinality = element_row['Cardinality']
                datatype = element_row['Datatype']
                short = element_row['Short']
                definition = element_row['Definition']
                
                # Append the element to the FSH content
                fsh_content += f"""* {element} {cardinality} {datatype} "{short}" \"\"\"{definition}\"\"\"\n"""
        
        except Exception as e:
            print(f"Error processing elements for LogicalModel {logical_name}: {e}")
        
        # Save the updated FSH file with LogicalModel elements
        with open(output_path, 'w') as f:
            f.write(fsh_content)
        print(f"Updated {fsh_filename} with elements in {output_directory}")

# Main function
def main():
    # Argument parser to optionally take config and explicit directories
    parser = argparse.ArgumentParser(description='Generate FSH files from Excel.')
    parser.add_argument('--config', default=None, help='Path to the config file (optional)')
    parser.add_argument('--input', default=None, help='Input directory for Excel files')
    parser.add_argument('--output', default=None, help='Output directory for FSH files')
    args = parser.parse_args()

    # Step 1: Set default values
    input_directory = "input"
    output_directory = "output"

    # Step 2: If config is provided or default assumed, try to load it
    if args.config:
        try:
            config = load_config(args.config)
            input_directory = config.get('input_directory', input_directory)
            output_directory = config.get('output_directory', output_directory)
        except Exception as e:
            print(f"Warning: Could not load config file: {e}")

    # Step 3: Override with CLI arguments if given
    if args.input:
        input_directory = args.input
    if args.output:
        output_directory = args.output

    # Ensure output directory exists
    os.makedirs(output_directory, exist_ok=True)

    # Process each Excel file in the input directory
    for filename in os.listdir(input_directory):
        if filename.endswith(".xlsx"):
            file_path = os.path.join(input_directory, filename)
            
            # Process ConceptMaps sheet if available
            try:
                process_conceptmaps(file_path, output_directory)
            except Exception as e:
                print(f"Error processing ConceptMaps in {filename}: {e}")
            
            # Process LogicalModels sheet if available
            try:
                process_logicalmodels(file_path, output_directory)
            except Exception as e:
                print(f"Error processing LogicalModels in {filename}: {e}")

if __name__ == '__main__':
    main()
