Logical: IndicatorOah
Id: Indicator
Title: "Indicator"
Description: """Model describing the common attributes of an indicator"""
* sampleDetails 1..1 Sample "Sample" """Information about the sample used for this measure"""
* type 1..1 CodeableConcept "What is measured" """Type of indicator : e.g. number of mosquito in the sample"""
* date 1..* dateTime "Observation date" """Observation date"""
* performer[x] 1..* PractitionerRole or Organization "Who made the measure" """Who made the measure"""
* result[x] 0..1 CodeableConcept or Quantity "Result" """Result of the observation: it could be a single value or a set of results"""
* component 0..* Base "Component" """Set of results defining this indicator"""
* component.type 1..1 CodeableConcept "What is measured" """Type of indicator : e.g. presence of liverworts"""
* component.result[x] 0..1 CodeableConcept or Quantity or string "Result" """Result of the set of observation: it could be a single value or a set of results"""
