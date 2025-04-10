Profile: ChEpregObservationBloodGroup
Parent: ChEpregObservationResultsLab 
Id: ch-epreg-observation-blood-group
Title: "CH EPREG Observation: Blood Group"
Description: "This profile constrains the Observation resource to represent the blood group."
* . ^short = "CH EPREG Observation: Blood Group"
* code = $sct#365636006 // "Finding of blood group (finding)"
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from ResultsBloodGroup (extensible)     
* value[x] ^binding.description = "See also [Guidance Mapping Blood Group & Rhesus](guidance.html#blood-group--rhesus)."     


Mapping: ChEpregObservationBloodGroupToConceptPregnancyPassport
Source: ChEpregObservationBloodGroup
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchungen und Tests | Analyses et tests"
* code                                      -> "Blutgruppenzugehörigkeit | Détermination du groupe sanguin"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Untersuchungsdatum | Date de l’analyse"
* performer                                 -> "Durchgeführt durch | Analyse effectuée par"
* value[x]                                  -> "Blutgruppe | Groupe sanguin"
* value[x]                                  -> "Rhesus | Rhésus"
