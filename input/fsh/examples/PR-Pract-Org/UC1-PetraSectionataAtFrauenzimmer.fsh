Instance: UC1-PetraSectionataAtFrauenzimmer
InstanceOf: ChEpregPractitionerRole
Usage: #example
Title: "Petra Sectionata @ Frauenzimmer"
Description: "Example for CH EPREG PractitionerRole"

//* practitioner = Reference(UC1-PetraSectionata)
//* organization = Reference(UC1-Frauenzimmer)
* code = $sct#309343006 "Physician"
* specialty = urn:oid:2.16.756.5.30.1.127.3.5#1040 "General medical practitioner"
/*
Gynökologe/Gynäkologin
Name: Petra Sectionata
Mobile: +41 44 123 45 67
Praxis: Frauenzimmer



Instance: PractitionerHansMuster
InstanceOf: CHEPREGPractitioner
Usage: #example
Title: "Hans Muster"
Description: "Example for Practitioner"

* name[0].family = "Muster"
* name[0].given[0] = "Hans"
* name[0].prefix[0] = "Dr."
* name[0].suffix[0] = "MED"
* name[0].use = #official
  
* identifier
  * system = "urn:oid:2.51.1.3"
  * value = "7610000050719"




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
*/