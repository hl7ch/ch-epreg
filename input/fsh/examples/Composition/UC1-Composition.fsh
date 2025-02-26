Instance: UC1-Composition
InstanceOf: ChEpregComposition
Usage: #example
Title: "UC 1: Composition"
Description: "Example for CH EPREG Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"
* status = #final
* type = $sct#736377005 "Maternity care plan (record artifact)"
* subject = Reference(UC1-KatrinKinderlieb)
* date = "2025-02-18T10:34:00+01:00"
* author = Reference(UC1-PetraSectionataAtFrauenzimmer)
* title = "Schwangerschaftspass"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[careTeam].entry = Reference(UC1-PetraSectionataAtFrauenzimmer)