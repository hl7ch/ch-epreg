Extension: ChEpregExtExaminationSequence
Id: ch-epreg-ext-examination-sequence
Title: "CH EPREG Extension: Examination Sequence"
Description: "This extension represents the sequential number of a pregnancy-related examination (e.g., 1 = first visit, 2 = second visit, or second ultrasound). It indicates the order of occurrence within the pregnancy."
Context: Encounter, Observation
* . ^short = "CH EPREG Extension: Examination Sequence"
* value[x] 1..
* value[x] only positiveInt
