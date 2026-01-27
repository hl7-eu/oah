// Cohorts derived from OS_2024_Disease_prevalence_long.csv inclusion criteria (M, F, age)
Instance: Group-OS-All
Title: "Group - Oslo disease prevalence (all persons)"
Description: "All persons (no sex restriction), all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 0 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Male
Title: "Group - Oslo disease prevalence (male)"
Description: "Male persons, all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Female
Title: "Group - Oslo disease prevalence (female)"
Description: "Female persons, all ages."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-18-29
Title: "Group - Oslo disease prevalence (age 18-29)"
Description: "All persons aged 18-29 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 18 'a' "years"
* characteristic[0].valueRange.high = 29 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-30-39
Title: "Group - Oslo disease prevalence (age 30-39)"
Description: "All persons aged 30-39 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 30 'a' "years"
* characteristic[0].valueRange.high = 39 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-40-49
Title: "Group - Oslo disease prevalence (age 40-49)"
Description: "All persons aged 40-49 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 40 'a' "years"
* characteristic[0].valueRange.high = 49 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-50-59
Title: "Group - Oslo disease prevalence (age 50-59)"
Description: "All persons aged 50-59 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 50 'a' "years"
* characteristic[0].valueRange.high = 59 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-60-69
Title: "Group - Oslo disease prevalence (age 60-69)"
Description: "All persons aged 60-69 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 60 'a' "years"
* characteristic[0].valueRange.high = 69 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Age-70-plus
Title: "Group - Oslo disease prevalence (age 70+)"
Description: "All persons aged 70 years or above."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 70 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[1].exclude = false

Instance: Group-OS-Male-Age-18-29
Title: "Group - Oslo disease prevalence (male age 18-29)"
Description: "Male persons aged 18-29 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 18 'a' "years"
* characteristic[1].valueRange.high = 29 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-18-29
Title: "Group - Oslo disease prevalence (female age 18-29)"
Description: "Female persons aged 18-29 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 18 'a' "years"
* characteristic[1].valueRange.high = 29 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Male-Age-30-39
Title: "Group - Oslo disease prevalence (male age 30-39)"
Description: "Male persons aged 30-39 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 30 'a' "years"
* characteristic[1].valueRange.high = 39 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-30-39
Title: "Group - Oslo disease prevalence (female age 30-39)"
Description: "Female persons aged 30-39 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 30 'a' "years"
* characteristic[1].valueRange.high = 39 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Male-Age-40-49
Title: "Group - Oslo disease prevalence (male age 40-49)"
Description: "Male persons aged 40-49 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 40 'a' "years"
* characteristic[1].valueRange.high = 49 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-40-49
Title: "Group - Oslo disease prevalence (female age 40-49)"
Description: "Female persons aged 40-49 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 40 'a' "years"
* characteristic[1].valueRange.high = 49 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Male-Age-50-59
Title: "Group - Oslo disease prevalence (male age 50-59)"
Description: "Male persons aged 50-59 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 50 'a' "years"
* characteristic[1].valueRange.high = 59 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-50-59
Title: "Group - Oslo disease prevalence (female age 50-59)"
Description: "Female persons aged 50-59 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 50 'a' "years"
* characteristic[1].valueRange.high = 59 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Male-Age-60-69
Title: "Group - Oslo disease prevalence (male age 60-69)"
Description: "Male persons aged 60-69 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 60 'a' "years"
* characteristic[1].valueRange.high = 69 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-60-69
Title: "Group - Oslo disease prevalence (female age 60-69)"
Description: "Female persons aged 60-69 years."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 60 'a' "years"
* characteristic[1].valueRange.high = 69 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Male-Age-70-plus
Title: "Group - Oslo disease prevalence (male age 70+)"
Description: "Male persons aged 70 years or above."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 70 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false

Instance: Group-OS-Female-Age-70-plus
Title: "Group - Oslo disease prevalence (female age 70+)"
Description: "Female persons aged 70 years or above."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $loinc#30525-0 "Age"
* characteristic[1].valueRange.low = 70 'a' "years"
* characteristic[1].exclude = false
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Nordre-Aker)
* characteristic[2].exclude = false
