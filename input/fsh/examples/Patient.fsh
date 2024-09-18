Instance: PetraMeier
InstanceOf: CHCorePatient
Usage: #example
Title: "Petra Meier"
Description: "Patient for CH EPREG"

* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension[0].url = "code"
* extension.extension[=].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"

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

* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7562295883077"

* telecom[0].system = #phone
* telecom[=].value = "+41 32 331 61 11"
* telecom[=].use = #home
* telecom[0].system = #phone
* telecom[=].value = "+41 78 111 61 11"
* telecom[=].use = #mobil
* telecom[+].system = #email
* telecom[=].value = "petra@meier.ch"