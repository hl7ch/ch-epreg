Instance: bcd224d8-010e-4f87-9417-39c859a4043b
InstanceOf: ChEpregEncounterPregVisit
Usage: #example
Title: "UC 2: Encounter 27.03.2025"
Description: "CH EPREG Encounter: Pregnancy Visit"
* language = #de-CH
// * extension[nextVisit].valueDateTime = ""
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory" // TODO
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd)
* subject.display = "Fabienne Babyglück"
* subject.type = "Patient"
* participant.individual = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) // TODO
* participant.individual.display = "Tanja Allesgut @ Geburtsklinik"
* participant.individual.type = "PractitionerRole"
* period.start = "2025-03-27"
