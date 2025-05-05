Instance: UC1-Document
InstanceOf: ChEpregDocument
Usage: #example
Title: "UC 1: Pregnancy Passport"
Description: "Example for CH EPREG Document - using absolute URLs for fullUrls/references"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"
* type = #document
* timestamp = "2025-02-05T10:34:00+01:00"

* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/UC1-Composition"
* entry[=].resource = UC1-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC1-KatrinKinderlieb"
* entry[=].resource = UC1-KatrinKinderlieb
* entry[+].fullUrl = "http://test.fhir.ch/r4/RelatedPerson/UC1-RelatedPerson-Mother"
* entry[=].resource = UC1-RelatedPerson-Mother
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/UC1-Child"
* entry[=].resource = UC1-Child

* entry[+].fullUrl = "http://test.fhir.ch/r4/Coverage/UC1-BasicInsurance"
* entry[=].resource = UC1-BasicInsurance
* entry[+].fullUrl = "http://test.fhir.ch/r4/Coverage/UC1-SupplementaryInsurance"
* entry[=].resource = UC1-SupplementaryInsurance


* entry[+].fullUrl = "http://test.fhir.ch/r4/RelatedPerson/UC1-RelatedPerson-BiologicalFather"
* entry[=].resource = UC1-RelatedPerson-BiologicalFather

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
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-FetalRhD-20250205"
* entry[=].resource = UC1-FetalRhD-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Creatinine-20250205"
* entry[=].resource = UC1-Creatinine-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Urate-20250205"
* entry[=].resource = UC1-Urate-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GFR-20250205"
* entry[=].resource = UC1-GFR-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GGT-20250205"
* entry[=].resource = UC1-GGT-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-AST-20250205"
* entry[=].resource = UC1-AST-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-ALAT-20250205"
* entry[=].resource = UC1-ALAT-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-AP-20250205"
* entry[=].resource = UC1-AP-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GlucoseLab-20250205"
* entry[=].resource = UC1-GlucoseLab-20250205

* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Hematocrit-20250205"
* entry[=].resource = UC1-Hematocrit-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-Platelets-20250205"
* entry[=].resource = UC1-Platelets-20250205

* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterMother20250205"
* entry[=].resource = UC1-EncounterMother20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterMother20250123"
* entry[=].resource = UC1-EncounterMother20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterChild20250205"
* entry[=].resource = UC1-EncounterChild20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Encounter/UC1-EncounterChild20250123"
* entry[=].resource = UC1-EncounterChild20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GestationalAgeInDays-20250205"
* entry[=].resource = UC1-GestationalAgeInDays-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-GestationalAgeInDays-20250123"
* entry[=].resource = UC1-GestationalAgeInDays-20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BodyWeight-20250205"
* entry[=].resource = UC1-BodyWeight-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BodyWeight-20250123"
* entry[=].resource = UC1-BodyWeight-20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-WeightGain-20250205"
* entry[=].resource = UC1-WeightGain-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-WeightGain-20250123"
* entry[=].resource = UC1-WeightGain-20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BloodPressure-20250205"
* entry[=].resource = UC1-BloodPressure-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-BloodPressure-20250123"
* entry[=].resource = UC1-BloodPressure-20250123
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-UrineFinding-20250205"
* entry[=].resource = UC1-UrineFinding-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-AbdominalCircumference-20250205"
* entry[=].resource = UC1-AbdominalCircumference-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-FundusHeight-20250205"
* entry[=].resource = UC1-FundusHeight-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-VaginaFeature-20250205"
* entry[=].resource = UC1-VaginaFeature-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-FetalMovement-20250205"
* entry[=].resource = UC1-FetalMovement-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-FetalHeartFeature-20250205"
* entry[=].resource = UC1-FetalHeartFeature-20250205
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/UC1-FetalPosition-20250205"
* entry[=].resource = UC1-FetalPosition-20250205
