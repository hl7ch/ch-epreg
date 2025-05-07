Instance: UC1-RelatedPerson-BiologicalFather
InstanceOf: ChEpregRelatedPersonParent
Usage: #example
Title: "UC 1: RelatedPerson Biological Father"
Description: "Example for CH EPREG RelatedPerson: Parent"
* language = #de-CH
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland" 
* extension[note].valueString = "Bemerkung"
* patient = Reference(UC1-Child)
* relationship = $sct#9947008 "Natural father (person)"
* name.family = "Kinderlieb"
* name.given = "Pierre"
* birthDate = "1987-07-21"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#de-CH "German (Switzerland)" 
