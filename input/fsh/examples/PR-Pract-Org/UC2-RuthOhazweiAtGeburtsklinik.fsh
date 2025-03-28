Instance: e1b736e3-10bb-41aa-8d17-c7ba28895880
InstanceOf: ChEpregPractitionerRoleTHCP
Usage: #example
Title: "UC 2: Ruth Ohazwei @ Geburtsklinik"
Description: "Example for CH EPREG PractitionerRole"
* language = #de-CH
* practitioner = Reference(urn:uuid:c314ae56-7edb-4ef9-b38a-216c9a979374) "Ruth Ohazwei"
* practitioner.type = "Practitioner"
* organization = Reference(urn:uuid:fbe019f1-6574-40be-940f-d03da0c743db) "Geburtsklinik"
* organization.type = "Organization"
* code = $sct#309453006 "Registrierte Hebamme"



Instance: c314ae56-7edb-4ef9-b38a-216c9a979374
InstanceOf: ChEpregPractitionerTHCP
Usage: #example
Title: "UC 2: Ruth Ohazwei"
Description: "Example for CH EPREG Practitioner: Treating Healthcare Provider"
* language = #de-CH
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234322"
* name.family = "Ohazwei"
* name.given = "Ruth"
