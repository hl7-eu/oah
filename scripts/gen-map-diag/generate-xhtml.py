import os
import shutil
import argparse

# Section templates
source_section_template = '''<h4 id="source">{profile_id} as Source</h4>
<a> </a>    
<p>{{% include {profile_id}_source.svg %}}</p>'''

target_section_template = '''<h4 id="target">{profile_id} as Target</h4>
<a> </a>    
<p>{{% include {profile_id}_target.svg %}}</p>'''

map_section_template = '''<h4 id="model">Model Overview</h4>
<a> </a>
<p>{{% include {profile_id}-map.svg %}}</p>'''

# Parse command-line arguments
parser = argparse.ArgumentParser(description='Generate XML files from PlantUML diagrams.')
parser.add_argument('-template', type=str, required=True, help='Path to the XHTML template file.')
parser.add_argument('-puml_dir', type=str, required=True, help='Directory containing PlantUML files.')
parser.add_argument('-xml_output_dir', type=str, required=True, help='Directory to save the generated XML files.')
parser.add_argument('-clean', action='store_true', help='Clean the output directory before generating XML files.')
args = parser.parse_args()

# Get paths from arguments
template_file_path = args.template
puml_dir = args.puml_dir
xml_output_dir = args.xml_output_dir

# Read the template file
with open(template_file_path, 'r') as file:
    xml_template = file.read()

# Clean up the output directory if the -clean option is set
if args.clean:
    if os.path.exists(xml_output_dir):
        shutil.rmtree(xml_output_dir)
    os.makedirs(xml_output_dir, exist_ok=True)
else:
    os.makedirs(xml_output_dir, exist_ok=True)

# Scan the PlantUML directory for profile IDs
profile_ids = set()
for filename in os.listdir(puml_dir):
    if filename.endswith('_source.plantuml') or filename.endswith('_target.plantuml') or filename.endswith('-map.plantuml'):
        profile_id = filename.rsplit('_', 1)[0].rsplit('-', 1)[0]
        profile_ids.add(profile_id)

# Generate the XML content for each profile ID
yaml_content = ""
mapping_content = ""
for profile_id in profile_ids:
    source_section = ""
    target_section = ""
    map_section = ""
    
    puml_source_file = os.path.join(puml_dir, f"{profile_id}_source.plantuml")
    puml_target_file = os.path.join(puml_dir, f"{profile_id}_target.plantuml")
    puml_map_file = os.path.join(puml_dir, f"{profile_id}-map.plantuml")
    
    if os.path.exists(puml_source_file):
        source_section = source_section_template.format(profile_id=profile_id)
    
    if os.path.exists(puml_target_file):
        target_section = target_section_template.format(profile_id=profile_id)
    
    if os.path.exists(puml_map_file):
        map_section = map_section_template.format(profile_id=profile_id)
    
    xml_content = xml_template.format(
        profile_id=profile_id,
        source_section=source_section,
        target_section=target_section,
        map_section=map_section
    )
    
    file_name = f"{profile_id}-map.xml"
    file_path = os.path.join(xml_output_dir, file_name)
    
    with open(file_path, 'w') as file:
        file.write(xml_content)
    
    # Add entry to the YAML content
    yaml_content += f"  {profile_id}-map.html:\n    title: {profile_id} Relationships\n"
    mapping_content += f"{profile_id}: {profile_id}-map.html\n"

# Save the YAML content to puml-extract.yaml
yaml_file_path = os.path.join(xml_output_dir, 'puml-extract.yaml')
with open(yaml_file_path, 'w') as yaml_file:
    yaml_file.write(mapping_content + '\n' + yaml_content)

print(f"XHTML files and YAML content successfully generated in {xml_output_dir}")
