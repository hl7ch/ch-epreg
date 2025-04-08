Instance: UC1-EncounterPregVisit20250205
InstanceOf: ChEpregEncounterPregVisit
Usage: #example
Title: "UC 1: Encounter 05.02.2025"
Description: "Example for CH EPREG Encounter: Pregnancy Visit"
* language = #de-CH
* extension[nextVisit].valueDateTime = "2025-02-18"
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(UC1-KatrinKinderlieb)
* participant.individual = Reference(UC1-PetraSectionataAtFrauenzimmer)
* period.start = "2025-02-05"
* period.end = "2025-02-05"


Instance: UC1-EncounterPregVisit20250218
InstanceOf: ChEpregEncounterPregVisit
Usage: #example
Title: "UC 1: Encounter 18.02.2025"
Description: "Example for CH EPREG Encounter: Pregnancy Visit"
* language = #de-CH
// * extension[nextVisit].valueDateTime = ""
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(UC1-KatrinKinderlieb)
* participant.individual = Reference(UC1-PetraSectionataAtFrauenzimmer)
* period.start = "2025-02-18"
* period.end = "2025-02-18"
