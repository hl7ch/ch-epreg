Instance: UC1-Hematocrit-20250205
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 1: Hematocrit 46 % (05.02.2025)"
Description: "Example for CH EPREG Observation (Lab)"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-LaborPipette)
* valueQuantity = 46 $ucum#% "percent"
