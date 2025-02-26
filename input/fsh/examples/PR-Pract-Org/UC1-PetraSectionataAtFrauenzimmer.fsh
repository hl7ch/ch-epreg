Instance: UC1-PetraSectionataAtFrauenzimmer
InstanceOf: ChEpregPractitionerRoleTHCP
Usage: #example
Title: "UC 1: Petra Sectionata @ Frauenzimmer"
Description: "Example for CH EPREG PractitionerRole"
* language = #de-CH
* practitioner = Reference(UC1-PetraSectionata)
* organization = Reference(UC1-Frauenzimmer)
* code = $sct#309343006 "Arzt / Ärztin"
* specialty = $medreg#1003 "Gynäkologie und Geburtshilfe"


Instance: UC1-PetraSectionata
InstanceOf: ChEpregPractitionerTHCP
Usage: #example
Title: "UC 1: Petra Sectionata"
Description: "Example for CH EPREG Practitioner: Treating Healthcare Provider"
* language = #de-CH
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7610000050719"
* name.family = "Sectionata"
* name.given = "Petra"
* name.prefix = "Dr. med."


Instance: UC1-Frauenzimmer
InstanceOf: ChEpregOrganizationTHCP
Usage: #example
Title: "UC 1: Frauenzimmer"
Description: "Example for CH EPREG Organization: Treating Healthcare Provider"
* language = #de-CH
* name = "Frauenzimmer"

/*
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