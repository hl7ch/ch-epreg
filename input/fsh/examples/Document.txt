Instance: EPREG-Document
InstanceOf: CHEPREGDocument
Title: "Pregnancy Passport document"
Description: "Example for Bundle"
Usage: #example
* id = "EPREG-document"
* meta.lastUpdated = "2020-02-21T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6b6ed376-a7da-44cb-92d1-e75ce1ae73b0"
* type = #document
* timestamp = "2012-02-04T14:05:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/1-CH-EPREG-Composition"
* entry[=].resource = 1-CH-EPREG-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/PetraMeier"
* entry[=].resource = PetraMeier
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/CHEPREGPractitionerRole"
* entry[=].resource = CHEPREGPractitionerRole
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/PractitionerHansMuster"
* entry[=].resource = PractitionerHansMuster
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/MedicalofficeOrganization"
* entry[=].resource = MedicalofficeOrganization

