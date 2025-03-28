Instance: 84869994-4348-4ad3-95ee-d9b0faf75dba
InstanceOf: ChEpregObservationGestationalAgeInWeeks
Usage: #example
Title: "UC 2: Gestational Age 32 Weeks (27.03.2025)"
Description: "Example for CH EPREG Observation: Gestational Age in Weeks"
* language = #de-CH
* status = #final
* code = $loinc#49051-6 "Gestational age in weeks"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* subject.type = "Patient"
* effectiveDateTime = "2025-03-27"
* performer = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik" // TODO
* performer.type = "PractitionerRole"
* valueQuantity = 32 $ucum#wk "week"
* encounter = Reference(urn:uuid:bcd224d8-010e-4f87-9417-39c859a4043b) "Untersuchung, 27.03.2025"
* encounter.type = "Encounter"
