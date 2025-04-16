Instance: UC1-Child
InstanceOf: ChEpregPatientChild
Usage: #example
Title: "UC 1: Child"
Description: "Example for CH EPREG Patient: Child"
* language = #de-CH
* identifier[LocalPid].type = $v2-0203#MR "Medical record number" // https://hl7.org/fhir/R4/v2/0203/index.html
* identifier[LocalPid].system = "http://example.com/identifiers/child"
* identifier[LocalPid].value = "A"
* gender = #female
