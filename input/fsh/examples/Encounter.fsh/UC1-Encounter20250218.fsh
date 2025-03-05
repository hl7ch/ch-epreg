Instance: UC1-EncounterPregVisit20250218
InstanceOf: ChEpregEncounterPregVisit
Usage: #example
Title: "UC 1: Encounter 18.02.2025"
Description: "CH EPREG Encounter: Pregnancy Visit"
* language = #de-CH
// * extension[nextVisit].valueDateTime = ""
* extension[pregnancyObservation][0].valueReference = Reference(UC1-GestationalAgeInWeeks-20250218)
* extension[pregnancyObservation][+].valueReference = Reference(UC1-BodyWeight-20250218)
* status = #finished 
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(UC1-KatrinKinderlieb)
* participant.individual = Reference(UC1-PetraSectionataAtFrauenzimmer)
* period.start = "2025-02-18"
