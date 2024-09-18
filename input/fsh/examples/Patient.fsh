Instance: PetraMeier
InstanceOf: CHCorePatient
Usage: #example
Title: "Petra Meier"
Description: "Patient for CH EPREG"

* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension[0].url = "code"
* extension.extension[=].valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"

* extension[1].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-patient-languageOfCorrespondence"
* extension[1].valueCodeableConcept.coding[0].system = "urn:ietf:bcp:47"
* extension[1].valueCodeableConcept.coding[0].code = #de-CH
* extension[1].valueCodeableConcept.coding[0].display = "German (Switzerland)"

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

* communication[0].language = urn:ietf:bcp:47#fr-CH "German (Switzerland)"
* communication[=].preferred = true
* communication[=].extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-languageofcorrespondence"
* communication[=].extension.valueBoolean = false



