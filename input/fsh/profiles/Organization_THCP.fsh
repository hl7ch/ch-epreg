Profile: ChEpregOrganizationTHCP
Parent: CHCoreOrganization
Id: ch-epreg-organization-thcp
Title: "CH EPREG Organization: Treating Healthcare Provider"
Description: "This profile constrains the Organization resource to represent the treating healthcare provider within the context of the pregnancy passport."
* . ^short = "CH EPREG Organization: Treating Healthcare Provider"
* name MS
* telecom MS
* telecom[phone] MS
* telecom[email] MS
* address MS 
* address.line MS
* address.postalCode MS
* address.city MS
* address.country MS



Mapping: ChEpregOrganizationTHCPToConceptPregnancyPassport
Source: ChEpregOrganizationTHCP
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* name                                      -> "Name der behandelnden Institution | Nom de l’institution"
* telecom[email]                            -> "E-Mailadresse | Courriel"
* telecom[phone]                            -> "Telefon | N° de téléphone" 
* telecom[phone]                            -> "use = mobile: Mobil | Mobile" 
* telecom[phone]                            -> "use = work: Arbeit | Professionnel" 
* address                                   -> "Adresse | Adresse" 
* address.line                              -> "Strasse | Rue" 
* address.line                              -> "Hausnummer | Numéro" 
* address.postalCode                        -> "Postleitzahl | Code postal" 
* address.city                              -> "Ort | Localité" 
* address.country                           -> "Land | Pays" 
