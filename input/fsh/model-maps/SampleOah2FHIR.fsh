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
* group[=].element[+].code = #Sample.site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto


* group[=].element[+].code = #Sample.site.identifier
* group[=].element[=].display = "Site identifier"
* group[=].element[=].target.code = #Location.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Sample.site.name
* group[=].element[=].display = "Site Name"
* group[=].element[=].target.code = #Location.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent



* group[=].element[+].code = #Sample.site.gps
* group[=].element[=].display = "GPS"
* group[=].element[=].target.code = #Location.position
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Sample.site.characteristics
* group[=].element[=].display = "Characteristics"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Sample.site.formReference
* group[=].element[=].display = "Form Reference"
* group[=].element[=].target.code = #Location.extension:referenceForm
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent 


* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/Sample"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-indicators-oah"
* group[=].element[+].code = #Sample.site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/Sample"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/specimen-oah"
* group[=].element[+].code = #Sample.site
* group[=].element[=].display = "Sampling Site"
* group[=].element[=].target.code = #Specimen.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if Specimen is used"
* group[=].element[+].code = #Sample.site.characteristics
* group[=].element[=].display = "Characteristics"
* group[=].element[=].target.code = #Specimen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Sample.dateOfSampling
* group[=].element[=].display = "Date of Sample"
* group[=].element[=].target.code = #Specimen.collection.collected[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Specimen.collection.collectedDateTime is used when the date is a single point in time. If the date is a period, Specimen.collection.collectedPeriod should be used instead."
* group[=].element[+].code = #Sample.performer[x]
* group[=].element[=].display = "Performer"
* group[=].element[=].target.code = #Specimen.collection.collector
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
