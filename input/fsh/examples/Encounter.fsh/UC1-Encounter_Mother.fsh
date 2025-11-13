Instance: UC1-EncounterMother20250123
InstanceOf: ChEpregEncounterMother
Usage: #example
Title: "UC 1: Examination 23.01.2025"
Description: "Example for CH EPREG Encounter: Mother"
* language = #de-CH
* extension[examinationSequence].valuePositiveInt = 7
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(UC1-KatrinKinderlieb)
* participant.individual = Reference(UC1-PetraSectionataAtFrauenzimmer)
* period.start = "2025-01-23"
* period.end = "2025-01-23"


Instance: UC1-EncounterMother20250205
InstanceOf: ChEpregEncounterMother
Usage: #example
Title: "UC 1: Examination 05.02.2025"
Description: "Example for CH EPREG Encounter: Mother"
* language = #de-CH
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(UC1-KatrinKinderlieb)
* participant.individual = Reference(UC1-PetraSectionataAtFrauenzimmer)
* period.start = "2025-02-05"
* period.end = "2025-02-05"
