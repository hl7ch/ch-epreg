Instance: UC1-FetalPosition-20250205
InstanceOf: ChEpregObservationFetalPosition
Usage: #example
Title: "UC 1: Vertex Presentation (05.02.2025)"
Description: "Example for CH EPREG Observation: Fetal Position"
* language = #de-CH
* status = #final
* code = $sct#364607000 "Position of fetus (observable entity)"
* subject = Reference(UC1-Child)
* effectiveDateTime = "2025-02-05"
* performer = Reference(UC1-PetraSectionataAtFrauenzimmer)
* encounter = Reference(UC1-EncounterMother20250205)
* valueCodeableConcept.coding = $sct#70028003 "Vertex presentation (finding)"
* valueCodeableConcept.text = "Schädellage"
