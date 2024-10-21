Instance: MedicalofficeOrganization
InstanceOf: CHEPREGOrganization
Title: "Medical office Organization Example"
Description: "An example of an organization"

* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[0].value = "7601888888884"

* name = "Arztpraxis CH"

* telecom[0].system = #phone
* telecom[0].value = "tel:+41.32.234.55.66"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "mailto:bereit@gruppenpraxis.ch"
* telecom[1].use = #work

* address[0].line[0] = "Doktorgasse 2"
* address[0].city = "Musterhausen"
* address[0].state = "ZH"
* address[0].postalCode = "8888"
* address[0].country = "CH"