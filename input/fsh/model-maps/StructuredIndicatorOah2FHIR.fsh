Instance: StructuredIndicatorOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/StructuredIndicatorOah2FHIR"
* name = "StructuredIndicatorOah2FHIR"
* title = "OAH  Structured Indicator Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Structured Indicator Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/StructuredIndicator"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-with-component-oah"
* group[=].element[+].code = #sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "This filed is realized by the subject and the specimen elements"
* group[=].element[+].code = #sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #sampleDetails
* group[=].element[=].display = "Sample"
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #type
* group[=].element[=].display = "What is measured"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #date
* group[=].element[=].display = "Observation date"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #performer[x]
* group[=].element[=].display = "Who made the measure"
* group[=].element[=].target.code = #Observation.performer[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "It could be a Person or an Organization"
* group[=].element[+].code = #component
* group[=].element[=].display = "Component"
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #component.type
* group[=].element[=].display = "What is measured"
* group[=].element[=].target.code = #Observation.component.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #component.result[x]
* group[=].element[=].display = "Result"
* group[=].element[=].target.code = #Observation.component.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
