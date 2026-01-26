// Cohorts derived from BN_2024_Disease_prevalence_long.csv inclusion criteria (M, F, age)

Instance: Group-BN-All
Title: "Group - Benevento disease prevalence (all persons)"
Description: "All persons (no sex restriction), all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 0 'a' "years"
* characteristic[0].exclude = false

Instance: Group-BN-Male
Title: "Group - Benevento disease prevalence (male)"
Description: "Male persons, all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false

Instance: Group-BN-Female
Title: "Group - Benevento disease prevalence (female)"
Description: "Female persons, all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false

Instance: Group-BN-Age-35-74
Title: "Group - Benevento disease prevalence (age 35-74)"
Description: "All persons aged 35-74 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 35 'a' "years"
* characteristic[0].valueRange.high = 74 'a' "years"
* characteristic[0].exclude = false

Instance: Group-BN-Male-Age-35-74
Title: "Group - Benevento disease prevalence (male age 35-74)"
Description: "Male persons aged 35-74 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 35 'a' "years"
* characteristic[1].valueRange.high = 74 'a' "years"
* characteristic[1].exclude = false

Instance: Group-BN-Female-Age-35-74
Title: "Group - Benevento disease prevalence (female age 35-74)"
Description: "Female persons aged 35-74 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 35 'a' "years"
* characteristic[1].valueRange.high = 74 'a' "years"
* characteristic[1].exclude = false
