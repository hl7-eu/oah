Instance: SimpleIndicatorOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/SimpleIndicatorOah2FHIR"
* name = "SimpleIndicatorOah2FHIR"
* title = "OAH  Simple Indicator Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH simple Indicator Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/SimpleIndicator"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-indicators-oah"
* group[=].element[+].code = #SimpleIndicator.sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "This filed is realized by the subject and the specimen elements"
* group[=].element[+].code = #SimpleIndicator.sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SimpleIndicator.sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SimpleIndicator.type
* group[=].element[=].display = "What is measured"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SimpleIndicator.date
* group[=].element[=].display = "Observation date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Observation.effectiveDateTime is used when the date is a single point in time. If the date is a period, Observation.effectivePeriod should be used instead."
* group[=].element[+].code = #SimpleIndicator.performer[x]
* group[=].element[=].display = "Who made the measure"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "It could be a Person or an Organization"
* group[=].element[+].code = #SimpleIndicator.result[x]
* group[=].element[=].display = "Result"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
