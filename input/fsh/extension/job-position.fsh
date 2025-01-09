Extension: JobPosition
Id: job-position
Title: "Job Position"
Description: "An extension to capture the job position of the patient."
* ^url = "http://fhir.ch/ig/ch-epreg/StructureDefinition/job-position"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1
* value[x] only string
* value[x] ^short = "Job Position"