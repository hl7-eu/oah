Profile: LibraryOah
Parent: Library
Id: library-oah
Title: "Library: OAH Indicators"
Description: """It defines the rules to be applied to the Library resource for the purpose of the OneAquaHealth project.
This resource is used to describe the data set of indicators that are used in the OneAquaHealth project."""

* extension contains LibrarySize named size 0..1
* extension contains LibraryNumberOfRecords named numberOfRecords 0..1

* extension[size].valueQuantity 0..1
* extension[numberOfRecords].valueInteger

* extension contains $library-copyrightLabel-r5 named copyrightLabel 0..1
* extension[copyrightLabel].valueString

/* * extension contains $licenceCodeable named licence 0..1
* extension[licence].valueCodeableConcept */

* url 1..1
  * ^short = "Data Set unique identifier"
* identifier 0..*
  * ^short = "Data Set identifier"
* version 0..1
  * ^short = "Data Set version"
* title 1..1
  * ^short = "Data Set title"
* status   1..1
  * ^short = "Data Set status"
* type 1..1
  * ^short = "Data Set type"
* description 0..1 
  * ^short = "Data Set description"
* contact 0..*
  * ^short = "Data Set contact"
* publisher 0..1
  * ^short = "Data Set publisher"
* author 0..*
  * ^short = "Data Set author"
* date 1..1
  * ^short = "Data Set date of publication"
* copyright 0..1
  * ^short = "Data Set copyright"
* content 0..*
  * ^short = "Data Set content"

