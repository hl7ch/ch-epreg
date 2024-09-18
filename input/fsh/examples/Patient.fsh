Instance: PetraMeier
InstanceOf: CHCorePatient
Usage: #example
Title: "Petra Meier"
Description: "Patient for CH EPREG"

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension[0].valueCoding = urn:iso:std:iso:3166#CH "Schweiz"

* extension[1].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-patient-languageOfCorrespondence"
* extension[1].valueCodeableConcept.coding[0].system = "urn:ietf:bcp:47"
* extension[1].valueCodeableConcept.coding[0].code = #de-CH
* extension[1].valueCodeableConcept.coding[0].display = "Deutsch (Schweiz)"

* name
  * family = "Meier"
  * given = "Petra"
* gender = #female
* birthDate = "2000-11-08"

* address
  * use = #home
  * line = "Kreuzweg 11"
  * city = "Biel/Bienne"
  * postalCode = "2500"
  * state = "BE"
  * country = "Schweiz"
  * country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
  * country.extension.valueCoding = urn:iso:std:iso:3166#CH





