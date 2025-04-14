Instance: UC1-Child
InstanceOf: ChEpregPatientChild
Usage: #example
Title: "UC 1: Child"
Description: "Example for CH EPREG Patient: Child"
* language = #de-CH
* identifier[internalPid].type = $v2-0203#PI "Patient internal identifier" // https://hl7.org/fhir/R4/v2/0203/index.html
* identifier[internalPid].system = "http://example.com/identifiers/child"
* identifier[internalPid].value = "A"
* gender = #female
