import os
import shutil
import pandas as pd
import argparse

# Set up argument parser to accept the CSV file and PlantUML directory as arguments
parser = argparse.ArgumentParser(description="Generate PlantUML diagrams from a CSV file.")
parser.add_argument("-csv_file", type=str, required=True, help="Path to the input CSV file.")
parser.add_argument("-puml_dir", type=str, required=True, help="Directory to save the PlantUML diagrams.")
parser.add_argument("-clean", action="store_true", help="Clean the output directory before generating diagrams.")
args = parser.parse_args()

# Get the arguments
csv_file = args.csv_file
puml_dir = args.puml_dir
clean = args.clean

def generate_plantuml_diagrams(csv_file, puml_dir, clean=False):
    # Clean the output directory if the clean flag is set
    if clean and os.path.exists(puml_dir):
        shutil.rmtree(puml_dir)
    os.makedirs(puml_dir, exist_ok=True)

    # Read the CSV file
    df = pd.read_csv(csv_file)

    # Extract unique logical models from the Source Profile column
    unique_logical_models = df["Source Profile"].unique()

    for logical_model in unique_logical_models:
        model_name = logical_model.split("/")[-1]
        logical_model_url = f"StructureDefinition-{model_name}.html"

        # Extract ConceptMap ID
        concept_map_id = df[df["Source Profile"] == logical_model]["ConceptMap ID"].iloc[0]
        concept_map_url = f"ConceptMap-{concept_map_id}.html"

        filtered_df = df[df["Source Profile"] == logical_model].copy()
        filtered_df.loc[:, "Target Profile ID"] = filtered_df["Target Profile"].apply(lambda x: x.split("/")[-1])

        plantuml_lines = [




            "@startuml",
            "hide circle",
            "hide stereotype",
            "hide members",
            "hide methods",
            "skinparam linetype ortho",

            "skinparam class {",
                "BackgroundColor<<LogicalModel>> #APPLICATION",
                "BackgroundColor<<Profile>> #TECHNOLOGY",
            "}",
            "legend right",
            "| <#APPLICATION>  Logical Model |",
            "| <#TECHNOLOGY>  Profile |",
            "endlegend",
            f'class "{model_name}" <<LogicalModel>> [[{logical_model_url}]]',
            f'note top #PaleTurquoise [[{concept_map_url}]]',
            'Concept Map',
            'endnote'
        ]

        # Add the relationships with target profile IDs and links
        previous_target = None
        for _, row in filtered_df.iterrows():
            source = model_name
            target = row["Target Profile ID"]
            if "hl7.org/fhir" in row["Target Profile"]:
                target_url = row["Target Profile"]
            else:
                target_url = f"StructureDefinition-{target}.html"
            plantuml_lines.append(f'class "{target}" <<Profile>> [[{target_url}]]')
            plantuml_lines.append(f'"{source}" <|. "{target}"')
            if previous_target:
                plantuml_lines.append(f'"{previous_target}" -d[hidden]-> "{target}"')
            previous_target = target

        plantuml_lines.append("@enduml")

        # Write the PlantUML code to a file
        file_path = os.path.join(puml_dir, f"{model_name}-map.plantuml")
        with open(file_path, "w") as file:
            file.write("\n".join(plantuml_lines))

    print(f"PlantUML diagrams generated in directory: {puml_dir}")

if __name__ == "__main__":
    # Generate the PlantUML diagrams
    generate_plantuml_diagrams(csv_file, puml_dir, clean=clean)
