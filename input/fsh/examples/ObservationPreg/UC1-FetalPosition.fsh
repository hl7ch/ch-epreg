Instance: UC1-FetalPosition-20250218
InstanceOf: ChEpregObservationFetalPosition
Usage: #example
Title: "UC 1: Vertex Presentation (18.02.2025)"
Description: "Example for CH EPREG Observation: Fetal Position"
* language = #de-CH
* status = #final
* code = $sct#364607000 "Position of fetus (observable entity)"
* subject = Reference(UC1-Fetus)
* effectiveDateTime = "2025-02-18"
* performer = Reference(UC1-PetraSectionataAtFrauenzimmer)
* encounter = Reference(UC1-EncounterPregVisit20250218)
* valueCodeableConcept.coding = $sct#70028003 "Vertex presentation (finding)"
* valueCodeableConcept.text = "Schädellage"
