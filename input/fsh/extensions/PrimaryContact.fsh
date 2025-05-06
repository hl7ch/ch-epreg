Extension: ChEpregExtPrimaryContact
Id: ch-epreg-ext-primary-contact
Title: "CH EPREG Extension: Primary Contact"
Description: "This extension represents if it is the primary contact."
Context: Patient.contact
* . ^short = "CH EPREG Extension: Primary Contact"
* value[x] 1..
* value[x] only boolean
