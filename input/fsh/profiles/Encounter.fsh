Profile: ChEpregEncounterPregVisit
Parent: CHCoreEncounter
Id: ch-epreg-encounter-preg-visit
Title: "CH EPREG Encounter: Pregnancy Visit"
Description: "This profile constrains the Encounter resource to represent a pregnancy visit within the context of the pregnancy passport."
* . ^short = "CH EPREG Encounter: Pregnancy Visit"
* extension contains $encounter-associatedEncounter named associatedEncounter 0..1
* status = #finished
* subject only Reference(ChEpregPatientMother)    
* subject 1..          
* subject.reference 1..        


Mapping: ChEpregEncounterPregVisitToConceptPregnancyPassport
Source: ChEpregEncounterPregVisit
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchung | Examen"
* extension[associatedEncounter]            -> "Nächste Kontrolle | Prochain contrôle"
* subject                                   -> "Schwangere Person | Personne enceinte"
* period.start                              -> "Datum | Date de l’examen"

