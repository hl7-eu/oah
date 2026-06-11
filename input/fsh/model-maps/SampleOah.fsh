Logical: SampleOah
Id: Sample
Title: "Sample"
Description: """Information about the sample used for this measure"""




* site 1..1 Base "Sampling Site" """Sampling Site"""
* site.identifier 1..* Identifier "Site identifier" """Site identifier"""
* site.name 1..* string "Site Name" """Site Name"""


* site.gps 0..1 Base "GPS" """GPS"""
  * longitude		1..1	decimal	"Longitude with WGS84 datum" "Longitude with WGS84 datum"
  * latitude		1..1	decimal	"Latitude with WGS84 datum" "Latitude with WGS84 datum"
  * altitude		0..1	decimal	"Altitude with WGS84 datum" "Altitude with WGS84 datum"


* site.characteristics 0..* Base "Characteristics" """Characteristics"""
* site.formReference 0..* Reference( Binary or QuestionnaireResponse or DocumentReference) "Form Reference" """Reference to the form where the details about the site have been captured"""
* dateOfSampling 1..1 dateTime "Date of Sample" """Date of Sample"""
* performer[x] 0..* PractitionerRole or Organization "Performer" """Performer"""
