// https://simplifier.net/packages/mio.kbv.mutterpass/1.0.0/files/298285

Profile: ChEpregObservationFetalMovement
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-fetal-movement
Title: "CH EPREG Observation (Child): Fetal Movement"
Description: "This profile constrains the Observation resource to represent the movement of the fetus (e.g. activity, strength)."
* . ^short = "CH EPREG Observation: Fetal Movement"
* code = $sct#249040004 // "Fetal movement activity (observable entity)"
* effective[x] only dateTime
* value[x] 1..
* value[x] only string
* subject only Reference(ChEpregPatientChild)
* encounter only Reference(ChEpregEncounterChild)       


Mapping: ChEpregObservationFetalMovementToConceptPregnancyPassport
Source: ChEpregObservationFetalMovement
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Kindsbewegungen | Mobilité fœtale"
* subject                                   -> "Kind | Enfant"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Kindsbewegungen | Mobilité fœtale"
* encounter                                 -> "Untersuchung | Examen"
