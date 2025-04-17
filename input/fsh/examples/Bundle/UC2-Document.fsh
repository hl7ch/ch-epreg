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
* entry[+].fullUrl = "urn:uuid:67d0e290-21b9-4255-9182-5fe9f21cdbb4" // RP: "Fabienne Babyglück"
* entry[=].resource = 67d0e290-21b9-4255-9182-5fe9f21cdbb4
* entry[+].fullUrl = "urn:uuid:111d5e66-f17e-4369-90c6-9382e566040e" // Pat: "Kind"
* entry[=].resource = 111d5e66-f17e-4369-90c6-9382e566040e


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

// Lab 
* entry[+].fullUrl = "urn:uuid:b9145a94-ea12-479b-a031-b07d4ac9f297" // Obs: "Glucose 3.9 mmol/l"
* entry[=].resource = b9145a94-ea12-479b-a031-b07d4ac9f297

// Pregnancy Visit
* entry[+].fullUrl = "urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f" // Enc: "Untersuchung Mutter, 27.03.2025"
* entry[=].resource = 1ba6df42-ae1a-4b4a-886f-33d6b2223b1f
* entry[+].fullUrl = "urn:uuid:8e89c502-964f-4234-9728-540d881b0380" // Enc: "Untersuchung Mutter, 26.03.2025"
* entry[=].resource = 8e89c502-964f-4234-9728-540d881b0380
* entry[+].fullUrl = "urn:uuid:833fd8f2-b75f-4dba-990f-6c46aa468d51" // Enc: "Untersuchung Kind, 27.03.2025"
* entry[=].resource = 833fd8f2-b75f-4dba-990f-6c46aa468d51
* entry[+].fullUrl = "urn:uuid:22aeb067-85f9-4b3b-9301-161604005206" // Enc: "Untersuchung Kind, 26.03.2025"
* entry[=].resource = 22aeb067-85f9-4b3b-9301-161604005206
* entry[+].fullUrl = "urn:uuid:84869994-4348-4ad3-95ee-d9b0faf75dba" // Obs: "SSW 32"
* entry[=].resource = 84869994-4348-4ad3-95ee-d9b0faf75dba
* entry[+].fullUrl = "urn:uuid:2f167f2f-44f7-49e3-a970-d7f7a6573cd3" // Obs: "SSW 32"
* entry[=].resource = 2f167f2f-44f7-49e3-a970-d7f7a6573cd3
* entry[+].fullUrl = "urn:uuid:e1c73669-f935-47d1-9dcd-fab76a38bdb7" // Obs: "Gewicht 65 kg"
* entry[=].resource = e1c73669-f935-47d1-9dcd-fab76a38bdb7
* entry[+].fullUrl = "urn:uuid:f339e056-53d6-4247-9226-5339123fbd14" // Obs: "Gewicht 65.1 kg"
* entry[=].resource = f339e056-53d6-4247-9226-5339123fbd14
* entry[+].fullUrl = "urn:uuid:4268bd90-eff8-41f4-a7b4-2178dac0e470" // Obs: "Blutdruck 160/60 mmHg"
* entry[=].resource = 4268bd90-eff8-41f4-a7b4-2178dac0e470
* entry[+].fullUrl = "urn:uuid:e949f912-fc27-4849-8632-09caad9fe897" // Obs: "Blutdruck 122/83 mmHg"
* entry[=].resource = e949f912-fc27-4849-8632-09caad9fe897
* entry[+].fullUrl = "urn:uuid:6eafd07b-c40a-4864-874c-cfe2d5b222ed" // Obs: "Fundusstand Rb/2"
* entry[=].resource = 6eafd07b-c40a-4864-874c-cfe2d5b222ed
* entry[+].fullUrl = "urn:uuid:3e120206-7aa2-4ced-82c3-3704868e023f" // Obs: "Kindsbewegung schwach"
* entry[=].resource = 3e120206-7aa2-4ced-82c3-3704868e023f
* entry[+].fullUrl = "urn:uuid:d0b53779-fde0-4780-9ff4-9ba2a4cf9393" // Obs: "Herztöne 110 /min"
* entry[=].resource = d0b53779-fde0-4780-9ff4-9ba2a4cf9393
* entry[+].fullUrl = "urn:uuid:a5c14df0-3dca-4530-a22a-072af14178b1" // Obs: "Kindslage Steisslage"
* entry[=].resource = a5c14df0-3dca-4530-a22a-072af14178b1
* entry[+].fullUrl = "urn:uuid:4a907770-6665-4fb4-b186-afd0ddf48742" // Obs: "Kindslage Steisslage"
* entry[=].resource = 4a907770-6665-4fb4-b186-afd0ddf48742
* entry[+].fullUrl = "urn:uuid:4b9ca365-383e-41c8-9bac-b3c79aea1c7e" // Obs: "Glucose 3.9 mmol/l"
* entry[=].resource = 4b9ca365-383e-41c8-9bac-b3c79aea1c7e
* entry[+].fullUrl = "urn:uuid:bbd6f1bc-1d87-4c90-a313-98bea06c3dfb" // Obs: "Glucose 4.7 mmol/l"
* entry[=].resource = bbd6f1bc-1d87-4c90-a313-98bea06c3dfb
* entry[+].fullUrl = "urn:uuid:1ce882f2-953f-428e-a90b-a55271020fca" // Obs: "Sodbrennen"
* entry[=].resource = 1ce882f2-953f-428e-a90b-a55271020fca