Instance: UC1-Platelets-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Platelets 130 (05.02.2025)"
Description: "Example for CH EPREG Observation (Lab)"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 130 $ucum#10*3/uL "Thousands Per MicroLiter"
