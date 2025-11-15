
ValueSet: OahIndicatorsVs
Id: temporarySystem-oah-eu
Title: "OAH Indicators"
Description: """This Value Set is used to identify the indicators adopted by this project."""

* ^experimental = true
* codes from system TemporaryOahSystem

CodeSystem: TemporaryOahSystem
Id: temporarySystem-oah-eu
Title: "Temporary OAH Code System"
Description: """This is a temporary code system defined to collect concepts expected to be used by this project, but for which international coded concepts have not been identified yet."""

* ^experimental = true
* ^caseSensitive = true

* #macroinvertebreates "Benthic Macro invertebrates count" "Benthic Macroinvertebrates count"
// add specialized concept for the Macro invertebrates count e.g. snails, worms, etc.
* #diatomes "Diatoms (microalgae/phytobenthos)" "Diatoms (microalgae/phytobenthos)"
// add specialized concept for the Diatoms count 
* #fishes "Fish" "Fish"
// add specialized concept for the fish count 
* #macrophytes "Macrophytes" "Macrophytes (aquatic plants)"

* #liveworts "Liveworts/mosses/lichens" "Liveworts/mosses/lichens"
* #broad-leaved-herbs "Emergent broad-leaved herbs" "Emergent broad-leaved herbs"
* #floating-leaved "Floating-leaved (rooted)" "Floating-leaved (rooted)"
* #free-floating "Free-floating" "Free-floating"
* #amphibious "Amphibious (occupy the transition between land and water)" "Amphibious (occupy the transition between land and water)"
* #submerged-broad-leaved "Submerged broad-leaved" "Submerged broad-leaved"
* #submerged-linear-leaved "Submerged linear-leaved" "Submerged linear-leaved"
* #filamentous-algae "Filamentous algae" "Filamentous algae"

* #liveworts-non-native "Liveworts/mosses/lichens Non native" "Liveworts/mosses/lichens non native"
* #broad-leaved-herbs-non-native "Emergent broad-leaved herbs non native" "Emergent broad-leaved herbs non native"
* #floating-leaved-non-native "Floating-leaved (rooted) Non native" "Floating-leaved (rooted) non native"
* #free-floating-non-native "Free-floating Non native" "Free-floating non native"
* #amphibious-non-native "Amphibious (occupy the transition between land and water) Non native" "Amphibious (occupy the transition between land and water) non native"
* #submerged-broad-leaved-non-native "Submerged broad-leaved Non native" "Submerged broad-leaved non native"
* #submerged-linear-leaved-non-native "Submerged linear-leaved Non native" "Submerged linear-leaved non native"
* #filamentous-algae-non-native "Filamentous algae Non native" "Filamentous algae"


* #riparianVegetation "Riparian vegetation" "Riparian vegetation"
* #trees "Trees (height >3m)" "Trees (height >3m)"
* #bushes "Bushes (height (1.5-3m)" "Bushes (height (1.5-3m)"
* #herbaceous "Herbaceous (height < 1.5m)" "Herbaceous (height < 1.5m)"

* #microbiomes "Microbiomes/Biofilms" "Microbiomes/Biofilms" 
* #morophology "Morphology of the streams" "Morphology of the streams – habitat, shape of the channel and valley, substrate in the channel and margins" 
* #hydrology "Hydrology of the stream" "Hydrology of the stream – flow type, diversity of flow types, longitudinal connectivity, runoff" 
* #LandUse "Land use in the margins" "Land use in the margins" 
* #nutrients "Nutrients" "Nutrients (Nitrates, nitrites, ammonia, phosphates, total P, total N, …)" 
* #pH "pH" "pH" 
* #dissolvedO2 "Dissolved O2" "Dissolved O2" 
* #waterTemperature "Water temperature" "Water temperature" 
* #tds "Total dissolved solids (TDS)" "Total dissolved solids (TDS)" 
* #tss "Total suspended solids (TSS)" "Total suspended solids (TSS)" 
* #conductivity "Conductivity" "Conductivity" 
* #pharmaceuticals "Pharmaceuticals" "Pharmaceuticals" 
* #foam "Foam/colour/smell" "Foam/colour/smell" 
* #coliforms "Coliforms" "Coliforms" 
* #diptera "Diptera" "Diptera (specially Culicidae and Psycodidae)" 
* #ticks "Ticks" "Ticks" 
* #invasiveOrganisms "Invasive invertebrate, plants and fish" "Invasive invertebrate, plants and fish" 
* #birds "Birds" "Birds" 
* #diatomTratology "Diatom teratology" "Diatom teratology (deformities)" 
* #fish "Fish" "Fish" 
* #amphibians "Amphibians" "Amphibians" 


