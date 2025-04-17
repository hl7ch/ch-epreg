Extension: ChEpregExtNumber
Id: ch-epreg-ext-number
Title: "CH EPREG Extension: Number"
Description: "This extension represents the number, for example, the number of the visit or an examination (e.g. ultrasound)."
Context: Encounter, Observation
* . ^short = "CH EPREG Extension: Number"
* value[x] 1..
* value[x] only positiveInt
