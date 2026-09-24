// Heraklion, Greece: a follower city scaffold. scripts/new_city.py, 2026-09-21.
// Four nested Locations under their LocationOah profile, each partOf the one above, in
// one Bundle that builds inside their guide and passes the HL7 validator. The creek,
// reach and spot are placeholders to be renamed by the city; nothing here is a finding.

Instance: sl-city-heraklion
InstanceOf: LocationOah
Title: "Heraklion (city)"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "heraklion"
* name = "Heraklion"
* mode = #instance
* type = $sct#288520005 "City environment"
* description = "City of Heraklion, Greece. Scaffolded by scripts/new_city.py on 2026-09-21. A follower city stub: no creek has been checked here."
* position.latitude = 35.3387
* position.longitude = 25.1442

Instance: sl-city-heraklion-creek-1
InstanceOf: LocationOah
Title: "Heraklion, creek to be named"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "heraklion-creek-1"
* name = "Heraklion, creek 1 (to be named)"
* mode = #instance
* type = $sct#420531007 "River"
* partOf = Reference(Location/sl-city-heraklion)

Instance: sl-city-heraklion-creek-1-reach-1
InstanceOf: LocationOah
Title: "Heraklion, creek 1, reach to be named"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "heraklion-creek-1-reach-1"
* name = "Heraklion, creek 1, reach 1 (to be named)"
* mode = #instance
* type = $sct#420531007 "River"
* partOf = Reference(Location/sl-city-heraklion-creek-1)

Instance: sl-city-heraklion-creek-1-reach-1-spot-1
InstanceOf: LocationOah
Title: "Heraklion, creek 1, reach 1, spot 1"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "heraklion-creek-1-reach-1-spot-1"
* name = "Heraklion, creek 1, reach 1, spot 1 (to be placed)"
* mode = #instance
* type = $sct#420531007 "River"
* partOf = Reference(Location/sl-city-heraklion-creek-1-reach-1)

Instance: sl-city-heraklion-bundle
InstanceOf: Bundle
Title: "Heraklion: the nested Locations of a follower city"
Description: "City, creek, reach and spot for Heraklion, Greece, each partOf the one above, under the OneAquaHealth Location profile. A scaffold with placeholders, not a record."
Usage: #example
* type = #collection
* entry[0].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-city-heraklion"
* entry[0].resource = sl-city-heraklion
* entry[1].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-city-heraklion-creek-1"
* entry[1].resource = sl-city-heraklion-creek-1
* entry[2].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-city-heraklion-creek-1-reach-1"
* entry[2].resource = sl-city-heraklion-creek-1-reach-1
* entry[3].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-city-heraklion-creek-1-reach-1-spot-1"
* entry[3].resource = sl-city-heraklion-creek-1-reach-1-spot-1
