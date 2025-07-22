Logical: SampleOah
Id: Sample
Title: "Sample"
Description: """Information about the sample used for this measure"""
* site 1..1 Base "Sampling Site" """Sampling Site"""
* site.identifier 1..* Base "Site identifier" """Site identifier"""
* site.name 1..* Base "Site Name" """Site Name"""
* site.gps 0..1 Base "GPS" """GPS"""
* site.characteristics 0..* Base "Characteristics" """Characteristics"""
* site.formReference 0..* Reference( Binary or QuestionnaireResponse or DocumentReference) "Form Reference" """Reference to the form where the details about the site have been captured"""
* dateOfSampling 1..1 dateTime "Date of Sample" """Date of Sample"""
* perfomer[x] 0..* PractitionerRole or Organization "Performer" """Performer"""
