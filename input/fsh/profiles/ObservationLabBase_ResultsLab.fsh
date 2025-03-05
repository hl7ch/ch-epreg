Profile: ChEpregObservationResultsLab
Parent: Observation // https://github.com/hl7ch/ch-core/issues/325
Id: ch-epreg-observation-results-lab
Title: "CH EPREG Observation: Results Laboratory"
Description: "This base profile constrains the Observation resource to represent the laboratory results within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Results Laboratory"
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
Mapping: ChEpregObservationResultsLabToConceptPregnancyPassport
Source: ChEpregObservationResultsLab
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Laboruntersuchung | Analyse de laboratoire"
* code                                      -> "Code Laboruntersuchung | Code de l’analyse de laboratoire"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Untersuchungsdatum | Date de l’analyse"
* performer                                 -> "Durchgeführt durch | Analyse effectuée par"
* value[x]                                  -> "Messergebnis | Résultats"
* component.code                            -> "Code Laboruntersuchung | Code de l’analyse de laboratoire"
* component.value[x]                        -> "Messergebnis | Résultats"
*/