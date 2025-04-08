Instance: UC1-ALAT-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Alanine Aminotransferase (05.02.2025)"
Description: "Example for CH EPREG Observation: Results Laboratory"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#LP15333-5 "Alanine aminotransferase"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 98 $ucum#U/L "enzyme unit per liter"
