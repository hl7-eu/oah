// One worked visit at Strawberry Creek, Berkeley, made by hand as an example. Coordinates are for the campus reach.
Instance: sl-org
InstanceOf: Organization
Title: "Second Look project"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/org"
* identifier.value = "second-look"
* name = "Second Look project"
* active = true

Instance: sl-device
InstanceOf: Device
Title: "Second Look software"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/device"
* identifier.value = "second-look-web"
* status = #active
* type = SecondLookCS#software "Second Look software"
* deviceName.name = "Second Look web app"
* deviceName.type = #user-friendly-name
* version.value = "0.1.0"

Instance: sl-loc-strawberry-creek
InstanceOf: LocationOah
Title: "Strawberry Creek"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "strawberry-creek"
* name = "Strawberry Creek"
* description = "Urban creek through the UC Berkeley campus, Berkeley, California, USA"
* mode = #instance
* type = $sct#420531007 "River"

Instance: sl-loc-campus-reach
InstanceOf: LocationOah
Title: "Strawberry Creek, campus reach"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "strawberry-creek-campus"
* name = "Strawberry Creek, campus reach"
* mode = #instance
* type = $sct#420531007 "River"
* partOf = Reference(Location/sl-loc-strawberry-creek)

Instance: sl-loc-spot-1
InstanceOf: LocationOah
Title: "Strawberry Creek, spot 1"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/location-id"
* identifier.value = "strawberry-creek-campus-spot-1"
* name = "Strawberry Creek, campus reach, spot 1"
* mode = #instance
* type = $sct#420531007 "River"
* position.latitude = 37.8719
* position.longitude = -122.2585
* partOf = Reference(Location/sl-loc-campus-reach)

Instance: sl-practitioner-1
InstanceOf: Practitioner
Title: "Volunteer observer (pseudonymous)"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/contributor-token"
* identifier.value = "ct_7f3a9c2e"
* active = true
* qualification.code = SecondLookCS#second-look-test "Second Look observer test"
* qualification.period.start = "2026-09-23"
* qualification.period.end = "2026-12-22"
* qualification.issuer = Reference(Organization/sl-org)

Instance: sl-qr-test-1
InstanceOf: QuestionnaireResponse
Title: "Observer test sitting"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/qr"
* identifier.value = "test-sitting-0001"
* questionnaire = "https://github.com/alejandro-publius/second-look/fhir/Questionnaire/sl-questionnaire-test"
* status = #completed
* authored = "2026-09-23T17:05:00Z"
* author = Reference(Practitioner/sl-practitioner-1)
* item[0].linkId = "artificial_bank"
* item[0].item[0].linkId = "artificial_bank.score"
* item[0].item[0].answer.valueInteger = 4
* item[1].linkId = "dug_out_channel"
* item[1].item[0].linkId = "dug_out_channel.score"
* item[1].item[0].answer.valueInteger = 2
* item[2].linkId = "invasive_plant"
* item[2].item[0].linkId = "invasive_plant.score"
* item[2].item[0].answer.valueInteger = 3
* item[3].linkId = "pipe_running"
* item[3].item[0].linkId = "pipe_running.score"
* item[3].item[0].answer.valueInteger = 4

Instance: sl-qr-visit-1
InstanceOf: QuestionnaireResponse
Title: "Creek check, visit 1"
Usage: #inline
* identifier.system = "https://github.com/alejandro-publius/second-look/fhir/qr"
* identifier.value = "visit-0001"
* questionnaire = "https://github.com/alejandro-publius/second-look/fhir/Questionnaire/sl-questionnaire-check"
* status = #completed
* authored = "2026-09-24T16:40:00Z"
* author = Reference(Practitioner/sl-practitioner-1)
* item[0].linkId = "channel_form"
* item[0].answer.valueCoding = SecondLookCS#u-shape "U shaped channel"
* item[1].linkId = "bank_type"
* item[1].answer.valueCoding = TemporaryOahSystem#present "Present"
* item[2].linkId = "draining_pipes"
* item[2].answer.valueCoding = SecondLookCS#cant-tell "Can't tell"
* item[3].linkId = "water_height_m"
* item[3].answer.valueDecimal = 0.2
* item[4].linkId = "invasive_species"
* item[4].answer.valueCoding = TemporaryOahSystem#present "Present"

Instance: sl-obs-bank-1
InstanceOf: ObservationIndicatorsOah
Title: "Artificial bank, spot 1, visit 1"
Usage: #inline
* status = #final
* category = TemporaryOahSystem#morophology "Morphology of the streams"
* code = SecondLookCS#artificial-bank "Artificial bank"
* subject = Reference(Location/sl-loc-spot-1)
* effectiveDateTime = "2026-09-24T16:40:00Z"
* performer = Reference(Practitioner/sl-practitioner-1)
* valueCodeableConcept = TemporaryOahSystem#present "Present"
* derivedFrom = Reference(QuestionnaireResponse/sl-qr-visit-1)

Instance: sl-obs-channel-1
InstanceOf: ObservationIndicatorsOah
Title: "Dug-out channel, spot 1, visit 1"
Usage: #inline
* status = #final
* category = TemporaryOahSystem#morophology "Morphology of the streams"
* code = SecondLookCS#dug-out-channel "Dug-out channel"
* subject = Reference(Location/sl-loc-spot-1)
* effectiveDateTime = "2026-09-24T16:40:00Z"
* performer = Reference(Practitioner/sl-practitioner-1)
* valueCodeableConcept = TemporaryOahSystem#absent "Absent"
* derivedFrom = Reference(QuestionnaireResponse/sl-qr-visit-1)

