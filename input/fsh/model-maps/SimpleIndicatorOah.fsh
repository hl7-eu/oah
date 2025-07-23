Logical: SimpleIndicatorOah
Id: SimpleIndicator
Title: "Simple Indicator"
Description: """Model describing the common attributes of a simple indicator wiith a single value"""
* sampleDetails 1..1 Sample "Sample" """Information about the sample used for this measure"""
* type 1..1 CodeableConcept "What is measured" """Type of indicator : e.g. number of mosquito in the sample"""
* date 1..* dateTime "Observation date" """Observation date"""
* performer[x] 1..* PractitionerRole or Organization "Who made the measure" """Who made the measure"""
* result[x] 1..1 CodeableConcept or Quantity "Result" """Result of the observation: it could be a single value or a set of results"""
