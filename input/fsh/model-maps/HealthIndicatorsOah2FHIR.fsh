Instance: HealthIndicatorsOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/HealthIndicatorsOah2FHIR"
* name = "HealthIndicatorsOah2FHIR"
* title = "OAH Data Set Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Data Set Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/HealthIndicators"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-health-measure-oah"
* group[=].element[+].code = #diseasePrevalence
* group[=].element[=].display = "Cases of disease prevalence"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #diseasePrevalence.highBloodPression
* group[=].element[=].display = "% of people with high blood pressure (prevalence)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'macroinvertebreates'"
* group[=].element[+].code = #diseasePrevalence.hypertension
* group[=].element[=].display = "% of people under treatment for hypertension"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diatomes'"
* group[=].element[+].code = #diseasePrevalence.highBloodPressionTreatment
* group[=].element[=].display = "% of people under treatment for high blood pressure"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'fishes'"
* group[=].element[+].code = #diseasePrevalence.obesity
* group[=].element[=].display = "% of people affected from obesity"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'macrophytes'. Multimple results are recorded for this indicator."
* group[=].element[+].code = #diseasePrevalence.cholesterolemia190
* group[=].element[=].display = "% of people with high total cholesterolemia (>=190 mg/dl)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'riparianVegetation'.Multimple results are recorded for this indicator."
* group[=].element[+].code = #diseasePrevalence.hypercholesterolemiaTreatment
* group[=].element[=].display = "% of people under treatment for hypercholesterolemia"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'microbiomes'"
* group[=].element[+].code = #diseasePrevalence.cholesterolemia240
* group[=].element[=].display = "% of people with high total cholesterolemia (>=240 mg/dl)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #diseasePrevalence.diabetes
* group[=].element[=].display = "% of people with high blood sugar/diabetes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'morphology'"
* group[=].element[+].code = #diseasePrevalence.diabetesTreatment
* group[=].element[=].display = "% of people under treatment for diabetes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'hydrology'"
* group[=].element[+].code = #diseasePrevalence.noPhysicalActivity
* group[=].element[=].display = "% of people not engaging in physical activity"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'landUse'"
* group[=].element[+].code = #diseasePrevalence.cvd
* group[=].element[=].display = "% of people affected from CVD"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #diseasePrevalence.gastrointestinal
* group[=].element[=].display = "% of people with Cases of Gastrointestinal diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'nutrients'"
* group[=].element[+].code = #diseasePrevalence.longTermDisease
* group[=].element[=].display = "% of people with long-term disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'pH'"
* group[=].element[+].code = #diseasePrevalence.noLongTermDisease
* group[=].element[=].display = "% of people without  long-term disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'dissolvedO2'"
* group[=].element[+].code = #diseasePrevalence.bmiBelow18
* group[=].element[=].display = "% of people with BMI <18,5"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'waterTemperature'"
* group[=].element[+].code = #diseasePrevalence.bmiBelow25
* group[=].element[=].display = "% of people with BMI 18,5-24,9"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'tds'"
* group[=].element[+].code = #diseasePrevalence.bmiBelow30
* group[=].element[=].display = "% of people with BMI 25-29,9"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'tss'"
* group[=].element[+].code = #diseasePrevalence.bmiAbove30
* group[=].element[=].display = "% of people with BMI =>30"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'conductivity'"
* group[=].element[+].code = #diseasePrevalence.diabateCopdCvd
* group[=].element[=].display = "% of people that have or have had Diabetes, COPD or Cardiovascular disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'pharmaceuticals'"
* group[=].element[+].code = #diseasePrevalence.noDiabateCopdCvd
* group[=].element[=].display = "% of people that do not have Diabetes, COPD or Cardiovascular disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'foam'"
* group[=].element[+].code = #diseasePrevalence.mentalHealth
* group[=].element[=].display = "% of people experience with mental health issues"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'coliforms'"
* group[=].element[+].code = #diseasePrevalence.borrelia
* group[=].element[=].display = "% of people with Borrelia Burgdoferi"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #diseasePrevalence.campylobacter
* group[=].element[=].display = "% of people with Campylobacter"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diptera'"
* group[=].element[+].code = #diseasePrevalence.chlamydia
* group[=].element[=].display = "% of people with Chlamydia Psittaci"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'ticks'"
* group[=].element[+].code = #diseasePrevalence.cryptosporidium
* group[=].element[=].display = "% of people with Cryptosporidium"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'invasiveOrganisms'"
* group[=].element[+].code = #diseasePrevalence.entamoeba
* group[=].element[=].display = "% of people with Entamoeba histolytica"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'birds'"
* group[=].element[+].code = #diseasePrevalence.escherichiaColi
* group[=].element[=].display = "% of people with Escherichia Coli"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diatomTratology'"
* group[=].element[+].code = #diseasePrevalence.giarda
* group[=].element[=].display = "% of people with Giarda"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'fish'"
* group[=].element[+].code = #diseasePrevalence.salmonella
* group[=].element[=].display = "% of people with Salmonella"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #diseasePrevalence.yersiniaEnterocolitica
* group[=].element[=].display = "% of people with Yersinia enterocolitica"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
