Instance: UC3-ClaudiaFruehblickAtFrauenzimmer
InstanceOf: ChEpregPractitionerRoleTHCP
Usage: #example
Title: "UC 3: Claudia Frühblick @ Frauenzimmer"
Description: "Example for CH EPREG PractitionerRole"
* language = #de-CH
* practitioner = Reference(UC3-ClaudiaFruehblick)
* organization = Reference(UC3-Frauenzimmer)
* code = $sct#309343006 "Arzt/Ärztin"
* specialty = $medreg#1003 "Gynäkologie und Geburtshilfe"


Instance: UC3-ClaudiaFruehblick
InstanceOf: ChEpregPractitionerTHCP
Usage: #example
Title: "UC 3: Claudia Frühblick"
Description: "Example for CH EPREG Practitioner: Treating Healthcare Provider"
* language = #de-CH
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000239891"
* name.family = "Frühblick"
* name.given = "Claudia"
* name.prefix = "Dr. med."


Instance: UC3-Frauenzimmer
InstanceOf: ChEpregOrganizationTHCP
Usage: #example
Title: "UC 3: Frauenzimmer"
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
* telecom[phone][=].use = #work
* telecom[phone][=].value = "+41 44 444 44 44"
