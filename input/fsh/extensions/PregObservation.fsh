Extension: ChEpregExtPregObservation
Id: ch-epreg-ext-preg-observation
Title: "CH EPREG Extension: Pregnancy Observation"
Description: "This extension represents the observation done during a pregnancy visit within the context of the pregnancy passport."
Context: Encounter
* . ^short = "CH EPREG Extension: Pregnancy Observation"
* value[x] 1..
* value[x] only Reference(ChEpregObservationPregProgress)
