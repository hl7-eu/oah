Profile: LocationOah
Parent: Location
Id: location-oah
Title: "Location: OAH Indicators"
Description: "It defines the rules to be applied to the Location for the purpose of the OneAquaHealth project."

* extension contains $artifact-relatedArtifact named referenceForm 0..*
* extension[referenceForm].valueRelatedArtifact only RelatedArtifact 
* identifier 1..
  * ^short = "Location identifier"
* name 1..
  * ^short = "Location name"
* mode 1..1
* mode = #instance
* type ^short = "Location type"
* position 1..1
  * ^short = "Location position"
  * longitude 1..1
    * ^short = "Location longitude"
  * latitude 1..1
    * ^short = "Location latitude"