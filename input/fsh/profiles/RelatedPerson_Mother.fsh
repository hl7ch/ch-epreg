Profile: ChEpregRelatedPersonMother
Parent: CHCoreRelatedPerson
Id: ch-epreg-relatedperson-mother
Title: "CH EPREG RelatedPerson: Mother"
Description: "This profile constrains the RelatedPerson resource to represent the relationship between the mother and the child."
* . ^short = "CH EPREG RelatedPerson: Mother"
* patient only Reference(ChEpregPatientChild)
* relationship 1..
* relationship = $sct#65656005 // "Natural mother (person)"