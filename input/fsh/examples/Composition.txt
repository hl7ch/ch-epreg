Instance: 1-CH-EPREG-Composition
InstanceOf: CHEPREGComposition
Title: "1 Composition for CH EPREG document"
Description: "Example for Composition"
Usage: #example
* id = "1-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* status = #final
* type.coding[0] = $sct#404684003  "Maternity care plan (record artifact)"
* subject.reference = "Patient/PetraMeier"
* date = "2011-11-29T11:00:00+01:00"
* author.reference = "PractitionerRole/CHEPREGPractitionerRole"
* title = "Schwangerschaftspass"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
