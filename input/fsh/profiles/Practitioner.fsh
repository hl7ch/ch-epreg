Profile: ChEpregPractitionerTHCP
Parent: CHCorePractitionerEPR
Id: ch-epreg-practitioner-thcp
Title: "CH EPREG Practitioner: Treating Healthcare Provider"
Description: "This profile constrains the PractitionerRole resource to represent the treating healthcare provider within the context of the pregnancy passport."
* . ^short = "CH EPREG Practitioner: Treating Healthcare Provider"
* identifier[GLN] MS
* name MS
* name.family MS 
* name.given MS



Mapping: ChEpregPractitionerTHCPToConceptPregnancyPassport
Source: ChEpregPractitionerTHCP
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* identifier[GLN]                           -> "GLN Nummer | Numéro GLN"
* name                                      -> "Name | Nom"
* name.family                               -> "Nachname | Nom de famille"
* name.given                                -> "Vorname | Prénoms" 
* name.prefix                               -> "Titel | Titre"
