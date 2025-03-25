Instance: ch-epreg-mapping-hcProfession
InstanceOf: ConceptMap
Usage: #definition
* name = "ChEpregMappingHcProfession"
* title = "CH EPREG Mapping: hcProfession"
* status = #active
* experimental = false
* description = "This mapping describes the relationship between the values defined in the electronic pregnancy passport concept and those used in the Swiss core profiles (PractitionerRole.code)."
* targetUri = "http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession"

* group[0].target = "http://snomed.info/sct"

* group[=].element[0].code = #Gynäkologin/Gynäkologe
* group[=].element[=].target.code = #309343006
* group[=].element[=].target.display = "Physician"
* group[=].element[=].target.equivalence = #subsumes

* group[=].element[+].code = #Hebamme
* group[=].element[=].target.code = #309453006
* group[=].element[=].target.display = "Registered midwife"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #Hausärztin/Hausarzt
* group[=].element[=].target.code = #309343006
* group[=].element[=].target.display = "Physician"
* group[=].element[=].target.equivalence = #subsumes

* group[=].element[+].code = #Kinderärztin/Kinderarzt 
* group[=].element[=].target.code = #309343006
* group[=].element[=].target.display = "Physician"
* group[=].element[=].target.equivalence = #subsumes

* group[=].element[+].code = #Apothekerin/Apotheker
* group[=].element[=].target.code = #46255001
* group[=].element[=].target.display = "Pharmacist"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #Pflegefachperson 
* group[=].element[=].target.code = #106292003
* group[=].element[=].target.display = "Professional nurse"
* group[=].element[=].target.equivalence = #equal


Instance: ch-epreg-mapping-hcSpecialisation
InstanceOf: ConceptMap
Usage: #definition
* name = "ChEpregMappingHcSpecialisation"
* title = "CH EPREG Mapping: hcSpecialisation"
* status = #active
* experimental = false
* description = "This mapping describes the relationship between the values defined in the electronic pregnancy passport concept and those used in the Swiss core profiles (PractitionerRole.specialty)."
* targetUri = "http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcSpecialisation"

* group[0].target = "urn:oid:2.16.756.5.30.1.127.3.5"

* group[=].element[0].code = #Gynäkologin/Gynäkologe
* group[=].element[=].target.code = #1003
* group[=].element[=].target.display = "Gynäkologie und Geburtshilfe"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Hausärztin/Hausarzt
* group[=].element[=].target.code = #1040
* group[=].element[=].target.display = "General medical practitioner"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Kinderärztin/Kinderarzt 
* group[=].element[=].target.code = #1006
* group[=].element[=].target.display = "Paediatrics"
* group[=].element[=].target.equivalence = #equivalent
