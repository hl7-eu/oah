Instance: IndicatorsOah2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/oah/ConceptMap/IndicatorsOah2FHIR"
* name = "IndicatorsOah2FHIR"
* title = "OAH Indicators Model to this guide Map"
* status = #draft
* experimental = true
* description = """OAH Indicators Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/IndicatorsOah"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-indicators-oah"
* group[=].element[+].code = #biological
* group[=].element[=].display = "Key biological quality indicators"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #biological.macroinvertebreates
* group[=].element[=].display = "Benthic Macroinvertebrates"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'macroinvertebreates'"
* group[=].element[+].code = #biological.diatomes
* group[=].element[=].display = "Diatoms (microalgae/phytobenthos)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diatomes'"
* group[=].element[+].code = #biological.fishes
* group[=].element[=].display = "Fish"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'fishes'"
* group[=].element[+].code = #biological.microbiomes
* group[=].element[=].display = "Microbiomes/Biofilms"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'microbiomes'"
* group[=].element[+].code = #hydromorphological
* group[=].element[=].display = "Key hydromorphological quality indicators"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #hydromorphological.morphology
* group[=].element[=].display = "Morphology of the streams"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'morphology'"
* group[=].element[+].code = #hydromorphological.hydrology
* group[=].element[=].display = "Hydrology of the stream"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'hydrology'"
* group[=].element[+].code = #hydromorphological.landUse
* group[=].element[=].display = "Land use in the margins"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'landUse'"
* group[=].element[+].code = #water
* group[=].element[=].display = "Key water quality indicators"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #water.nutrients
* group[=].element[=].display = "Nutrients"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'nutrients'"
* group[=].element[+].code = #water.pH
* group[=].element[=].display = "pH"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'pH'"
* group[=].element[+].code = #water.dissolvedO2
* group[=].element[=].display = "Dissolved O2"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'dissolvedO2'"
* group[=].element[+].code = #water.waterTemperature
* group[=].element[=].display = "Water temperature"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'waterTemperature'"
* group[=].element[+].code = #water.tds
* group[=].element[=].display = "Total dissolved solids (TDS)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'tds'"
* group[=].element[+].code = #water.tss
* group[=].element[=].display = "Total suspended solids (TSS)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'tss'"
* group[=].element[+].code = #water.conductivity
* group[=].element[=].display = "Conductivity"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'conductivity'"
* group[=].element[+].code = #water.pharmaceuticals
* group[=].element[=].display = "Pharmaceuticals"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'pharmaceuticals'"
* group[=].element[+].code = #water.foam
* group[=].element[=].display = "Foam/colour/smell"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'foam'"
* group[=].element[+].code = #water.coliforms
* group[=].element[=].display = "Coliforms"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'coliforms'"
* group[=].element[+].code = #bioRisk
* group[=].element[=].display = "Biological indicators of health risks"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #bioRisk.diptera
* group[=].element[=].display = "Diptera"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diptera'"
* group[=].element[+].code = #bioRisk.ticks
* group[=].element[=].display = "Ticks"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'ticks'"
* group[=].element[+].code = #bioRisk.invasiveOrganisms
* group[=].element[=].display = "Invasive invertebrate, plants and fish"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'invasiveOrganisms'"
* group[=].element[+].code = #bioRisk.birds
* group[=].element[=].display = "Birds"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'birds'"
* group[=].element[+].code = #bioRisk.diatomTratology
* group[=].element[=].display = "Diatom teratology"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'diatomTratology'"
* group[=].element[+].code = #bioRisk.fish
* group[=].element[=].display = "Fish"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'fish'"
* group[=].element[+].code = #bioRisk.amphibians
* group[=].element[=].display = "Amphibians"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote
* group[=].element[=].display = "Remote sensing indices"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ndci
* group[=].element[=].display = "Normalized Difference Chlorophyll Index (NDCI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.mci
* group[=].element[=].display = "Maximum Chlorophyll Index (MCI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.bwdrvi
* group[=].element[=].display = "Blue Wide Dynamic Range Vegetation Index (BWDRVI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.evi
* group[=].element[=].display = "Enhanced Vegetation Index (EVI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ndvi
* group[=].element[=].display = "Normalized Difference Vegetation Index (NDVI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ndwi
* group[=].element[=].display = "Normalized Difference Water Index (NDWI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.savi
* group[=].element[=].display = "Soil Adjusted Vegetation Index (SAVI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.tsavi
* group[=].element[=].display = "Transformed Soil Adjusted Vegetation Index (TSAVI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.lwci
* group[=].element[=].display = "Leaf Water Content Index (LWCI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.gvmi
* group[=].element[=].display = "Global Vegetation Moisture Index (GVMI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.gemi
* group[=].element[=].display = "Global Environment Monitoring Index (GEMI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.lai
* group[=].element[=].display = "Leaf Area Index (LAI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.glai
* group[=].element[=].display = "Green Leaf Area Index (GLAI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.fapar
* group[=].element[=].display = "Fraction of Absorbed Photosynthetically Active Radiation (FAPAR)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.mndwi
* group[=].element[=].display = "Modified Normalized Difference Water Index (MNDWI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.andwi
* group[=].element[=].display = "Augmented Normalized Difference Water Index (ANDWI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.s2wi
* group[=].element[=].display = "Sentinel-2 Water Index (S2WI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.lswi
* group[=].element[=].display = "Land Surface Water Index (LSWI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ndviMndwiModel
* group[=].element[=].display = "NDVI–MNDWI Model"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.lst
* group[=].element[=].display = "Land Surface Temperature (LST)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.blfei
* group[=].element[=].display = "Built-Up Land Features Extraction Index (BLFEI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.brba
* group[=].element[=].display = "Band Ratio for Built-up Area (BRBA)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.nbai
* group[=].element[=].display = "Normalized Built-up Area Index (NBAI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ibi
* group[=].element[=].display = "Index-Based Built-Up Index (IBI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ebbi
* group[=].element[=].display = "Enhanced Built-Up and Bareness Index (EBBI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.pisi
* group[=].element[=].display = "Perpendicular Impervious Surface Index (PISI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.ui
* group[=].element[=].display = "Urban Index (UI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[=].element[+].code = #remote.vibi
* group[=].element[=].display = "Vegetation Index Built-up Index (VIBI)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'amphibians'"
* group[+].source = "http://hl7.eu/fhir/ig/oah/StructureDefinition/IndicatorsOah"
* group[=].target = "http://hl7.eu/fhir/ig/oah/StructureDefinition/observation-with-component-oah"
* group[=].element[+].code = #biological.macrophytes
* group[=].element[=].display = "Macrophytes (aquatic plants)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'macrophytes'. Multimple results are recorded for this indicator."
* group[=].element[+].code = #biological.riparianVegetation
* group[=].element[=].display = "Riparian vegetation"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where Observation.code is 'riparianVegetation'.Multimple results are recorded for this indicator."
