Profile: ChEpregPractitionerRoleTHCP
Parent: CHCorePractitionerRole
Id: ch-epreg-practitionerrole-thcp
Title: "CH EPREG PractitionerRole: Treating Healthcare Provider"
Description: "This profile constrains the PractitionerRole resource to represent the treating healthcare provider within the context of the pregnancy passport."
* . ^short = "CH EPREG PractitionerRole: Treating Healthcare Provider"
* practitioner only Reference(ChEpregPractitionerTHCP)
* practitioner MS 
* practitioner.reference 1.. 
* organization only Reference(ChEpregOrganizationTHCP)
* organization MS 
* organization.reference 1.. 



Mapping: ChEpregPractitionerRoleTHCPToConceptPregnancyPassport
Source: ChEpregPractitionerRoleTHCP
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* code                                      -> "Art des Leistungserbringenden | Type de fournisseur de prestations" 
* specialty                                 -> "Art des Leistungserbringenden | Type de fournisseur de prestations" 