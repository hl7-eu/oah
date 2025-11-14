// Shared device

Instance: Dev-HI98130
Title: "Device - HI98130 Pocket Tester"
Description: "Handheld multiparameter tester used for water-quality measurements in the OneAquaHealth pilot."
InstanceOf: Device
Usage: #example
* status = #active
* manufacturer = "Hanna Instruments"
* deviceName[0].name = "HI98130 Pocket Tester"
* deviceName[0].type = #manufacturer-name
* type.text = "Portable multi-parameter water tester"

// Monitoring locations
Instance: Loc-Giofyros
Title: "Location - Giofyros Reach A"
Description: "Primary Giofyros sampling reach with coordinates 35.32135 N, 25.10592 E."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "giofyros-1"
* name = "Giofyros monitoring reach"
* description = "Urban stream segment sampled for OAH monitoring"
* mode = #instance
* type = http://snomed.info/sct#420531007 "River" // can be changed to more specific type if needed
* position.longitude = 25.10592
* position.latitude = 35.32135
* partOf = Reference(Giofyros)

Instance: Loc-Giofyros-LowerReach
Title: "Location - Giofyros Lower Reach"
Description: "Downstream Giofyros sampling transect captured in the updated monitoring plan."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "giofyros-2"
* name = "Giofyros monitoring reach (lower)"
* description = "Downstream Giofyros segment sampled for OAH monitoring"
* mode = #instance
* type = http://snomed.info/sct#420531007 "River"
* position.longitude = 25.10458
* position.latitude = 35.26230
* partOf = Reference(Giofyros)

Instance: Giofyros
Title: "Location - Giofyros River"
Description: "Parent river feature that groups Giofyros monitoring reaches."
InstanceOf: Location
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "giofyros"
* name = "Giofyros"
* description = "Giofyros River, Crete, Greece"
* mode = #instance
* type = http://snomed.info/sct#420531007 "River"

Instance: Loc-Almyros
Title: "Location - Almyros Reach"
Description: "Almyros stream monitoring reach located at 35.33399 N, 25.04834 E."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "almyros-1"
* name = "Almyros monitoring reach"
* description = "Coastal stream segment sampled for OAH monitoring"
* mode = #instance
* type = http://snomed.info/sct#420531007 "River" // adjust if more specific concept available
* position.longitude = 25.04834
* position.latitude = 35.33399
* partOf = Reference(Almyros)

Instance: Almyros
Title: "Location - Almyros Stream"
Description: "Parent feature for Almyros monitoring locations."
InstanceOf: Location
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "almyros"
* name = "Almyros"
* description = "Almyros Stream, Crete, Greece"
* mode = #instance
* type = http://snomed.info/sct#420531007 "River"

// Water-temperature observations
Instance: Obs-WaterTemp-Giofyros-2024-11-21
Title: "Observation - Giofyros water temperature (2024-11-21)"
Description: "Water temperature captured during the November 2024 Giofyros visit."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Giofyros)
* effectiveDateTime = "2024-11-21"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 18.6 'Cel' "Celsius"

Instance: Obs-WaterTemp-Giofyros-2025-04-14
Title: "Observation - Giofyros water temperature (2025-04-14)"
Description: "Spring 2025 Giofyros water temperature measurement."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Giofyros)
* effectiveDateTime = "2025-04-14"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 19 'Cel' "Celsius"

Instance: Obs-WaterTemp-GiofyrosLower-2024-11-21
Title: "Observation - Giofyros lower reach temperature (2024-11-21)"
Description: "Lower-reach Giofyros reading for the November 2024 campaign."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Giofyros-LowerReach)
* effectiveDateTime = "2024-11-21"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 18.3 'Cel' "Celsius"

Instance: Obs-WaterTemp-GiofyrosLower-2025-04-14
Title: "Observation - Giofyros lower reach temperature (2025-04-14)"
Description: "Follow-up lower-reach Giofyros temperature measurement from April 2025."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Giofyros-LowerReach)
* effectiveDateTime = "2025-04-14"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 18.8 'Cel' "Celsius"

Instance: Obs-WaterTemp-Almyros-2024-11-21
Title: "Observation - Almyros water temperature (2024-11-21)"
Description: "Water temperature captured at the Almyros reach during November 2024."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Almyros)
* effectiveDateTime = "2024-11-21"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 16.1 'Cel' "Celsius"

Instance: Obs-WaterTemp-Almyros-2025-04-14
Title: "Observation - Almyros water temperature (2025-04-14)"
Description: "Spring 2025 Almyros measurement for the OneAquaHealth pilot."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#waterTemperature "Water temperature"
* subject = Reference(Loc-Almyros)
* effectiveDateTime = "2025-04-14"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 16.2 'Cel' "Celsius"



