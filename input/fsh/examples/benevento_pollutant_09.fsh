// Benevento urban air quality summaries for site 09



Instance: Loc-Benevento-09
Title: "Location - Benevento monitoring site 09"
Description: "Fixed monitoring station #09 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-09"
* name = "Benevento monitoring site 09"
* description = "Benevento ARPAC air-quality station (site 09)."
* mode = #instance
* type = http://snomed.info/sct#257559008 "Monitoring station"
* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento09-Benzene-2018
Title: "Observation - Benevento09 Benzene (2018 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 09 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 0.39 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 1.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 0.22 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-No2-2018
Title: "Observation - Benevento09 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 09 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 13.75 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 89.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 11.94 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 10.3 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-O3-2018
Title: "Observation - Benevento09 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 09 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 51.57 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 157.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 37.58 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 46.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-Pm10-2018
Title: "Observation - Benevento09 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 09 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 18.65 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 50.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 9.72 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 18.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-Pm25-2018
Title: "Observation - Benevento09 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 09 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 46.9 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 6.09 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 12.5 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-Benzene-2019
Title: "Observation - Benevento09 Benzene (2019 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 09 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 0.48 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 0.36 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.4 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-No2-2019
Title: "Observation - Benevento09 NO2 (2019 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 09 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 15.59 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 89.4 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 14.44 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 11.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-O3-2019
Title: "Observation - Benevento09 O3 (2019 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 09 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 46.62 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 136.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 31.66 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 42 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-Pm10-2019
Title: "Observation - Benevento09 PM10 (2019 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 09 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 15.88 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 61.3 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 8.6 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 14.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento09-Pm25-2019
Title: "Observation - Benevento09 PM2.5 (2019 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 09 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-09)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 12.05 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#max "Maximum"
* component[=].valueQuantity = 307.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#min "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#stdev "Standard deviation"
* component[=].valueQuantity = 11.02 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 11 'ug/m3' "microgram per cubic meter"