* #ndvi "Normalized Difference Vegetation Index (NDVI)"
* #mndvi "Modified Normalized Difference Vegetation Index (mNDVI)"
* #evi "Enhanced Vegetation Index (EVI)"
* #evi2 "Enhanced Vegetation Index 2 (EVI2)"
* #savi "Soil Adjusted Vegetation Index (SAVI)"
* #tsavi "Transformed Soil Adjusted Vegetation Index (TSAVI)"
* #bwdrvi "Blue-wide Dynamic Range Vegetation Index (BWDRVI)"
* #lwci "Leaf Water Content Index (LWCI)"
* #gvmi "Global Vegetation Moisture Index (GVMI)"
* #gemi "Global Environment Monitoring Index (GEMI)"
* #ndmi "Normalized Difference Moisture Index (NDMI)"
* #lai "Leaf Area Index (LAI)"
* #glai "Green Leaf Area Index (GLAI)"
* #fapar "Fraction of Absorbed PAR (FAPAR)"
* #ndwi "Normalized Difference Water Index (NDWI)"
* #mndwi "Modified Normalized Difference Water Index (mNDWI)"
* #andwi "Augmented Normalized Difference Water Index (ANDWI)"
* #s2wi "Sentinel-2 Water Index (S2WI)"
* #lswi "Land Surface Water Index (LSWI)"
* #ndvi-mndwi-model "NDVI–MNDWI Model"
* #lst "Land Surface Temperature (LST)"
* #blfei "Built-Up Land Features Extraction Index (BLFEI)"
* #brba "Band Ratio for Built-up Area (BRBA)"
* #nbai "Normalized Built-up Area Index (NBAI)"
* #ibi "Index-Based Built-Up Index (IBI)"
* #ebbi "Enhanced Built-Up and Bareness Index (EBBI)"
* #pisi "Perpendicular Impervious Surface Index (PISI)"
* #ui "Urban Index (UI)"
* #vibi "Vegetation Index Built-up Index (VIBI)"
* #ndci "Normalized Difference Chlorophyll Index (NDCI)"
* #mci "Maximum Chlorophyll Index (MCI)"
* #ci-green "Chlorophyll Index Green (CI Green)"


// coded results

* #absent "Absent" "Absent"
* #present "Present" "Present"   
* #extensive "Extensive" "Extensive"


* #several-non-native-species "Several non-native species" "Several non-native species"
* #non-native-species "Non-native species" "Non-native species"
* #unknown-non-native-species "Unknown non-native species" "Unknown non-native species"

* #0-20-percent "0-20%" "0-20%"
* #21-40-percent "21-40%" "21-40%"
* #41-60-percent "41-60%" "41-60%"
* #61-80-percent "61-80%" "61-80%"
* #81-100-percent "81-100%" "81-100%"


* #total-phosphates "Total phosphates" "Total phosphates"
* #zinc-dissolved "Zinc dissolved" "Zinc dissolved"
* #aluminium-dissolved "Aluminium dissolved" "Aluminium dissolved"
* #ammonium "Ammonium" "Ammonium"
* #arsenic-dissolved "Arsenic dissolved" "Arsenic dissolved"
* #chloride "Chloride" "Chloride"
* #copper-dissolved "Copper dissolved" "Copper dissolved"
* #dissolved-oxygen "Dissolved Oxygen" "Dissolved Oxygen"
* #electrical-conductivity "Electrical conductivity" "Electrical conductivity"
* #hydrogen-carbonate-bicarbonate-hco3 "Hydrogen carbonate (Bicarbonate) HCO3" "Hydrogen carbonate (Bicarbonate) HCO3"
* #lead-dissolved "Lead dissolved" "Lead dissolved"
* #magnesium "Magnesium" "Magnesium"
* #manganese-dissolved "Manganese dissolved" "Manganese dissolved"
* #nickel-dissolved "Nickel dissolved" "Nickel dissolved"
* #nitrate "Nitrate" "Nitrate"
* #sodium "Sodium" "Sodium"
* #potassium "Potassium" "Potassium"
* #sulphate "Sulphate" "Sulphate"
* #cadmium-dissolved "Cadmium dissolved" "Cadmium dissolved"
* #calcium "Calcium" "Calcium"
* #carbonates "Carbonates" "Carbonates"
* #chromium-6-plus "Chromium 6+" "Chromium (6 plus)"
* #iron-dissolved "Iron dissolved" "Iron dissolved"
* #phosphates "Phosphates" "Phosphates"
* #silicates "Silicates" "Silicates"
* #nitrite "Nitrite" "Nitrite"
* #ph "pH" "pH"
* #chromium-dissolved "Chromium dissolved" "Chromium dissolved"
* #mercury-dissolved "Mercury dissolved" "Mercury dissolved"