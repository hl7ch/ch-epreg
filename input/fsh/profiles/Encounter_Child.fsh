Profile: ChEpregEncounterChild
Parent: CHCoreEncounter
Id: ch-epreg-encounter-child
Title: "CH EPREG Encounter: Child"
Description: "This profile constrains the Encounter resource to represent a pregnancy examination from the child's perspective."
* . ^short = "CH EPREG Encounter: Child"
* status = #finished
* subject only Reference(ChEpregPatientChild)    
* subject 1..          
* subject.reference 1..     
* participant 1..
* participant.individual 1..
* participant.individual only Reference(ChEpregPractitionerRoleTHCP)
* participant.individual.reference 1..
* period 1..
* period.start 1..   
* partOf 1..
* partOf.reference 1..
* partOf only Reference(ChEpregEncounterMother)



Mapping: ChEpregEncounterChildToConceptPregnancyPassport
Source: ChEpregEncounterChild
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchung | Examen"
* subject                                   -> "Kind | Enfant"
* participant.individual                    -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* period.start                              -> "Datum | Date de l’examen"
* period.end                                -> "Datum | Date de l’examen"
