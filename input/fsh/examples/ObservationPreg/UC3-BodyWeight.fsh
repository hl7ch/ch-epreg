Instance: UC3-BodyWeight-20250210
InstanceOf: ChEpregObservationBodyWeight
Usage: #example
Title: "UC 3: 64 kg (10.02.2025)"
Description: "Example for CH EPREG Observation (Mother): Body Weight"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(UC3-SophieDoppelherz)
* effectiveDateTime = "2025-02-10"
* performer = Reference(UC3-ClaudiaFruehblickAtFrauenzimmer)
* valueQuantity = 64 $ucum#kg "kilogram"
* encounter = Reference(UC3-EncounterMother20250210)
