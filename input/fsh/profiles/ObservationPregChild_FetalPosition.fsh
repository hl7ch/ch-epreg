Profile: ChEpregObservationFetalPosition
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-fetal-position
Title: "CH EPREG Observation (Child): Fetal Position"
Description: "This profile constrains the Observation resource to represent the position of the fetus."
* . ^short = "CH EPREG Observation: Fetal Position"
* code = $sct#364607000 // "Position of fetus (observable entity)"
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from FetalPosition (extensible)
* value[x] ^binding.description = "See also [Guidance Mapping Fetal Position](guidance-vs-mapping.html#fetal-position)."
* subject only Reference(ChEpregPatientChild)
* encounter only Reference(ChEpregEncounterChild)       

Mapping: ChEpregObservationFetalPositionToConceptPregnancyPassport
Source: ChEpregObservationFetalPosition
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Kindslage | Position fœtale"
* subject                                   -> "Kind | Enfant"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Kindslage | Position fœtale"
* encounter                                 -> "Untersuchung | Examen"
