Logical: HealthMeasureOah
Id: HealthMeasure
Title: "Health measure"
Description: """Model describing the common attributes of a simple health and wellness indicator"""
* site 1..1 Base "Sampling Site" """Sampling Site"""
* site.identifier 1..* Base "Site identifier" """Site identifier"""
* site.name 1..* Base "Site Name" """Site Name"""
* site.gps 0..1 Base "GPS" """GPS"""
* site.characteristics 0..* Base "Characteristics" """Characteristics"""
* dateOrPeriod[x] 1..1 dateTime or Period "Measure Date or Period" """Measure Date or Period"""
* perfomer[x] 0..* PractitionerRole or Organization "Performer" """Performer"""
* type 1..1 CodeableConcept "What is measured" """Type of indicator : e.g. % of people with Giarda"""
* result[x] 1..1 CodeableConcept or Quantity "Result" """Result of the observation: it could be a single value or a set of results"""
* cohort 1..1 Group "Cohort" """Group of people who share a common characteristic."""
