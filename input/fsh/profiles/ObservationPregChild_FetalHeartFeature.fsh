// https://simplifier.net/packages/mio.kbv.mutterpass/1.0.0/files/298377

Profile: ChEpregObservationFetalHeartFeature
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-fetal-heart-feature
Title: "CH EPREG Observation (Child): Fetal Heart Feature"
Description: "This profile constrains the Observation resource to represent the fetal heart feature (e.g., rate, sounds, rhythm)."
* . ^short = "CH EPREG Observation: Fetal Heart Feature"
* code = $sct#364620002 // "Fetal heart feature (observable entity)"
* effective[x] only dateTime
* value[x] 1..
* value[x] only string
* subject only Reference(ChEpregPatientChild)
* encounter only Reference(ChEpregEncounterChild)       


Mapping: ChEpregObservationFetalHeartFeatureToConceptPregnancyPassport
Source: ChEpregObservationFetalHeartFeature
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Herztöne | Bruits cardiaques fœtaux"
* subject                                   -> "Kind | Enfant"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Herztöne | Bruits cardiaques fœtaux"
* encounter                                 -> "Untersuchung | Examen"
