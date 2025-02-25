Instance: PetraMeier
InstanceOf: CHEPREGPatient
Usage: #example
Title: "Petra Meier"
Description: "Patient for CH EPREG"

* meta.profile[0] = "http://example.org/fhir/StructureDefinition/ch-epreg-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension[0].url = "code"
* extension.extension[=].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"

* extension[1].url = "http://hl7.org/fhir/StructureDefinition/job-position"
* extension[1].valueString = "Software Engineer"

* name
  * family = "Meier"
  * given = "Petra"
* gender = #female
* birthDate = "2000-11-08"

* address
  * use = #home
  * line = "Schwarzenburgstrasse 157"
  * city = "Liebefeld"
  * postalCode = "3097"
  * state = "BE"
  * country = "Switzerland"
  * country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
  * country.extension.valueCoding = urn:iso:std:iso:3166#CH

* communication
  * language = urn:ietf:bcp:47#de-CH
  * language.text = "Deutsch (Schweiz)"
  * preferred = true

* identifier
  * system = "urn:oid:2.16.756.5.32"
  * value = "7562295883077"

* telecom[0].system = #phone
* telecom[=].value = "+41 32 331 61 11"
* telecom[=].use = #home

* telecom[1].system = #phone
* telecom[=].value = "+41 78 111 61 11"
* telecom[=].use = #mobile

* telecom[+].system = #email
* telecom[=].value = "petra@meier.ch"

//Eltern
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* contact[0].relationship.coding.code = #PRN
* contact[0].relationship.coding.display = "Parent"
* contact[0].name.family = "Meier"
* contact[0].name.given[0] = "Max"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+41 44 123 45 67"
* contact[0].telecom[0].use = #home
* contact[0].address.line[0] = "Beispielstrasse 10"
* contact[0].address.city = "Zürich"
* contact[0].address.postalCode = "8000"
* contact[0].address.country = "Schweiz"
* contact[0].address.use = #home
//* contact[0].relationship[0].extension[0].url = "http://fhir.ch/ig/ch-epreg/StructureDefinition/contact-parent-birthdate"
//* contact[0].relationship[0].extension[0].valueDate = "1975-05-12"

//Notfallkontakt
* contact[1].relationship.coding.system = "http://hl7.org/fhir/CodeSystem/patient-contactrelationship"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[1].name.family = "Meier"
* contact[1].name.given[0] = "Max"
* contact[1].telecom[0].system = #phone
* contact[1].telecom[0].value = "+41 44 123 45 67"
* contact[1].telecom[0].use = #home
* contact[1].telecom[1].system = #phone
* contact[1].telecom[1].value = "+41 79 111 11 11"
* contact[1].telecom[1].use = #mobile
* contact[1].telecom[2].system = #phone
* contact[1].telecom[2].value = "+41 44 765 43 21"
* contact[1].telecom[2].use = #work
* contact[1].address.line[0] = "Beispielstrasse 10"
* contact[1].address.city = "Zürich"
* contact[1].address.postalCode = "8000"
* contact[1].address.country = "Schweiz"
* contact[1].address.use = #home

//Beistand
* contact[2].relationship.coding.system = "http://hl7.org/fhir/CodeSystem/patient-contactrelationship"
* contact[2].relationship.coding.code = #B
* contact[2].relationship.coding.display = "Beistand"
* contact[2].name.family = "Beistand"
* contact[2].name.given[0] = "Maximus"
* contact[2].telecom[0].system = #phone
* contact[2].telecom[0].value = "+41 44 123 45 67"
* contact[2].telecom[0].use = #home
* contact[2].telecom[1].system = #phone
* contact[2].telecom[1].value = "+41 79 111 11 11"
* contact[2].telecom[1].use = #mobile
* contact[2].telecom[2].system = #phone
* contact[2].telecom[2].value = "+41 44 765 43 21"
* contact[2].telecom[2].use = #work
* contact[2].telecom[2].system = #email
* contact[2].telecom[2].value = "beistand@epreg.ch"
* contact[2].address.line[0] = "Beispielstrasse 10"
* contact[2].address.city = "Zürich"
* contact[2].address.postalCode = "8000"
* contact[2].address.country = "Schweiz"
* contact[2].address.use = #home