Profile: ChEpregObservationVaginaFeature
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-vagina-feature
Title: "CH EPREG Observation (Mother): Vagina Feature"
Description: "This profile constrains the Observation resource to represent the vagina feature (e.g. cervix, cervical os)."
* . ^short = "CH EPREG Observation: Vagina Feature"
* code = $sct#364230003 // "Vagina feature (observable entity)"
* effective[x] only dateTime
* value[x] only string
* value[x] 1..
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)

       

Mapping: ChEpregObservationVaginaFeatureToConceptPregnancyPassport
Source: ChEpregObservationVaginaFeature
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Vaginalbefund | Examen gynécologique"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Vaginalbefund | Examen gynécologique"
* encounter                                 -> "Untersuchung | Examen"
