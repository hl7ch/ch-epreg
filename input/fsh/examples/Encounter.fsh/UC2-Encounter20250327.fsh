Instance: 1ba6df42-ae1a-4b4a-886f-33d6b2223b1f
InstanceOf: ChEpregEncounterPregVisit
Usage: #example
Title: "UC 2: Encounter 27.03.2025"
Description: "Example for CH EPREG Encounter: Pregnancy Visit"
* language = #de-CH
// * extension[nextVisit].valueDateTime = ""
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory" // TODO
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* participant.individual = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik" // TODO
* period.start = "2025-03-27"