Instance: sl-obs-invasive-1
InstanceOf: ObservationIndicatorsOah
Title: "Invasive plant, spot 1, visit 1"
Usage: #inline
* status = #final
* category = TemporaryOahSystem#invasiveOrganisms "Invasive invertebrate, plants and fish"
* code = SecondLookCS#invasive-plant "Invasive plant"
* subject = Reference(Location/sl-loc-spot-1)
* effectiveDateTime = "2026-09-24T16:40:00Z"
* performer = Reference(Practitioner/sl-practitioner-1)
* valueCodeableConcept = TemporaryOahSystem#present "Present"
* derivedFrom = Reference(QuestionnaireResponse/sl-qr-visit-1)

Instance: sl-obs-pipe-1
InstanceOf: ObservationIndicatorsOah
Title: "Pipe running, spot 1, visit 1"
Usage: #inline
* status = #final
* category = TemporaryOahSystem#hydrology "Hydrology of the stream"
* code = SecondLookCS#pipe-running "Pipe running"
* subject = Reference(Location/sl-loc-spot-1)
* effectiveDateTime = "2026-09-24T16:40:00Z"
* performer = Reference(Practitioner/sl-practitioner-1)
* valueCodeableConcept = SecondLookCS#cant-tell "Can't tell"
* derivedFrom = Reference(QuestionnaireResponse/sl-qr-visit-1)

Instance: sl-obs-water-height-1
InstanceOf: ObservationIndicatorsOah
Title: "Water height, spot 1, visit 1"
Usage: #inline
* status = #final
* category = TemporaryOahSystem#hydrology "Hydrology of the stream"
* code = TemporaryOahSystem#hydrology "Hydrology of the stream"
* subject = Reference(Location/sl-loc-spot-1)
* effectiveDateTime = "2026-09-24T16:40:00Z"
* performer = Reference(Practitioner/sl-practitioner-1)
* valueQuantity = 0.2 $ucum#m "metre"
* derivedFrom = Reference(QuestionnaireResponse/sl-qr-visit-1)

Instance: sl-provenance-visit-1
InstanceOf: Provenance
Title: "Provenance of visit 1"
Usage: #inline
* target[0] = Reference(Observation/sl-obs-bank-1)
* target[1] = Reference(Observation/sl-obs-channel-1)
* target[2] = Reference(Observation/sl-obs-invasive-1)
* target[3] = Reference(Observation/sl-obs-pipe-1)
* target[4] = Reference(Observation/sl-obs-water-height-1)
* recorded = "2026-09-24T16:41:00Z"
* agent[0].type = $prov-type#author
* agent[0].who = Reference(Practitioner/sl-practitioner-1)
* agent[1].type = $prov-type#assembler
* agent[1].who = Reference(Device/sl-device)
* entity[0].role = #source
* entity[0].what = Reference(QuestionnaireResponse/sl-qr-visit-1)
* entity[1].role = #source
* entity[1].what = Reference(QuestionnaireResponse/sl-qr-test-1)

Instance: sl-visit-1-bundle
InstanceOf: Bundle
Title: "Second Look visit 1, complete record"
Description: "Everything one creek visit produces: nested Locations, the pseudonymous Practitioner with a dated qualification, the test sitting and the visit as QuestionnaireResponses, one Observation per answered item under the OneAquaHealth indicator profile, and one Provenance that ties the answers to the score of the person who gave them."
Usage: #example
* type = #collection
* timestamp = "2026-09-24T16:41:00Z"
* entry[0].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Organization/sl-org"
* entry[0].resource = sl-org
* entry[1].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Device/sl-device"
* entry[1].resource = sl-device
* entry[2].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-loc-strawberry-creek"
* entry[2].resource = sl-loc-strawberry-creek
* entry[3].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-loc-campus-reach"
* entry[3].resource = sl-loc-campus-reach
* entry[4].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Location/sl-loc-spot-1"
* entry[4].resource = sl-loc-spot-1
* entry[5].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Practitioner/sl-practitioner-1"
* entry[5].resource = sl-practitioner-1
* entry[6].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/QuestionnaireResponse/sl-qr-test-1"
* entry[6].resource = sl-qr-test-1
* entry[7].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/QuestionnaireResponse/sl-qr-visit-1"
* entry[7].resource = sl-qr-visit-1
* entry[8].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Observation/sl-obs-bank-1"
* entry[8].resource = sl-obs-bank-1
* entry[9].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Observation/sl-obs-channel-1"
* entry[9].resource = sl-obs-channel-1
* entry[10].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Observation/sl-obs-invasive-1"
* entry[10].resource = sl-obs-invasive-1
* entry[11].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Observation/sl-obs-pipe-1"
* entry[11].resource = sl-obs-pipe-1
* entry[12].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Observation/sl-obs-water-height-1"
* entry[12].resource = sl-obs-water-height-1
* entry[13].fullUrl = "https://github.com/alejandro-publius/second-look/fhir/Provenance/sl-provenance-visit-1"
* entry[13].resource = sl-provenance-visit-1
