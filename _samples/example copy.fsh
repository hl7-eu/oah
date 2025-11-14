// Location (Waterbody)
Instance: Loc-Giofyros
InstanceOf: Location
Usage: #example
* name = "Giofyros River — Reach A (Heraklion, GR)"
* description = "Urban stream segment used in OAH monitoring"
* position.longitude = 25.10592
* position.latitude = 35.32135
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#area

// Organization (Performer)
Instance: Org-OAH-CreteLab
InstanceOf: Organization
Usage: Example
* name = "OneAquaHealth Crete Lab"

// Device (pH meter)
Instance: Dev-pH-HI98130
InstanceOf: Device
Usage: #example
* status = #active
* deviceName[0].name = "Hanna Instruments HI98130"
* deviceName[0].type = #manufacturer-name
* type.text = "Portable pH meter"

// Specimen (water sample)
Instance: Spec-Water-Giofyros-2024-11-21
InstanceOf: Specimen
Usage: #example
* status = #available
* type.text = "Water sample (surface, grab)"
* subject = Reference(Loc-Giofyros)
* collection.collectedDateTime = "2024-11-21"
* collection.method.text = "Grab sample at mid-channel, ~0.3 m depth"

// Observation
Instance: Obs-pH-Giofyros-2024-11-21
InstanceOf: Observation
Usage: #example
* subject = Reference(Loc-Giofyros-ReachA)
* effectiveDateTime = "2024-11-21"
* performer[0] = Reference(Org-OAH-CreteLab)
* method.text = "Calibrated pH probe (2-point: pH 8.4, pH 8.1)"
* device = Reference(Dev-pH-HI98130)
* specimen = Reference(Spec-Water-Giofyros-2024-11-21)
* bodySite.text = "Mid-channel surface (~0.3 m)"
* valueQuantity.value = 8.25
* valueQuantity.system = "https://build.fhir.org/ig/HL7/UTG/CodeSystem-v3-ucum.html"
* valueQuantity.code = "{pH}"
* interpretation[0].text = "Within typical range for urban stream in dry season"
* note[0].text = "No rainfall in prior 48 h; low flow; temp ~18.6 °C"
