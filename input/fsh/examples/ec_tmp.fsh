// Electrical conductivity observations derived from _samples/ec.csv
// Reuse previously defined Device and Locations from water_tmp.fsh

Instance: Obs-EC-Giofyros-2024-11-21
Title: "Observation - Giofyros electrical conductivity (2024-11-21)"
Description: "Conductivity value measured at the Giofyros reach during November 2024 sampling."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#conductivity "Conductivity"
* subject = Reference(Loc-Giofyros)
* effectiveDateTime = "2024-11-21"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 2.2 'mS/cm' "mS/cm"

Instance: Obs-EC-Giofyros-2025-04-14
Title: "Observation - Giofyros electrical conductivity (2025-04-14)"
Description: "Conductivity captured during the Spring 2025 Giofyros field visit."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#conductivity "Conductivity"
* subject = Reference(Loc-Giofyros)
* effectiveDateTime = "2025-04-14"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 2.26 'mS/cm' "mS/cm"

Instance: Obs-EC-Almyros-2024-11-21
Title: "Observation - Almyros electrical conductivity (2024-11-21)"
Description: "Almyros conductivity reading collected in November 2024."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#conductivity "Conductivity"
* subject = Reference(Loc-Almyros)
* effectiveDateTime = "2024-11-21"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 18.4 'mS/cm' "mS/cm"

Instance: Obs-EC-Almyros-2025-04-14
Title: "Observation - Almyros electrical conductivity (2025-04-14)"
Description: "Spring 2025 conductivity measurement for the Almyros reach."
InstanceOf: ObservationIndicatorsOah
Usage: #example
* status = #final
* code = TemporaryOahSystem#conductivity "Conductivity"
* subject = Reference(Loc-Almyros)
* effectiveDateTime = "2025-04-14"
* performer.display = "OneAquaHealth Crete Lab" // Source Missing
* device = Reference(Dev-HI98130)
* valueQuantity = 12.2 'mS/cm' "mS/cm"
