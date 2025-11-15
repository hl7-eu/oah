// Benevento urban air quality summaries for site 06


Instance: Loc-Benevento-06
Title: "Location - Benevento monitoring site 06"
Description: "Fixed monitoring station #06 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-06"
* name = "Benevento monitoring site 06"
* description = "Benevento ARPAC air-quality station (site 06)."
* mode = #instance
* type = http://snomed.info/sct#257559008 "Monitoring station"
* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento06-Benzene-2018
Title: "Observation - Benevento06 Benzene (2018 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 06 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 2.25 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 105.3 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 7.01 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 1.5 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-No2-2018
Title: "Observation - Benevento06 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 06 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.79 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 81.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 10.22 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 9.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-O3-2018
Title: "Observation - Benevento06 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 06 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 66.36 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 144.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 1.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 33.56 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 72.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-Pm10-2018
Title: "Observation - Benevento06 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 06 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 16.76 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 76.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 12.75 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 14.8 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-Pm25-2018
Title: "Observation - Benevento06 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 06 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 9.14 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 37.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 5.46 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 8.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-Benzene-2019
Title: "Observation - Benevento06 Benzene (2019 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 06 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 0.13 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 0.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 0.12 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-No2-2019
Title: "Observation - Benevento06 NO2 (2019 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 06 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 11.59 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 122.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 1.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 10.92 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 7.7 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-O3-2019
Title: "Observation - Benevento06 O3 (2019 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 06 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 65.39 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 491 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 2.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 46.25 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 60.3 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-Pm10-2019
Title: "Observation - Benevento06 PM10 (2019 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 06 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 25.73 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 81.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 16.12 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 20.6 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento06-Pm25-2019
Title: "Observation - Benevento06 PM2.5 (2019 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 06 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-06)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 13.58 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 44.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 6.96 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 13.2 'ug/m3' "microgram per cubic meter"
