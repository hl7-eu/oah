// Library instances grouping observation sets per river

Instance: Library-Giofyros-Indicators
Title: "Library - Giofyros indicator bundle"
Description: "Collection of Giofyros water temperature and conductivity observations captured during the OAH pilot."
InstanceOf: LibraryOah
Usage: #example
* url = "https://oneaquahealth.eu/library/GiofyrosIndicators"
* identifier[0].system = "https://oneaquahealth.eu/library-id"
* identifier[0].value = "giofyros-indicators"
* version = "2025.04"
* name = "GiofyrosIndicatorDataset"
* title = "Giofyros indicators (2024-2025)"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* date = "2025-05-27"
* publisher = "OneAquaHealth Consortium"
* author[0].name = "OneAquaHealth Crete Lab"
* description = "Aggregated Giofyros observations including water temperature and electrical conductivity across upper and lower reaches."
* extension[size].valueQuantity.value = 6
* extension[size].valueQuantity.unit = "observations"
* extension[numberOfRecords].valueInteger = 6
* content[0].contentType = #application/fhir+json
* content[0].url = "Observation/Obs-WaterTemp-Giofyros-2024-11-21"
* content[1].contentType = #application/fhir+json
* content[1].url = "Observation/Obs-WaterTemp-Giofyros-2025-04-14"
* content[2].contentType = #application/fhir+json
* content[2].url = "Observation/Obs-WaterTemp-GiofyrosLower-2024-11-21"
* content[3].contentType = #application/fhir+json
* content[3].url = "Observation/Obs-WaterTemp-GiofyrosLower-2025-04-14"
* content[4].contentType = #application/fhir+json
* content[4].url = "Observation/Obs-EC-Giofyros-2024-11-21"
* content[5].contentType = #application/fhir+json
* content[5].url = "Observation/Obs-EC-Giofyros-2025-04-14"

Instance: Library-Almyros-Indicators
Title: "Library - Almyros indicator bundle"
Description: "Collection of Almyros water temperature and conductivity observations captured during the OAH pilot."
InstanceOf: LibraryOah
Usage: #example
* url = "https://oneaquahealth.eu/library/AlmyrosIndicators"
* identifier[0].system = "https://oneaquahealth.eu/library-id"
* identifier[0].value = "almyros-indicators"
* version = "2025.04"
* name = "AlmyrosIndicatorDataset"
* title = "Almyros indicators (2024-2025)"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection "Asset Collection"
* date = "2025-05-27"
* publisher = "OneAquaHealth Consortium"
* author[0].name = "OneAquaHealth Crete Lab"
* description = "Aggregated Almyros observations including water temperature and electrical conductivity."
* extension[size].valueQuantity.value = 4
* extension[size].valueQuantity.unit = "observations"
* extension[numberOfRecords].valueInteger = 4
* content[0].contentType = #application/fhir+json
* content[0].url = "Observation/Obs-WaterTemp-Almyros-2024-11-21"
* content[1].contentType = #application/fhir+json
* content[1].url = "Observation/Obs-WaterTemp-Almyros-2025-04-14"
* content[2].contentType = #application/fhir+json
* content[2].url = "Observation/Obs-EC-Almyros-2024-11-21"
* content[3].contentType = #application/fhir+json
* content[3].url = "Observation/Obs-EC-Almyros-2025-04-14"
