Instance: UC2-Document
InstanceOf: ChEpregDocument
Usage: #example
Title: "UC 2: Pregnancy Passport"
Description: "Example for CH EPREG Document - using UUIDs for fullUrls/references"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:658f9dd5-8034-4ba4-b7ce-d3f0f6ebb2a7"
* type = #document
* timestamp = "2025-03-27T14:11:00+01:00"

* entry[0].fullUrl = "urn:uuid:7c4e431a-6222-475f-9593-764b79316afa" // Composition
* entry[=].resource = 7c4e431a-6222-475f-9593-764b79316afa
* entry[+].fullUrl = "urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd" // Pat: "Fabienne Babyglück"
* entry[=].resource = 76c2c5aa-3d7f-438d-b23d-56ce827695fd
* entry[+].fullUrl = "urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527" // PR: "Tanja Allesgut @ Geburtsklinik"
* entry[=].resource = 89029102-999c-4b69-a836-e4dbfbd55527
* entry[+].fullUrl = "urn:uuid:a61d6a0b-ee42-443e-92e5-167d2e42f137" // Pract: "Tanja Allesgut"
* entry[=].resource = a61d6a0b-ee42-443e-92e5-167d2e42f137
* entry[+].fullUrl = "urn:uuid:fbe019f1-6574-40be-940f-d03da0c743db" // Org: "Geburtsklinik"
* entry[=].resource = fbe019f1-6574-40be-940f-d03da0c743db
* entry[+].fullUrl = "urn:uuid:e1b736e3-10bb-41aa-8d17-c7ba28895880" // PR: "Ruth Ohazwei @ Geburtsklinik"
* entry[=].resource = e1b736e3-10bb-41aa-8d17-c7ba28895880
* entry[+].fullUrl = "urn:uuid:c314ae56-7edb-4ef9-b38a-216c9a979374" // Pract: "Ruth Ohazwei"
* entry[=].resource = c314ae56-7edb-4ef9-b38a-216c9a979374

// 26.03.2025
* entry[+].fullUrl = "urn:uuid:8e89c502-964f-4234-9728-540d881b0380" // Enc: "Untersuchung, 26.03.2025"
* entry[=].resource = 8e89c502-964f-4234-9728-540d881b0380
* entry[+].fullUrl = "urn:uuid:2f167f2f-44f7-49e3-a970-d7f7a6573cd3" // Obs: "SSW 32"
* entry[=].resource = 2f167f2f-44f7-49e3-a970-d7f7a6573cd3
* entry[+].fullUrl = "urn:uuid:f339e056-53d6-4247-9226-5339123fbd14" // Obs: "Gewicht 65.1 kg"
* entry[=].resource = f339e056-53d6-4247-9226-5339123fbd14

// 27.03.2025
* entry[+].fullUrl = "urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f" // Enc: "Untersuchung, 27.03.2025"
* entry[=].resource = 1ba6df42-ae1a-4b4a-886f-33d6b2223b1f
* entry[+].fullUrl = "urn:uuid:84869994-4348-4ad3-95ee-d9b0faf75dba" // Obs: "SSW 32"
* entry[=].resource = 84869994-4348-4ad3-95ee-d9b0faf75dba
* entry[+].fullUrl = "urn:uuid:e1c73669-f935-47d1-9dcd-fab76a38bdb7" // Obs: "Gewicht 65 kg"
* entry[=].resource = e1c73669-f935-47d1-9dcd-fab76a38bdb7