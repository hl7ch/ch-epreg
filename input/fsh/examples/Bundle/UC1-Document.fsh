Instance: UC1-Document
InstanceOf: ChEpregDocument
Usage: #example
Title: "UC 1: Pregnancy Passport"
Description: "Example for CH EPREG Document - using absolute URLs for fullUrls/references"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"
* type = #document
* timestamp = "2025-02-18T10:34:00+01:00"

* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/UC1-Composition"
* entry[=].resource = UC1-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC1-KatrinKinderlieb"
* entry[=].resource = UC1-KatrinKinderlieb

* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/UC1-PetraSectionataAtFrauenzimmer"
* entry[=].resource = UC1-PetraSectionataAtFrauenzimmer
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/UC1-PetraSectionata"
* entry[=].resource = UC1-PetraSectionata
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/UC1-Frauenzimmer"
* entry[=].resource = UC1-Frauenzimmer

* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/UC1-LaborPipette"
* entry[=].resource = UC1-LaborPipette
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BloodGroup-20250205"
* entry[=].resource = UC1-BloodGroup-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Urate-20250205"
* entry[=].resource = UC1-Urate-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Creatinine-20250205"
* entry[=].resource = UC1-Creatinine-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-AST-20250205"
* entry[=].resource = UC1-AST-20250205


* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterPregVisit20250205"
* entry[=].resource = UC1-EncounterPregVisit20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GestationalAgeInWeeks-20250205"
* entry[=].resource = UC1-GestationalAgeInWeeks-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BodyWeight-20250205"
* entry[=].resource = UC1-BodyWeight-20250205

* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterPregVisit20250218"
* entry[=].resource = UC1-EncounterPregVisit20250218
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GestationalAgeInWeeks-20250218"
* entry[=].resource = UC1-GestationalAgeInWeeks-20250218
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BodyWeight-20250218"
* entry[=].resource = UC1-BodyWeight-20250218