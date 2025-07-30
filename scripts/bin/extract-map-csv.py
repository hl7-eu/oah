import os
import json
import pandas as pd
import argparse

# Set up argument parser to accept the directory and csv file path as arguments
parser = argparse.ArgumentParser(description="Extract mappings from JSON files and save to CSV.")
parser.add_argument("-directory", type=str, required=True, help="Directory containing JSON files.")
parser.add_argument("-csv_file", type=str, required=True, help="Path to save the CSV file.")
args = parser.parse_args()

# Get the arguments
directory_path = args.directory
csv_file = args.csv_file

def extract_profile_mappings_from_json(json_content):
    mappings = []
    if json_content.get("resourceType") == "ConceptMap":
        concept_map_id = json_content.get("id", "")
        for group in json_content.get("group", []):
            source_profile = group.get("source", "")
            target_profile = group.get("target", "")
            if source_profile and target_profile:
                mappings.append((concept_map_id, source_profile, target_profile))
    return mappings

# Initialize a list to collect all mappings
all_mappings_new = []

# Iterate over all .json files in the directory
for filename in os.listdir(directory_path):
    if filename.endswith(".json"):
        file_path = os.path.join(directory_path, filename)
        with open(file_path, 'r', encoding='utf-8') as file:
            json_content = json.load(file)
            mappings = extract_profile_mappings_from_json(json_content)
            all_mappings_new.extend(mappings)

# Create a DataFrame from all extracted mappings
df_all_mappings_new = pd.DataFrame(all_mappings_new, columns=["ConceptMap ID", "Source Profile", "Target Profile"])

# Ensure the directory exists before saving the CSV
output_directory = os.path.dirname(csv_file)
if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Now save the CSV file
df_all_mappings_new.to_csv(csv_file, index=False)

print(df_all_mappings_new.head(20))
