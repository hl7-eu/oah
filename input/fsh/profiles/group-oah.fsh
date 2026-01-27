Profile: GroupOah
Parent: Group
Id: group-oah
Title: "Group: OAH Cohort"
Description: "Profile for OneAquaHealth person cohorts defined by inclusion and exclusion criteria (for example, age or sex)."

* type = #person
* actual = false
* actual ^comment = "This cohort is definitional and described by characteristics rather than explicit members."
* member 0..0

* characteristic 1..*
* characteristic ^short = "Inclusion and exclusion criteria for the cohort."
* characteristic.code 1..1
* characteristic.code from OahCohortCharacteristicCodeVs (extensible)
* characteristic.value[x] 1..1
* characteristic.value[x] only CodeableConcept or Quantity or Range or boolean or Reference(Location)
* characteristic.exclude 1..1
* characteristic.exclude ^short = "True for exclusion criteria; false for inclusion."
