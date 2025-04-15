Instance: UC1-GlucoseLab-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Glucose Lab 8.1 mmol/L (05.02.2025)"
Description: "Example for CH EPREG Observation: Results Laboratory"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14771-0 "Fasting glucose [Moles/volume] in Serum or Plasma"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 8.1 $ucum#mmol/L "millimole per liter"
