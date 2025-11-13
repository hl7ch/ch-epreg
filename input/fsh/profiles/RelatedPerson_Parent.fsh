Profile: ChEpregRelatedPersonParent
Parent: CHCoreRelatedPerson
Id: ch-epreg-relatedperson-parent
Title: "CH EPREG RelatedPerson: Parent"
Description: "This profile constrains the RelatedPerson resource to represent the relationship between the parent (besides the biological mother) and the child."
* . ^short = "CH EPREG RelatedPerson: Parent"
* patient only Reference(ChEpregPatientChild)
* relationship 1..
* relationship from Parent (extensible)
* relationship ^binding.description = "See also [Mapping Parent](mapping-concept-valuesets.html#parent)."  
* name MS
* name.family MS
* name.given MS



Mapping: ChEpregRelatedPersonParentToConceptPregnancyPassport
Source: ChEpregRelatedPersonParent
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Elternteil | Parent"
* extension[citizenship]                    -> "Nationalität | Nationalité" 
* relationship                              -> "Art des Elternteils | Type de parent" 
* name                                      -> "Name | Nom"
* name.family                               -> "Nachname | Nom"
* name.given                                -> "Vorname | Prénom"
* birthDate                                 -> "Geburtsdatum | Date de naissance"
* communication                             -> "Kommunikationssprache | Langue de communication" 
