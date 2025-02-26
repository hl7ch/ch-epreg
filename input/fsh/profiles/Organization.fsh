Profile: ChEpregOrganizationTHCP
Parent: CHCoreOrganizationEPR
Id: ch-epreg-organization-thcp
Title: "CH EPREG Organization: Treating Healthcare Provider"
Description: "This profile constrains the Organization resource to represent the treating healthcare provider within the context of the pregnancy passport."
* . ^short = "CH EPREG Organization: Treating Healthcare Provider"


Mapping: ChEpregOrganizationTHCPToConceptPregnancyPassport
Source: ChEpregOrganizationTHCP
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* name                                      -> "Name der behandelnden Institution | Nom de l’institution"