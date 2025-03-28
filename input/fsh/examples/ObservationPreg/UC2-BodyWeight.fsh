Instance: e1c73669-f935-47d1-9dcd-fab76a38bdb7
InstanceOf: ChEpregObservationBodyWeight
Usage: #example
Title: "UC 2: 65 kg (27.03.2025)"
Description: "Example for CH EPREG Observation: Body Weight"
* language = #de-CH
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* effectiveDateTime = "2025-03-27"
* performer = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik" // TODO
* valueQuantity = 65 $ucum#kg "kilogram"
* encounter = Reference(urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f) "Untersuchung, 27.03.2025"

