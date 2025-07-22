
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
* #macrophytes "Macrophytes (aquatic plants)" "Macrophytes (aquatic plants)"

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

