// Benevento urban air quality summaries for site 11



Instance: Loc-Benevento-11
Title: "Location - Benevento monitoring site 11"
Description: "Fixed monitoring station #11 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-11"
* name = "Benevento monitoring site 11"
* description = "Benevento ARPAC air-quality station (site 11)."
* mode = #instance
* type = http://snomed.info/sct#257559008 "Monitoring station"
* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento11-No2-2018
Title: "Observation - Benevento11 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 11 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-11)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 26.82 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 93.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 1.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 17.29 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 22.5 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento11-O3-2018
Title: "Observation - Benevento11 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 11 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-11)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 38.81 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 80 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 21.96 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 42.6 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento11-Pm10-2018
Title: "Observation - Benevento11 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 11 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-11)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 24.88 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 109.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 20.23 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 19.7 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento11-Pm25-2018
Title: "Observation - Benevento11 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 11 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-11)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 22.43 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 92 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 17.42 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 19.15 'ug/m3' "microgram per cubic meter"
