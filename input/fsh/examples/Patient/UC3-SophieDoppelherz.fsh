Instance: UC3-SophieDoppelherz
InstanceOf: ChEpregPatientMother
Usage: #example
Title: "UC 3: Sophie Doppelherz"
Description: "Example for CH EPREG Patient: Mother"
* language = #de-CH
* identifier[LocalPid].system = "http://example.com/identifiers/patient"
* identifier[LocalPid].value = "123456"
* name.family = "Doppelherz"
* name.given = "Sophie"
* gender = #female
* birthDate = "1992-07-22"
* link[child][0].other = Reference(UC3-RelatedPerson-ChildA-Mother)
* link[child][=].type = #seealso
* link[child][+].other = Reference(UC3-RelatedPerson-ChildB-Mother)
* link[child][=].type = #seealso
