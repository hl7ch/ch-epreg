Instance: e949f912-fc27-4849-8632-09caad9fe897
InstanceOf: ChEpregObservationBloodPressure
Usage: #example
Title: "UC 2: 122/83 mmHg (26.03.2025)"
Description: "Example for CH EPREG Observation: Blood Pressure"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* effectiveDateTime = "2025-03-26"
* performer = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* encounter = Reference(urn:uuid:8e89c502-964f-4234-9728-540d881b0380) "Untersuchung Mutter, 26.03.2025"
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 122 $ucum#mm[Hg] "millimeter of mercury"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 83 $ucum#mm[Hg] "millimeter of mercury"


Instance: 4268bd90-eff8-41f4-a7b4-2178dac0e470 
InstanceOf: ChEpregObservationBloodPressure
Usage: #example
Title: "UC 2: 160/60 mmHg (27.03.2025)"
Description: "Example for CH EPREG Observation: Blood Pressure"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* effectiveDateTime = "2025-03-27"
* performer = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* encounter = Reference(urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f) "Untersuchung Mutter, 27.03.2025"
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 160 $ucum#mm[Hg] "millimeter of mercury"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 60 $ucum#mm[Hg] "millimeter of mercury"
