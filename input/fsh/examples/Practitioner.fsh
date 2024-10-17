Instance: PractitionerHansMuster
InstanceOf: ChIgPractitioner
Usage: #example
Title: "Hans Muster"
Description: "Example for Practitioner"

// Name
* name[0].family = "Muster"
* name[0].given[0] = "Hans"
* name[0].prefix[0] = "Dr."
* name[0].suffix[0] = "MED"
* name[0].use = #official
  
* identifier
  * system = "urn:oid:2.51.1.3"
  * value = "7610000050719"

// Telecom (contact details)
//* telecom[0].system = #phone
//* telecom[0].value = "+41 44 123 45 67"
//* telecom[0].use = #work
//* telecom[0].rank = 1

//* telecom[1].system = #email
//* telecom[1].value = "hans.muster@example.com"
//* telecom[1].use = #work
//* telecom[1].rank = 2
