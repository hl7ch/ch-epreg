Instance: UC1-Urate-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Urate 6.3 mg/dL (05.02.2025)"
Description: "Example for CH EPREG Observation: Results Laboratory"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#3084-1 "Urate [Mass/volume] in Serum or Plasma"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 6.3 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#H "High"
