Instance: SampleOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/SampleOah2FHIR"
* name = "SampleOah2FHIR"
* title = "OAH Sample Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Sample Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/Sample"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/location-oah"
* group[=].element[+].code = #site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #site.identifier
* group[=].element[=].display = "Site identifier"
* group[=].element[=].target.code = #Location.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #site.name
* group[=].element[=].display = "Site Name"
* group[=].element[=].target.code = #Location.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #site.gps
* group[=].element[=].display = "GPS"
* group[=].element[=].target.code = #Location.position
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #site.characteristics
* group[=].element[=].display = "Characteristics"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #site.formReference
* group[=].element[=].display = "Form Reference"
* group[=].element[=].target.code = #Location.extension[referenceForm]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/Sample"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-indicators-oah"
* group[=].element[+].code = #site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/Sample"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/specimen-oah"
* group[=].element[+].code = #site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Specimen.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if Specimen is used"
* group[=].element[+].code = #site.characteristics
* group[=].element[=].display = "Characteristics"
* group[=].element[=].target.code = #Specimen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #dateOfSampling
* group[=].element[=].display = "Date of Sample"
* group[=].element[=].target.code = #Specimen.collection.collectedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #perfomer[x]
* group[=].element[=].display = "Performer"
* group[=].element[=].target.code = #Specimen.collection.collector
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
