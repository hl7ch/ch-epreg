Extension: ChEpregExtExamNumber
Id: ch-epreg-ext-exam-number
Title: "CH EPREG Extension: Examination Number"
Description: "This extension represents the sequential number of a pregnancy-related visit or examination (e.g., 1 = first visit, 2 = second visit, or second ultrasound). It indicates the order of occurrence within the pregnancy."
Context: Encounter, Observation
* . ^short = "CH EPREG Extension: Examination Number"
* value[x] 1..
* value[x] only positiveInt
