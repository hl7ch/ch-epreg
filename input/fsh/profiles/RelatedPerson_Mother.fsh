Profile: ChEpregRelatedPersonMother
Parent: RelatedPerson
Id: ch-epreg-relatedperson-mother
Title: "CH EPREG RelatedPerson: Mother"
Description: "This profile constrains the RelatedPerson resource to represent the relationship between the mother and the child/children."
* . ^short = "CH EPREG RelatedPerson: Mother"
* patient only Reference(ChEpregPatientChild)
* relationship 1..
* relationship = $v3-RoleCode#MTH // "Mother"