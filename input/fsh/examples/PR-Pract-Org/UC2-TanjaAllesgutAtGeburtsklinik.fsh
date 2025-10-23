Instance: 89029102-999c-4b69-a836-e4dbfbd55527
InstanceOf: ChEpregPractitionerRoleTHCP
Usage: #example
Title: "UC 2: Tanja Allesgut @ Geburtsklinik"
Description: "Example for CH EPREG PractitionerRole"
* language = #de-CH
* practitioner = Reference(urn:uuid:a61d6a0b-ee42-443e-92e5-167d2e42f137) "Tanja Allesgut"
* organization = Reference(urn:uuid:fbe019f1-6574-40be-940f-d03da0c743db) "Geburtsklinik"
* code = $sct#309343006 "Arzt/Ärztin"
* specialty = $medreg#1003 "Gynäkologie und Geburtshilfe"


Instance: a61d6a0b-ee42-443e-92e5-167d2e42f137
InstanceOf: ChEpregPractitionerTHCP
Usage: #example
Title: "UC 2: Tanja Allesgut"
Description: "Example for CH EPREG Practitioner: Treating Healthcare Provider"
* language = #de-CH
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002322553"
* name.family = "Allesgut"
* name.given = "Tanja"
* name.prefix = "Dr. med."


Instance: fbe019f1-6574-40be-940f-d03da0c743db
InstanceOf: ChEpregOrganizationTHCP
Usage: #example
Title: "UC 2: Geburtsklinik"
Description: "Example for CH EPREG Organization: Treating Healthcare Provider"
* language = #de-CH
* name = "Geburtsklinik 'Willkommen auf der Welt'"
* address.line = "Klinikstrasse 1"
* address.postalCode = "8888"
* address.city = "Musterhausen" 
* address.country = "Schweiz"
* telecom[email].system = #email 
* telecom[email].value = "geburtsklinik@example.com"
* telecom[phone][0].system = #phone
* telecom[phone][=].use = #mobile
* telecom[phone][=].value = "+41 79 555 55 55"
* telecom[phone][+].system = #phone
* telecom[phone][=].use = #work
* telecom[phone][=].value = "+41 55 555 55 55"
