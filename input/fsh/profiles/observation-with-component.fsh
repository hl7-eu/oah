Profile: ObservationWithCompOah
Parent:  ObservationIndicatorsOah
Id: observation-with-component-oah
Title: "Observation: OAH indicators with Components"
Description: "Profile for OneAquaHealth project macrophytes observations."

* code from ObservationTypeWithComponentOahVs (required)
* value[x] 0..0
* component 1..
* component insert SlicePerValue (code, Slice per type of measure, Slice per type of measure)
* component contains macrophytes 0..1
* component[macrophytes]
  * code from MacrophytesIndicatorCodeOahVs (required)
  * value[x] only CodeableConcept 
  * valueCodeableConcept from MacrophytesIndicatorValueOahVs (required)
* component contains nonNativeMacrophytes 0..1
* component[nonNativeMacrophytes]
// add slices for non-native macrophytes and riparian vegetation
  * code from NonNativeMacrophytesIndicatorCodeOahVs (required)
  * value[x] only string
* component contains riparianVegetation 0..1
* component[riparianVegetation]
  * code from RiparianVegetationCodeOahVs (required)
  * value[x] only CodeableConcept
  * valueCodeableConcept from RiparianVegetationValueOahVs (required)

