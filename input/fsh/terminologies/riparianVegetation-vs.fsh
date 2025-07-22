ValueSet: RiparianVegetationCodeOahVs
Id: riparian-vegetation-code-oah-vs
Title: "OAH Riparian Vegetation Indicator Codes"
Description: """This Value Set is used to identify the indicators adopted by this project."""

* ^experimental = false

* TemporaryOahSystem#riparianVegetation "Riparian vegetation"
* TemporaryOahSystem#trees "Trees (height >3m)"
* TemporaryOahSystem#bushes "Bushes (height (1.5-3m)"
* TemporaryOahSystem#herbaceous "Herbaceous (height < 1.5m)"

ValueSet: RiparianVegetationValueOahVs
Id: riparian-vegetation-value-oah-vs
Title: "OAH Riparian Vegetation Indicator Values"
Description: """This Value Set is used to identify the indicators adopted by this project."""

* TemporaryOahSystem#0-20-percent "0-20%"
* TemporaryOahSystem#21-40-percent "21-40%"
* TemporaryOahSystem#41-60-percent "41-60%"
* TemporaryOahSystem#61-80-percent "61-80%"
* TemporaryOahSystem#81-100-percent "81-100%"
