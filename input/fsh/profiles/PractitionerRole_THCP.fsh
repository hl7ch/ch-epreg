Profile: ChEpregPractitionerRoleTHCP
Parent: CHCorePractitionerRole
Id: ch-epreg-practitionerrole-thcp
Title: "CH EPREG PractitionerRole: Treating Healthcare Provider"
Description: "This profile constrains the PractitionerRole resource to represent the treating healthcare provider."
* . ^short = "CH EPREG PractitionerRole: Treating Healthcare Provider"
* obeys epreg-pract-org and epreg-code-specialty
* extension contains 
    ChEpregExtNote named note 0..1
* practitioner only Reference(ChEpregPractitionerTHCP)
* practitioner MS 
* practitioner.reference 1.. 
* organization only Reference(ChEpregOrganizationTHCP)
* organization MS 
* organization.reference 1.. 
* code MS 
* code ^binding.description = "See also [Mapping Healthcare Provider](mapping-concept-valuesets.html#healthcare-provider)."
* specialty MS
* specialty ^binding.description = "See also [Mapping Healthcare Provider](mapping-concept-valuesets.html#healthcare-provider)."



Mapping: ChEpregPractitionerRoleTHCPToConceptPregnancyPassport
Source: ChEpregPractitionerRoleTHCP
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* extension[note]                           -> "Bemerkungen | Remarques"
* code                                      -> "Art des Leistungserbringenden | Type de fournisseur de prestations (see also 'Mapping Healthcare Provider')" 
* specialty                                 -> "Art des Leistungserbringenden | Type de fournisseur de prestations (see also 'Mapping Healthcare Provider')" 
