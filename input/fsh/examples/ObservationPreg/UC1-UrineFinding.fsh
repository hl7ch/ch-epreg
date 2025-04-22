Instance: UC1-UrineFinding-20250205
InstanceOf: ChEpregObservationUrineFinding
Usage: #example
Title: "UC 1: Glucose positive, Nitrite positive (05.02.2025)"
Description: "Example for CH EPREG Observation (Mother): Urine Finding"
* language = #de-CH
* status = #final
* code = $sct#417597005 "Urine dipstick test finding (finding)"
* subject = Reference(UC1-KatrinKinderlieb)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-PetraSectionataAtFrauenzimmer)
* encounter = Reference(UC1-EncounterMother20250205)
* component[glucose].code = $loinc#25428-4 "Glucose [Presence] in Urine by Test strip"
* component[glucose].valueString = "Zucker positiv"
* component[nitrite].code = $loinc#5802-4 "Nitrite [Presence] in Urine by Test strip"
* component[nitrite].valueString = "Nitrit positiv"
