Profile: ChEpregObservationGestationalAgeInWeeks
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-gestational-age-in-weeks
Title: "CH EPREG Observation (Mother): Gestational Age in Weeks"
Description: "This profile constrains the Observation resource to represent the gestational age in weeks."
* . ^short = "CH EPREG Observation: Gestational Age in Weeks"
* code = $loinc#49051-6 // "Gestational age in weeks"
* effective[x] only dateTime
* value[x] only Quantity 
* value[x] 1..
* value[x].value 1..
* value[x].unit 1..
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org"
* value[x].code 1..
* value[x].code = #wk  
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)

       

Mapping: ChEpregObservationGestationalAgeInWeeksToConceptPregnancyPassport
Source: ChEpregObservationGestationalAgeInWeeks
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Schwangerschaftswochen | Semaines de grossesse"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Schwangerschaftswochen | Semaines de grossesse"
* encounter                                 -> "Untersuchung | Examen"
