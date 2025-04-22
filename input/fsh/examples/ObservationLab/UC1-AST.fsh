Instance: UC1-AST-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: AST 43 U/L (05.02.2025)"
Description: "Example for CH EPREG Observation (Lab)"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 43 $ucum#U/L "enzyme unit per liter"
