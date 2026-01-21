Profile: ObservationHealthMeasureOah
Parent: Observation
Id: observation-health-measure-oah
Title: "Observation: OAH Health Measure"
Description: "Profile for OneAquaHealth project health and wellbeing measures."

* status = #final
* status ^comment = "The status of the observation."

* code 1..
* code from OahIndicatorsVs (preferred) // to be changed with a more appropriate value set when available
* subject 1.. 
* subject only Reference(LocationOah)
* effective[x] 1..
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing] datatype which allow the measurement to be tied to regular life events."
// * performer only Reference(RelatedPerson or PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or CareTeam)
// * performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository."
* performer ^short = "Who performed the observation."
* value[x] only CodeableConcept or Quantity
* value[x] ^short = "OAH Health indicator"
* focus only Reference(GroupOah)