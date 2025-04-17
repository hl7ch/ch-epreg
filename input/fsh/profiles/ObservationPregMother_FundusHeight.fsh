Profile: ChEpregObservationFundusHeight
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-fundus-height
Title: "CH EPREG Observation (Mother): Fundus Height"
Description: "This profile constrains the Observation resource to represent the the height of the gravid uterus."
* . ^short = "CH EPREG Observation: Fundus Height"
* code = $sct#364265003 //"Height of gravid uterus (observable entity)"
* effective[x] only dateTime
* value[x] only string 
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)

       

Mapping: ChEpregObservationFundusHeightToConceptPregnancyPassport
Source: ChEpregObservationFundusHeight
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "SY-FU (Symphysen-Fundus-Abstand) | Hauteur utérine"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "SY-FU (Symphysen-Fundus-Abstand) | Hauteur utérine"
* encounter                                 -> "Untersuchung | Examen"
