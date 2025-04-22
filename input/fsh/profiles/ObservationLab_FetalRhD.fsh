Profile: ChEpregObservationFetalRhD
Parent: ChEpregObservationResultsLab 
Id: ch-epreg-observation-fetal-rhd
Title: "CH EPREG Observation (Lab): Fetal RhD"
Description: "This profile constrains the Observation resource to represent the fetal Rhesus D determination from the maternal blood."
* . ^short = "CH EPREG Observation: Fetal RhD"
* code = $loinc#77016-4 // "Fetal RhD antigen in Plasma cell-free DNA by MS.MALDI-TOF"
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from FetalRhDAntigen (extensible)     
* value[x] ^binding.description = "See also [Guidance Mapping Fetal RhD](guidance-vs-mapping.html#fetal-rhd)."     


Mapping: ChEpregObservationFetalRhDToConceptPregnancyPassport
Source: ChEpregObservationFetalRhD
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Untersuchungen und Tests | Analyses et tests"
* code                                      -> "Bestimmung des fetalen RHD-Status | Détermination du RhD fœtal"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Untersuchungsdatum | Date de l’analyse"
* performer                                 -> "Durchgeführt durch | Analyse effectuée par"
* value[x]                                  -> "Bestimmung des fetalen RHD-Status | Détermination du RhD fœtal"
