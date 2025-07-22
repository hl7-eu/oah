Profile: SpecimenOah
Parent: Specimen
Id: specimen-oah
Title: "Specimen: OAH Indicators"
Description: "It defines the rules to be applied to the Specimen for the purpose of the OneAquaHealth project."

*  identifier ^short = "Specimen identifier"
*  subject 1..
*  subject only Reference(LocationOah)
* type from SpecimenTypeOahVs (extensible)
  * ^short = "Specimen type" 
*  collection 1..
  * collector 1..1
  * collector only Reference(PractitionerRole)
    * ^short = "Collector of the specimen"
  * collected[x] only dateTime
  * collected[x] 1..1
  * quantity 0..1
    * ^short = "Specimen quantity"
  * bodySite 0..0
  