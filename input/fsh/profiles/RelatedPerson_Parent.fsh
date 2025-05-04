Profile: ChEpregRelatedPersonParent
Parent: RelatedPerson // TODO: https://github.com/hl7ch/ch-core/issues/344
Id: ch-epreg-relatedperson-parent
Title: "CH EPREG RelatedPerson: Parent"
Description: "This profile constrains the RelatedPerson resource to represent the relationship between the parent (besides the biological mother) and the child."
* . ^short = "CH EPREG RelatedPerson: Parent"
* extension contains 
    ChEpregExtNote named note 0..1
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
// * extension[citizenship]                    -> "Nationalität | Nationalité" TODO: https://github.com/hl7ch/ch-core/issues/344
* extension[note]                           -> "Bemerkungen | Remarques"
* relationship                              -> "Art des Elternteils | Type de parent" 
* name                                      -> "Name | Nom"
* name.family                               -> "Nachname | Nom"
* name.given                                -> "Vorname | Prénom"
* birthDate                                 -> "Geburtsdatum | Date de naissance"
// * communication[languageOfCorrespondence]   -> "Kommunikationssprache | Langue de communication"  // TODO
