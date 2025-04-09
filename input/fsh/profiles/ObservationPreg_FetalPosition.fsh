Profile: ChEpregObservationFetalPosition
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-fetal-position
Title: "CH EPREG Observation: Fetal Position"
Description: "This profile constrains the Observation resource to represent the position of the fetus within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Fetal Position"
* code = $sct#364607000 // "Position of fetus (observable entity)"
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept
       

Mapping: ChEpregObservationFetalPositionToConceptPregnancyPassport
Source: ChEpregObservationFetalPosition
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Kindslage | Position fœtale"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Kindslage | Position fœtale"
