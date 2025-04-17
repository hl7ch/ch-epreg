Instance: UC1-BloodPressure-20250123
InstanceOf: ChEpregObservationBloodPressure
Usage: #example
Title: "UC 1: 120/80 mmHg (23.01.2025)"
Description: "Example for CH EPREG Observation (Mother): Blood Pressure"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-01-23"
* performer = Reference(UC1-PetraSectionataAtFrauenzimmer)
* encounter = Reference(UC1-EncounterMother20250123)
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 120 $ucum#mm[Hg] "millimeter of mercury"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 80 $ucum#mm[Hg] "millimeter of mercury"


Instance: UC1-BloodPressure-20250205
InstanceOf: ChEpregObservationBloodPressure
Usage: #example
Title: "UC 1: 160/100 mmHg (05.02.2025)"
Description: "Example for CH EPREG Observation (Mother): Blood Pressure"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-PetraSectionataAtFrauenzimmer)
* encounter = Reference(UC1-EncounterMother20250205)
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 160 $ucum#mm[Hg] "millimeter of mercury"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 100 $ucum#mm[Hg] "millimeter of mercury"
