Profile: ObservationIndicatorsOah
Parent: Observation
Id: observation-indicators-oah
Title: "Observation: OAH Indicators"
Description: "Profile for OneAquaHealth project indicators."

* status ^short = "Observation status"

// add category 

/* * category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    SocialHistory 1..1  
    // and   SDOH 0..* 
* category[SocialHistory] = $observation-category#social-history
* category[SocialHistory] ^requirements = "Used for filtering that this is a social history observation." */

* code 
* code from OahIndicatorsVs (preferred)
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing] datatype which allow the measurement to be tied to regular life events."
// * performer only Reference(RelatedPerson or PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or CareTeam)
// * performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository."
* value[x] ^short = "OAH Idicator value"