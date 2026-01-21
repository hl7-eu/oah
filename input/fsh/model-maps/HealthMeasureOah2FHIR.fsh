Instance: HealthMeasureOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/HealthMeasureOah2FHIR"
* name = "HealthMeasureOah2FHIR"
* title = "OAH Data Set Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Data Set Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/HealthMeasure"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/group-oah"
* group[=].element[+].code = #cohort
* group[=].element[=].display = "Cohort"
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/HealthMeasure"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-health-measure-oah"
* group[=].element[+].code = #site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "This filed is realized by the subject and the specimen elements"
* group[=].element[+].code = #site.identifier
* group[=].element[=].display = "Site identifier"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #site.name
* group[=].element[=].display = "Site Name"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #site.gps
* group[=].element[=].display = "GPS"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #site.characteristics
* group[=].element[=].display = "Characteristics"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #dateOrPeriod[x]
* group[=].element[=].display = "Measure Date or Period"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "It could be a Person or an Organization"
* group[=].element[+].code = #perfomer[x]
* group[=].element[=].display = "Performer"
* group[=].element[=].target.code = #Observation.performer[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #type
* group[=].element[=].display = "What is measured"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #result[x]
* group[=].element[=].display = "Result"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #cohort
* group[=].element[=].display = "Cohort"
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
