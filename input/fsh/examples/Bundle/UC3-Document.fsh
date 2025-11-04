Instance: UC3-Document
InstanceOf: ChEpregDocument
Usage: #example
Title: "UC 3: Pregnancy Passport"
Description: "Example for CH EPREG Document"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"
* type = #document
* timestamp = "2025-02-10T15:45:00+01:00"

* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/UC3-Composition"
* entry[=].resource = UC3-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC3-SophieDoppelherz"
* entry[=].resource = UC3-SophieDoppelherz
* entry[+].fullUrl = "http://test.fhir.ch/r4/RelatedPerson/UC3-RelatedPerson-ChildA-Mother"
* entry[=].resource = UC3-RelatedPerson-ChildA-Mother
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC3-ChildA"
* entry[=].resource = UC3-ChildA
* entry[+].fullUrl = "http://test.fhir.ch/r4/RelatedPerson/UC3-RelatedPerson-ChildB-Mother"
* entry[=].resource = UC3-RelatedPerson-ChildB-Mother
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC3-ChildB"
* entry[=].resource = UC3-ChildB

* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/UC3-ClaudiaFruehblickAtFrauenzimmer"
* entry[=].resource = UC3-ClaudiaFruehblickAtFrauenzimmer
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/UC3-ClaudiaFruehblick"
* entry[=].resource = UC3-ClaudiaFruehblick
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/UC3-Frauenzimmer"
* entry[=].resource = UC3-Frauenzimmer

// Mother
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC3-EncounterMother20250210"
* entry[=].resource = UC3-EncounterMother20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-GestationalAgeInDays-20250210"
* entry[=].resource = UC3-GestationalAgeInDays-20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-BodyWeight-20250210"
* entry[=].resource = UC3-BodyWeight-20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-BloodPressure-20250210"
* entry[=].resource = UC3-BloodPressure-20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-UrineFinding-20250210"
* entry[=].resource = UC3-UrineFinding-20250210

// Child A
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC3-EncounterChildA20250210"
* entry[=].resource = UC3-EncounterChildA20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-FetalHeartFeatureChildA-20250210"
* entry[=].resource = UC3-FetalHeartFeatureChildA-20250210

// Child B
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC3-EncounterChildB20250210"
* entry[=].resource = UC3-EncounterChildB20250210
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC3-FetalHeartFeatureChildB-20250210"
* entry[=].resource = UC3-FetalHeartFeatureChildB-20250210
