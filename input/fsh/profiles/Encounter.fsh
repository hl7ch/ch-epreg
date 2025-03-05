Profile: ChEpregEncounterPregVisit
Parent: CHCoreEncounter
Id: ch-epreg-encounter-preg-visit
Title: "CH EPREG Encounter: Pregnancy Visit"
Description: "This profile constrains the Encounter resource to represent a pregnancy visit within the context of the pregnancy passport."
* . ^short = "CH EPREG Encounter: Pregnancy Visit"
* extension contains 
    ChEpregExtPlannedNextPregVisit named nextVisit 0..1 and 
    ChEpregExtPregObservation named pregnancyObservation 0..*
* status = #finished
* subject only Reference(ChEpregPatientMother)    
* subject 1..          
* subject.reference 1..     
* participant 1..
* participant.individual 1..
* participant.individual.reference 1..
* period 1..
* period.start 1..   



Mapping: ChEpregEncounterPregVisitToConceptPregnancyPassport
Source: ChEpregEncounterPregVisit
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchung | Examen"
* extension[nextVisit]                      -> "Nächste Kontrolle | Prochain contrôle"
* extension[pregnancyObservation]           -> "Untersuchung | Examen"
* subject                                   -> "Schwangere Person | Personne enceinte"
* participant.individual                    -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* period.start                              -> "Datum | Date de l’examen"


