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
* group[=].element[+].code = #HealthIndicators.diseasePrevalence
* group[=].element[=].display = "Cases of disease prevalence"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.highBloodPression
* group[=].element[=].display = "% of people with high blood pressure (prevalence)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.hypertension
* group[=].element[=].display = "% of people under treatment for hypertension"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.highBloodPressionTreatment
* group[=].element[=].display = "% of people under treatment for high blood pressure"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.obesity
* group[=].element[=].display = "% of people affected from obesity"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.cholesterolemia190
* group[=].element[=].display = "% of people with high total cholesterolemia (>=190 mg/dl)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.hypercholesterolemiaTreatment
* group[=].element[=].display = "% of people under treatment for hypercholesterolemia"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.cholesterolemia240
* group[=].element[=].display = "% of people with high total cholesterolemia (>=240 mg/dl)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.diabetes
* group[=].element[=].display = "% of people with high blood sugar/diabetes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.diabetesTreatment
* group[=].element[=].display = "% of people under treatment for diabetes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.noPhysicalActivity
* group[=].element[=].display = "% of people not engaging in physical activity"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.cvd
* group[=].element[=].display = "% of people affected from CVD"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.gastrointestinal
* group[=].element[=].display = "% of people with Cases of Gastrointestinal diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.longTermDisease
* group[=].element[=].display = "% of people with long-term disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.noLongTermDisease
* group[=].element[=].display = "% of people without  long-term disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.bmiBelow18
* group[=].element[=].display = "% of people with BMI <18,5"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.bmiBelow25
* group[=].element[=].display = "% of people with BMI 18,5-24,9"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.bmiBelow30
* group[=].element[=].display = "% of people with BMI 25-29,9"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.bmiAbove30
* group[=].element[=].display = "% of people with BMI =>30"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.diabateCopdCvd
* group[=].element[=].display = "% of people that have or have had Diabetes, COPD or Cardiovascular disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.noDiabateCopdCvd
* group[=].element[=].display = "% of people that do not have Diabetes, COPD or Cardiovascular disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.mentalHealth
* group[=].element[=].display = "% of people experience with mental health issues"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.borrelia
* group[=].element[=].display = "% of people with Borrelia Burgdoferi"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.campylobacter
* group[=].element[=].display = "% of people with Campylobacter"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.chlamydia
* group[=].element[=].display = "% of people with Chlamydia Psittaci"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.cryptosporidium
* group[=].element[=].display = "% of people with Cryptosporidium"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.entamoeba
* group[=].element[=].display = "% of people with Entamoeba histolytica"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.escherichiaColi
* group[=].element[=].display = "% of people with Escherichia Coli"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.giarda
* group[=].element[=].display = "% of people with Giarda"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.salmonella
* group[=].element[=].display = "% of people with Salmonella"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.diseasePrevalence.yersiniaEnterocolitica
* group[=].element[=].display = "% of people with Yersinia enterocolitica"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath
* group[=].element[=].display = "Cases of death"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.tbc
* group[=].element[=].display = "% of deaths due to TBC"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.viralHepatitis
* group[=].element[=].display = "% of deaths due to Viral Hepatitis"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.infectiveAndParasitic
* group[=].element[=].display = "% of deaths due to infective and parasitic diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.bloodAndHematopoieticOrgans
* group[=].element[=].display = "% of deaths due to diseases of the blood and hematopoietic organs"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.diabetesMellitus
* group[=].element[=].display = "% of deaths due to Diabetes Mellitus"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.endocrineNutritionalMetabolic
* group[=].element[=].display = "% of deaths due to endocrine, nutritional and metabolic diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.ischemicHeart
* group[=].element[=].display = "% of deaths due to ischemic diseases of the heart"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.otherHeart
* group[=].element[=].display = "% of deaths due to other diseases of the heart"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.otherCirculatorySystem 
* group[=].element[=].display = "% of deaths due to other diseases of the circulatory system"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.pneumonia
* group[=].element[=].display = "% of deaths due to Pneumonia"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.chronicLowerRespiratory
* group[=].element[=].display = "% of deaths due to chronic diseases of the lower respiratory tract"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.otherRespiratorySystem
* group[=].element[=].display = "% of deaths due to other diseases of the respiratory system"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.SkinSubcutaneousTissue
* group[=].element[=].display = "% of deaths due to diseases of the skin and subcutaneous tissue"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.accidentalPoisoning
* group[=].element[=].display = "% of deaths due to accidental poisoning"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.malignantTumor
* group[=].element[=].display = "% of deaths due to Malignant Tumors"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.healthcareSensitiveCauses 
* group[=].element[=].display = "% of deaths due to Healthcare-Sensitive Causes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.winterExcess
* group[=].element[=].display = "% of Excess Mortality in Winter"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.all
* group[=].element[=].display = "% of deaths due to all causes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.cancer
* group[=].element[=].display = "% of deaths due to cancer"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.diabetes
* group[=].element[=].display = "% of deaths due to diabetes"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.cardiovascular
* group[=].element[=].display = "% of deaths due to cardiovascular disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.respiratory
* group[=].element[=].display = "% of deaths due to respiratory disease"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.causesOfDeath.COPDLungCancer
* group[=].element[=].display = "% of deaths due to COPD and lung cancer"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization
* group[=].element[=].display = "0"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.diabetesMellitus
* group[=].element[=].display = "% of hospitalizations due to Diabetes Mellitus"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.malignantTumor
* group[=].element[=].display = "% of hospitalizations due to malignant tumors"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.hypertension
* group[=].element[=].display = "% of hospitalizations due to Hypertension"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.cardiovascular
* group[=].element[=].display = "% of hospitalizations due to Circulatory System Diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.respiratory
* group[=].element[=].display = "% of hospitalizations due to respiratory diseases"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.asthma
* group[=].element[=].display = "% of hospitalizations for Asthma"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HealthIndicators.hospitalization.avoidablePrimaryPrevention
* group[=].element[=].display = "% of hospitalizations avoidable by primary prevention"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
