// Benevento urban air quality summaries for site 02

Instance: Loc-Benevento-02
Title: "Location - Benevento monitoring site 02"
Description: "Fixed monitoring station #02 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-02"
* name = "Benevento monitoring site 02"
* description = "Benevento ARPAC air-quality station (site 02)."
* mode = #instance
* type = http://snomed.info/sct#257559008 "Monitoring station"
* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento02-Benzene-2018
Title: "Observation - Benevento02 Benzene (2018 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 02 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 1.07 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 4.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 0.62 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-No2-2018
Title: "Observation - Benevento02 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 02 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 27.69 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 113.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 1.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 16.47 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 24.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-O3-2018
Title: "Observation - Benevento02 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 02 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 32.74 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 106.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 24.81 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 28.05 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-Pm10-2018
Title: "Observation - Benevento02 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 02 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 19.68 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 129.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 21.21 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 13.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-Pm25-2018
Title: "Observation - Benevento02 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 02 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 18.51 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 57.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 11.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 18 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-Benzene-2019
Title: "Observation - Benevento02 Benzene (2019 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 02 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 1.13 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 4.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.7 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-No2-2019
Title: "Observation - Benevento02 NO2 (2019 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 02 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 24.89 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 124.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 1.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 20.51 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 18.8 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-O3-2019
Title: "Observation - Benevento02 O3 (2019 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 02 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 52.49 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 117 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.9 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 32.36 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 60.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-Pm10-2019
Title: "Observation - Benevento02 PM10 (2019 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 02 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 27.27 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 135.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 24.77 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 19.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento02-Pm25-2019
Title: "Observation - Benevento02 PM2.5 (2019 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 02 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-02)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 23 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 102.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 20.77 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 15.5 'ug/m3' "microgram per cubic meter"
