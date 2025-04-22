Instance: UC1-Creatinine-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Creatinine 1.2 mg/dL (05.02.2025)"
Description: "Example for CH EPREG Observation (Lab)"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 1.2 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#H "High"
