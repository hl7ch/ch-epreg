Instance: UC1-Fetus
InstanceOf: ChEpregPatientFetus
Usage: #example
Title: "UC 1: Fetus"
Description: "Example for CH EPREG Patient: Fetus"
* language = #de-CH
* identifier[internalPid].type = $v2-0203#PI "Patient internal identifier" // https://hl7.org/fhir/R4/v2/0203/index.html
* identifier[internalPid].system = "http://example.com/identifiers/fetus"
* identifier[internalPid].value = "A"
* gender = #female
