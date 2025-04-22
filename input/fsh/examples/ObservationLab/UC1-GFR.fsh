Instance: UC1-GFR-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: GFR 54 mL/min (05.02.2025)"
Description: "Example for CH EPREG Observation (Lab)"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#62238-1	"Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI)/1.73 sq M"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 54 $ucum#mL/min/1.73.m2 "milliliter per minute per 1.73 square meter"
