Profile: ChEpregObservationGestationalAgeInDays
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-gestational-age-in-days
Title: "CH EPREG Observation (Mother): Gestational Age in Days"
Description: "This profile constrains the Observation resource to represent the gestational age in days."
* . ^short = "CH EPREG Observation: Gestational Age in Days"
* code = $loinc#49052-4 // "Gestational age in days"
* effective[x] only dateTime
* value[x] only Quantity 
* value[x] 1..
* value[x].value 1..
* value[x].unit 1..
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org"
* value[x].code 1..
* value[x].code = #d  
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)

       

Mapping: ChEpregObservationGestationalAgeInDaysToConceptPregnancyPassport
Source: ChEpregObservationGestationalAgeInDays
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Schwangerschaftswoche+Tage | Semaine de grossesse + jours"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Schwangerschaftswoche+Tage | Semaine de grossesse + jours"
* encounter                                 -> "Untersuchung | Examen"
