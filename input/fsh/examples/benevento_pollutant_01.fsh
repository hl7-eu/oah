// Benevento urban air quality summaries for site 01

Instance: Org-ARPAC-Campania
Title: "Organization - ARPAC Campania"
Description: "Regional environmental protection agency responsible for Benevento monitoring network."
InstanceOf: Organization
Usage: #example
* name = "ARPAC - Campania Regional Environmental Agency"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #govt
* type[0].coding[0].display = "Government"

Instance: Loc-Benevento-01
Title: "Location - Benevento monitoring site 01"
Description: "Fixed monitoring station #01 in Benevento urban area (air quality)."
InstanceOf: LocationOah
Usage: #example
* identifier[0].system = "https://oneaquahealth.eu/location-id"
* identifier[0].value = "benevento-01"
* name = "Benevento monitoring site 01"
* description = "Benevento ARPAC air-quality station (site 01)."
* mode = #instance
* type = $sct#288520005 "City environment"

* position.latitude = 41.129
* position.longitude = 14.781

Instance: Obs-Benevento01-Benzene-2018
Title: "Observation - Benevento01 Benzene (2018 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 01 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 1.54 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 7.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 1.19 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 1.2 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-No2-2018
Title: "Observation - Benevento01 NO2 (2018 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 01 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 28.11 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 104.9 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 1.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 16.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 23.8 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-O3-2018
Title: "Observation - Benevento01 O3 (2018 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 01 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 20.84 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 84.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 22.22 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 10.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-Pm10-2018
Title: "Observation - Benevento01 PM10 (2018 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 01 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 26.19 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 185.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 22.44 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 23.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-Pm25-2018
Title: "Observation - Benevento01 PM2.5 (2018 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 01 in 2018."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2018-01-01"
* effectivePeriod.end = "2018-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 27.69 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 164.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 19.89 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 21.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-Benzene-2019
Title: "Observation - Benevento01 Benzene (2019 summary)"
Description: "Annual summary statistics for Benzene measured at Benevento site 01 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#benzene "Benzene"
* code.text = "Benzene"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 1.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 4.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0.1 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 0.85 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 0.9 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-No2-2019
Title: "Observation - Benevento01 NO2 (2019 summary)"
Description: "Annual summary statistics for NO2 measured at Benevento site 01 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#no2 "NO2"
* code.text = "NO2"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 24.48 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 109.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0.5 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 18.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 19.5 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-O3-2019
Title: "Observation - Benevento01 O3 (2019 summary)"
Description: "Annual summary statistics for O3 measured at Benevento site 01 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#o3 "O3"
* code.text = "O3"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 42.27 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 89.7 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 26.01 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 42.5 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-Pm10-2019
Title: "Observation - Benevento01 PM10 (2019 summary)"
Description: "Annual summary statistics for PM10 measured at Benevento site 01 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm10 "PM10"
* code.text = "PM10"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 20.26 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 113 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 17.3 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 17.1 'ug/m3' "microgram per cubic meter"

Instance: Obs-Benevento01-Pm25-2019
Title: "Observation - Benevento01 PM2.5 (2019 summary)"
Description: "Annual summary statistics for PM2.5 measured at Benevento site 01 in 2019."
InstanceOf: ObservationWithCompOah
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = https://oneaquahealth.eu/air-parameters#pm2-5 "PM2.5"
* code.text = "PM2.5"
* subject = Reference(Loc-Benevento-01)
* effectivePeriod.start = "2019-01-01"
* effectivePeriod.end = "2019-12-31"
* performer[0] = Reference(Org-ARPAC-Campania)
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#average "Average"
* component[=].valueQuantity = 21.59 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#maximum "Maximum"
* component[=].valueQuantity = 89.2 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#minimum "Minimum"
* component[=].valueQuantity = 0 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#std-dev "Standard Deviation"
* component[=].valueQuantity = 16.77 'ug/m3' "microgram per cubic meter"
* component[+].code = http://terminology.hl7.org/CodeSystem/observation-statistics#median "Median"
* component[=].valueQuantity = 18.1 'ug/m3' "microgram per cubic meter"
