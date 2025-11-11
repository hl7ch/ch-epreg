Instance: UC3-BloodPressure-20250210
InstanceOf: ChEpregObservationBloodPressure
Usage: #example
Title: "UC 3: 120/75 mmHg (10.02.2025)"
Description: "Example for CH EPREG Observation (Mother): Blood Pressure"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(UC3-SophieDoppelherz)
* effectiveDateTime = "2025-02-10"
* performer = Reference(UC3-ClaudiaFruehblickAtFrauenzimmer)
* encounter = Reference(UC3-EncounterMother20250210)
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 120 $ucum#mm[Hg] "millimeter of mercury"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 75 $ucum#mm[Hg] "millimeter of mercury"
