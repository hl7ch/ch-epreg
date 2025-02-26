Profile: ChEpregDocument
Parent: CHCoreDocumentEPR
Id: ch-epreg-document
Title: "CH EPREG Document"
Description: "This profile constrains the Bundle resource to represent the pregnancy passport."
* . ^short = "CH EPREG Document"
//* entry contains
//    Composition 1..1 and 
* entry[Composition].resource 1..
* entry[Composition].resource ^type.profile = Canonical(ChEpregComposition)
* entry[Patient] 1..
* entry[Patient].resource 1..
* entry[Patient].resource ^type.profile = Canonical(ChEpregPatient)