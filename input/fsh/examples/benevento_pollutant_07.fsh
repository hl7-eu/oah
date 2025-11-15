// Benevento urban air quality summaries for site 07



Instance: Loc-Benevento-07
Title: "Location - Benevento monitoring site 07"
Description: "Fixed monitoring station #07 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-07"
* name = "Benevento monitoring site 07"
* description = "Benevento ARPAC air-quality station (site 07)."
* mode = #instance
* type = http://snomed.info/sct#257559008 "Monitoring station"
* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento07-Benzene-2018
Title: "Observation - Benevento07 Benzene (2018 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 07 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 0.66 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 18.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 1.37 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.2 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-No2-2018
Title: "Observation - Benevento07 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 07 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.67 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 95.3 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 12.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 8.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-O3-2018
Title: "Observation - Benevento07 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 07 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 68.87 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 176 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 40.56 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 66.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-Pm10-2018
Title: "Observation - Benevento07 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 07 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 24.71 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 102.3 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 17.72 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 20.6 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-Pm25-2018
Title: "Observation - Benevento07 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 07 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.72 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 42.8 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 6.37 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 12.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-Benzene-2019
Title: "Observation - Benevento07 Benzene (2019 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 07 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 0.29 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 2.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 0.22 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.3 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-No2-2019
Title: "Observation - Benevento07 NO2 (2019 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 07 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 13.94 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 81.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 12.35 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 9.3 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-O3-2019
Title: "Observation - Benevento07 O3 (2019 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 07 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 60.17 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 199.9 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 38.07 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 53.35 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-Pm10-2019
Title: "Observation - Benevento07 PM10 (2019 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 07 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 20.68 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 68.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 10.63 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 20 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento07-Pm25-2019
Title: "Observation - Benevento07 PM2.5 (2019 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 07 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-07)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.41 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 61.9 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 7.44 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 12 'ug/m3' "microgram per cubic meter"
