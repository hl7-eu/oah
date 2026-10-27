CodeSystem: SecondLookCS
Id: second-look
Title: "Second Look codes"
Description: """Codes for the four stream features a volunteer is tested on, the answer a person cannot give, the test itself, and the coded form answers that have no OneAquaHealth code. Everything else reuses the OneAquaHealth temporary code system."""
* ^url = "https://github.com/alejandro-publius/second-look/fhir/CodeSystem/second-look"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #artificial-bank "Artificial bank" "A built bank: concrete walls, stones set in concrete, or other constructed edges."
* #dug-out-channel "Dug-out channel" "A channel that was deepened or straightened: even sloped banks, a straightened course, the same width all along, slow flat water."
* #invasive-plant "Invasive plant" "A non-native or invasive plant species present on the bank or in the channel."
* #pipe-running "Pipe running" "A pipe or outlet with flow, or sewage signs such as staining or grey water."
* #cant-tell "Can't tell" "The observer could not decide from what they saw."
* #second-look-test "Second Look observer test" "A two minute photo test on the four features, scored per feature out of 4."
* #software "Second Look software" "The Second Look application acting as an agent."
// Coded answers from the creek check form (content/form.yaml) that the OneAquaHealth system has no code for.
* #flat "Flat channel" "Channel form: flat."
* #u-shape "U shaped channel" "Channel form: U shape."
* #v-shape "V shaped channel" "Channel form: V shape."
* #fast "Fast flow" "Water flow: fast, with waves or high velocity."
* #slow "Slow flow" "Water flow: slow."
* #stagnant "Stagnant or intermittent flow" "Water flow: stagnant or intermittent."
* #dry "Dry channel" "Water flow: none, the channel is dry."
* #sand-banks "Sand banks" "Habitat: sand banks."
* #sand-islands "Sand islands" "Habitat: sand islands."
* #stone-deposits "Stone deposits" "Habitat: stone deposits."
* #riffles "Riffles, rapids or falls" "Habitat: riffles, rapids or falls."
* #aquatic-vegetation "Aquatic vegetation" "Habitat: aquatic vegetation."
* #fallen-trees "Fallen trees" "Natural debris: fallen trees."
* #fallen-branches "Fallen branches" "Natural debris: fallen branches."
* #leaf-deposits "Deposits of fallen leaves" "Natural debris: deposits of fallen leaves."
* #good "Good overall rating" "Overall rating: the ecosystem components are there."
* #moderate "Moderate overall rating" "Overall rating: some alterations, still biodiverse."
* #poor "Poor overall rating" "Overall rating: highly modified, loss of vegetation and habitats, polluted."
// The referral and the way back (core/fhir_referral.py). A ServiceRequest asks a city to test a pipe
// two people who passed the pipe feature saw running in dry weather. The laboratory codes name the
// measures in the example result that shows how a result would return to the same record.
* #test-pipe-outflow "Test the water coming out of this pipe" "A request to sample and test the water leaving a pipe reported running in dry weather."
* #example "Example, not a real result" "A tag on any resource that exists only to show the shape of a record. Never counted."
* #lab-enterobacteriaceae-share "Enterobacteriaceae, share of 16S reads" "Share of 16S rRNA sequencing reads assigned to Enterobacteriaceae, in percent."
* #lab-hf183 "Human faecal marker HF183" "The HF183 Bacteroides marker of human faecal pollution, present or absent."
* #lab-ecoli-cfu "Escherichia coli, colony forming units" "Escherichia coli by culture, colony forming units per 100 mL."

ValueSet: SecondLookFeatureVS
Id: second-look-feature-vs
Title: "Second Look feature codes"
Description: "The four features an observer answers about."
* ^status = #draft
* SecondLookCS#artificial-bank
* SecondLookCS#dug-out-channel
* SecondLookCS#invasive-plant
* SecondLookCS#pipe-running

ValueSet: SecondLookAnswerVS
Id: second-look-answer-vs
Title: "Second Look answer values"
Description: "Present and absent come from the OneAquaHealth temporary code system. Can't tell is ours."
* ^status = #draft
* TemporaryOahSystem#present
* TemporaryOahSystem#absent
* SecondLookCS#cant-tell
