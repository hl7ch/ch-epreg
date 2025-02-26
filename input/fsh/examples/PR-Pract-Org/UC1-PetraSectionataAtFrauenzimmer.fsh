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
* address.line = "Zimmergasse 1"
* address.postalCode = "8888"
* address.city = "Musterhausen" 
* address.country = "Schweiz"
* telecom[email].system = #email 
* telecom[email].value = "frauenzimmer@example.com"
* telecom[phone][0].system = #phone
* telecom[phone][=].use = #mobile
* telecom[phone][=].value = "+41 79 444 44 44"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #work
* telecom[phone][=].value = "+41 44 444 44 44"
