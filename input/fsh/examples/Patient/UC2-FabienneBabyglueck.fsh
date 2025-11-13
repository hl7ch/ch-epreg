Instance: 76c2c5aa-3d7f-438d-b23d-56ce827695fd
InstanceOf: ChEpregPatientMother
Usage: #example
Title: "UC 2: Fabienne Babyglück"
Description: "Example for CH EPREG Patient: Mother"
* language = #de-CH
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"
* extension[pronoun].extension[value].valueCodeableConcept = $loinc#LA29519-8 "she/her/her/hers/herself"
// * identifier[AHVN13]
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756098765432100000"
* name.text = "Fabienne Madeleine Babyglück"
* name.family = "Babyglück"
* name.given[0] = "Fabienne"
* name.given[+] = "Madeleine"
* telecom[email].system = #email 
* telecom[email].value = "fabienne.babyglueck@example.com"
* telecom[phone][0].system = #phone
* telecom[phone][=].use = #home
* telecom[phone][=].value = "+41 66 666 66 66"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #mobile
* telecom[phone][=].value = "+41 79 987 65 43"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #work
* telecom[phone][=].value = "+41 43 434 34 34"
* gender = #female
* birthDate = "1999-05-10"
* address.line = "Mustergasse 1"
* address.postalCode = "8000"
* address.city = "Zürich" 
* address.country = "Schweiz"
* communication.language = urn:ietf:bcp:47#de-CH "German (Switzerland)"
* link[child].other = Reference(urn:uuid:67d0e290-21b9-4255-9182-5fe9f21cdbb4) "RelatedPerson Fabienne Babyglück"
* link[child].type = #seealso
* contact[guardian][0].relationship = $v3-RoleCode#GUARD "guardian"
* contact[guardian][=].name.family = "Beistand"
* contact[guardian][=].name.given = "Marius"
* contact[guardian][=].telecom[email].system = #email 
* contact[guardian][=].telecom[email].value = "marius.beistand@example.com"
* contact[guardian][=].telecom[phone][0].system = #phone
* contact[guardian][=].telecom[phone][=].use = #home
* contact[guardian][=].telecom[phone][=].value = "+41 99 999 99 99"
* contact[guardian][=].telecom[phone][+].system = #phone
* contact[guardian][=].telecom[phone][=].use = #mobile
* contact[guardian][=].telecom[phone][=].value = "+41 79 777 77 77"
* contact[guardian][=].telecom[phone][+].system = #phone
* contact[guardian][=].telecom[phone][=].use = #work
* contact[guardian][=].telecom[phone][=].value = "+41 88 888 88 88"
