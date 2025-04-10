Instance: UC1-KatrinKinderlieb
InstanceOf: ChEpregPatientMother
Usage: #example
Title: "UC 1: Katrin Kinderlieb"
Description: "Example for CH EPREG Patient: Mother"
* language = #de-CH
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"
* extension[pronoun].extension[value].valueCodeableConcept = $loinc#LA29519-8 "she/her/her/hers/herself"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756015090002647590"
* name.text = "Frau Katrin Kinderlieb"
* name.family = "Kinderlieb"
* name.given = "Katrin"
* name.prefix = "Frau"
* telecom[email].system = #email 
* telecom[email].value = "katrin.kinderlieb@example.com"
* telecom[phone][0].system = #phone
* telecom[phone][=].use = #home
* telecom[phone][=].value = "+41 33 333 33 33"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #mobile
* telecom[phone][=].value = "+41 79 123 45 67"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #work
* telecom[phone][=].value = "+41 45 454 54 54"
* gender = #female
* birthDate = "1986-01-18"
* address.line = "Musterstrasse 1"
* address.postalCode = "8000"
* address.city = "Zürich" 
* address.country = "Schweiz"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#de-CH "German (Switzerland)"
* link[fetus].other = Reference(UC1-RelatedPerson-Mother)
* link[fetus].type = #seealso
