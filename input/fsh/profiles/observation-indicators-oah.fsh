Profile: ObservationIndicatorsOah
Parent: Observation
Id: observation-indicators-oah
Title: "Observation: OAH Indicators"
Description: "Profile for OneAquaHealth project indicators."

* status = #final
* status ^comment = "The status of the observation."

* code 1..
* code from OahIndicatorsVs (preferred)
* subject 1.. 
* subject only Reference(LocationOah)
* specimen 0..
* specimen only Reference(SpecimenOah)
* effective[x] 1..
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing] datatype which allow the measurement to be tied to regular life events."
// * performer only Reference(RelatedPerson or PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or CareTeam)
// * performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository."
* performer 1..
* value[x] only CodeableConcept or Quantity
* value[x] ^short = "OAH Indicator value"
* component
  * code from OahIndicatorsVs (preferred)
  * value[x] ^short = "OAH Indicator component value"
  * value[x] 1..
  * value[x] only CodeableConcept or string or Quantity