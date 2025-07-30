import sys
import os
import re

def load_replacements(file_path):
    replacements = []
    with open(file_path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if "=" in line and not line.startswith("#"):
                old, new = line.split("=", 1)
                replacements.append((re.escape(old), new))
    return replacements

def apply_replacements_to_file(file_path, replacements):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()
    for old, new in replacements:
        content = re.sub(old, new, content)
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content)

def main(input_dir, replacements_file):
    if not os.path.exists(input_dir):
        print(f"ERROR: Input folder not found: {input_dir}")
        return
    if not os.path.exists(replacements_file):
        print(f"ERROR: Replacements file not found: {replacements_file}")
        return

    replacements = load_replacements(replacements_file)
    for filename in os.listdir(input_dir):
        if filename.endswith("-map.plantuml"):
            full_path = os.path.join(input_dir, filename)
            print(f"Processing {filename}")
            apply_replacements_to_file(full_path, replacements)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: fix_links.py <input_folder> <replacements_file>")
        sys.exit(1)
    main(sys.argv[1], sys.argv[2])
# fix_links.py
# This script applies link replacements to PlantUML files in the specified input folder.