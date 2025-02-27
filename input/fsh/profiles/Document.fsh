Profile: ChEpregDocument
Parent: CHCoreDocumentEPR
Id: ch-epreg-document
Title: "CH EPREG Document"
Description: "This profile constrains the Bundle resource to represent the pregnancy passport."
* . ^short = "CH EPREG Document"

* entry contains
    Observation 0..*  

* entry[Composition].resource 1..
* entry[Composition].resource ^type.profile = Canonical(ChEpregComposition)
* entry[Patient] 1..
* entry[Patient].resource 1..
* entry[Patient].resource ^type.profile = Canonical(ChEpregPatientMother)

* entry[Practitioner].resource 1..
* entry[PractitionerRole].resource 1..
* entry[Organization].resource 1..
* entry[RelatedPerson].resource 1..
* entry[Device].resource 1..
//* entry[Encounter].resource 1..
//* entry[Location].resource 1..

* entry[Observation].resource 1..
* entry[Observation].resource ^type.profile = Canonical(ChEpregObservationResultsLab)