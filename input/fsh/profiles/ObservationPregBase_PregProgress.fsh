Profile: ChEpregObservationPregProgress
Parent: Observation 
Id: ch-epreg-observation-preg-progress
Title: "CH EPREG Observation: Pregnancy Progress"
Description: "This base profile constrains the Observation resource to represent the pregnancy progress within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Pregnancy Progress"
* subject 1..
* subject only Reference(ChEpregPatientMother)
* subject.reference 1..
* effective[x] 1.. 
* performer 1..
// * performer only Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson)
* performer.reference 1..
* value[x] MS 
* component.value[x] MS                     



/*
Mapping: ChEpregObservationPregProgressToConceptPregnancyPassport
Source: ChEpregObservationPregProgress
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchung | Examen"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Datum | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
*/