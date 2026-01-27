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
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento)
* characteristic[1].exclude = false

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
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento)
* characteristic[1].exclude = false

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
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento)
* characteristic[1].exclude = false

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
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento)
* characteristic[1].exclude = false

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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento)
* characteristic[2].exclude = false

Instance: Group-BN-BN1-All
Title: "Group - Benevento disease prevalence (BN1 all persons)"
Description: "All persons (no sex restriction), all ages for BN1."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 0 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-01)
* characteristic[1].exclude = false

Instance: Group-BN-BN1-Male
Title: "Group - Benevento disease prevalence (BN1 male)"
Description: "Male persons, all ages for BN1."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-01)
* characteristic[1].exclude = false

Instance: Group-BN-BN1-Female
Title: "Group - Benevento disease prevalence (BN1 female)"
Description: "Female persons, all ages for BN1."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-01)
* characteristic[1].exclude = false

Instance: Group-BN-BN1-Age-35-74
Title: "Group - Benevento disease prevalence (BN1 age 35-74)"
Description: "All persons aged 35-74 years for BN1."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 35 'a' "years"
* characteristic[0].valueRange.high = 74 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-01)
* characteristic[1].exclude = false

Instance: Group-BN-BN1-Male-Age-35-74
Title: "Group - Benevento disease prevalence (BN1 male age 35-74)"
Description: "Male persons aged 35-74 years for BN1."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-01)
* characteristic[2].exclude = false

Instance: Group-BN-BN1-Female-Age-35-74
Title: "Group - Benevento disease prevalence (BN1 female age 35-74)"
Description: "Female persons aged 35-74 years for BN1."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-01)
* characteristic[2].exclude = false

Instance: Group-BN-BN2-All
Title: "Group - Benevento disease prevalence (BN2 all persons)"
Description: "All persons (no sex restriction), all ages for BN2."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 0 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-02)
* characteristic[1].exclude = false

Instance: Group-BN-BN2-Male
Title: "Group - Benevento disease prevalence (BN2 male)"
Description: "Male persons, all ages for BN2."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-02)
* characteristic[1].exclude = false

Instance: Group-BN-BN2-Female
Title: "Group - Benevento disease prevalence (BN2 female)"
Description: "Female persons, all ages for BN2."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-02)
* characteristic[1].exclude = false

Instance: Group-BN-BN2-Age-35-74
Title: "Group - Benevento disease prevalence (BN2 age 35-74)"
Description: "All persons aged 35-74 years for BN2."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 35 'a' "years"
* characteristic[0].valueRange.high = 74 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-02)
* characteristic[1].exclude = false

Instance: Group-BN-BN2-Male-Age-35-74
Title: "Group - Benevento disease prevalence (BN2 male age 35-74)"
Description: "Male persons aged 35-74 years for BN2."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-02)
* characteristic[2].exclude = false

Instance: Group-BN-BN2-Female-Age-35-74
Title: "Group - Benevento disease prevalence (BN2 female age 35-74)"
Description: "Female persons aged 35-74 years for BN2."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-02)
* characteristic[2].exclude = false

Instance: Group-BN-BN3-All
Title: "Group - Benevento disease prevalence (BN3 all persons)"
Description: "All persons (no sex restriction), all ages for BN3."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 0 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-03)
* characteristic[1].exclude = false

Instance: Group-BN-BN3-Male
Title: "Group - Benevento disease prevalence (BN3 male)"
Description: "Male persons, all ages for BN3."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-03)
* characteristic[1].exclude = false

Instance: Group-BN-BN3-Female
Title: "Group - Benevento disease prevalence (BN3 female)"
Description: "Female persons, all ages for BN3."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#46098-0 "Sex"
* characteristic[0].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-03)
* characteristic[1].exclude = false

Instance: Group-BN-BN3-Age-35-74
Title: "Group - Benevento disease prevalence (BN3 age 35-74)"
Description: "All persons aged 35-74 years for BN3."
InstanceOf: GroupOah
Usage: #example
* type = #person
* actual = false
* characteristic[0].code = $loinc#30525-0 "Age"
* characteristic[0].valueRange.low = 35 'a' "years"
* characteristic[0].valueRange.high = 74 'a' "years"
* characteristic[0].exclude = false
* characteristic[1].code = $sct#20733006 "Living place"
* characteristic[1].valueReference = Reference(Loc-Benevento-03)
* characteristic[1].exclude = false

Instance: Group-BN-BN3-Male-Age-35-74
Title: "Group - Benevento disease prevalence (BN3 male age 35-74)"
Description: "Male persons aged 35-74 years for BN3."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-03)
* characteristic[2].exclude = false

Instance: Group-BN-BN3-Female-Age-35-74
Title: "Group - Benevento disease prevalence (BN3 female age 35-74)"
Description: "Female persons aged 35-74 years for BN3."
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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento-03)
* characteristic[2].exclude = false

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
* characteristic[2].code = $sct#20733006 "Living place"
* characteristic[2].valueReference = Reference(Loc-Benevento)
* characteristic[2].exclude = false
