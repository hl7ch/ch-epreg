Instance: 22aeb067-85f9-4b3b-9301-161604005206
InstanceOf: ChEpregEncounterChild
Usage: #example
Title: "UC 2: Visit 26.03.2025"
Description: "Example for CH EPREG Encounter: Child"
* language = #de-CH
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:111d5e66-f17e-4369-90c6-9382e566040e) "Kind"
* participant.individual = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* period.start = "2025-03-26"
* period.end = "2025-03-26"
* partOf = Reference(urn:uuid:8e89c502-964f-4234-9728-540d881b0380) "Untersuchung Mutter, 26.03.2025"


Instance: 833fd8f2-b75f-4dba-990f-6c46aa468d51
InstanceOf: ChEpregEncounterChild
Usage: #example
Title: "UC 2: Visit 27.03.2025"
Description: "Example for CH EPREG Encounter: Child"
* language = #de-CH
// * extension[nextVisit].valueDateTime = ""
* status = #finished 
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(urn:uuid:111d5e66-f17e-4369-90c6-9382e566040e) "Kind"
* participant.individual = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* period.start = "2025-03-27"
* partOf = Reference(urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f) "Untersuchung Mutter, 27.03.2025"

