Instance: DataSetOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/DataSetOah2FHIR"
* name = "DataSetOah2FHIR"
* title = "OAH Data Set Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Data Set Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/DataSet"
* group[=].target = "Attachment"
* group[=].element[+].code = #DataSet.record.title
* group[=].element[=].display = "Title"
* group[=].element[=].target.code = #Attachment.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.record.format
* group[=].element[=].display = "Format"
* group[=].element[=].target.code = #Attachment.contentType
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "as MIME type"
* group[=].element[+].code = #DataSet.record.link
* group[=].element[=].display = "Link"
* group[=].element[=].target.code = #Attachment.url
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.record.size
* group[=].element[=].display = "Size"
* group[=].element[=].target.code = #Attachment.size
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/DataSet"
* group[=].target = "DataRequirement"
* group[=].element[+].code = #DataSet.record.format
* group[=].element[=].display = "Format"
* group[=].element[=].target.code = #DataRequirement.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "As FHIR resource"
* group[=].element[+].code = #DataSet.record.format
* group[=].element[=].display = "Format"
* group[=].element[=].target.code = #DataRequirement.profile
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "As FHIR profile"
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/DataSet"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/library-oah"
* group[=].element[+].code = #DataSet.pid
* group[=].element[=].display = "globally uniqu,  persistent and resolvable identifier"
* group[=].element[=].target.code = #Library.url
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "This filed is realized by the subject and the specimen elements"
* group[=].element[+].code = #DataSet.title
* group[=].element[=].display = "Data set title"
* group[=].element[=].target.code = #Library.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.description
* group[=].element[=].display = "Data set desxription"
* group[=].element[=].target.code = #Library.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.version
* group[=].element[=].display = "Data set version"
* group[=].element[=].target.code = #Library.version
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.type
* group[=].element[=].display = "Data Set type"
* group[=].element[=].target.code = #Library.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.contact
* group[=].element[=].display = "Contact details"
* group[=].element[=].target.code = #Library.contact
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "It could be a Person or an Organization"
* group[=].element[+].code = #DataSet.publisher
* group[=].element[=].display = "Data Set publisher"
* group[=].element[=].target.code = #Library.publisher
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.author
* group[=].element[=].display = "Data Set Author(s)"
* group[=].element[=].target.code = #Library.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.date
* group[=].element[=].display = "Data set Date"
* group[=].element[=].target.code = #Library.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.dateOfApproval
* group[=].element[=].display = "Date of approval"
* group[=].element[=].target.code = #Library.approvalDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.dateOfReview
* group[=].element[=].display = "Date of last review"
* group[=].element[=].target.code = #Library.lastReviewDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
/* * group[=].element[+].code = #DataSet.licence
* group[=].element[=].display = "licence information"
* group[=].element[=].target.code = #Library.extension:licence
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto */
/* * group[=].element[+].code = #DataSet.copyright
* group[=].element[=].display = "Data set copyright"
* group[=].element[=].target.code = #extension[copyrightLabel].valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto */
* group[=].element[+].code = #DataSet.copyright
* group[=].element[=].display = "Data set copyright"
* group[=].element[=].target.code = #Library.copyright
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.size
* group[=].element[=].display = "Data set size"
* group[=].element[=].target.code = ##Library.extension:size
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.numberOfRecords
* group[=].element[=].display = "Number of records"
* group[=].element[=].target.code = #Library.extension:numberOfRecords
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.record
* group[=].element[=].display = "Record in the data set"
* group[=].element[=].target.code = #Library.content
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #DataSet.record.format
* group[=].element[=].display = "Format"
* group[=].element[=].target.code = #Library.dataRequirement
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
