Profile: ChEpregCoverage 
Parent: CHCoreCoverage
Id: ch-epreg-coverage
Title: "CH EPREG Coverage"
Description: "This profile constrains the Coverage resource to represent the insurance data."
* . ^short = "CH EPREG Coverage"
// Versichertennummer: https://www.sanitas.com/en/private-customers/services/contact-and-help/dictionary/health-insurance-card.html
* identifier contains 
    insuranceNumber 1..*
* identifier[insuranceNumber] ^short = "Insurance number (note that this is different from the insurance card number)"
* identifier[insuranceNumber] ^patternIdentifier.type = $v2-0203#MB // "Member Number"
* identifier[insuranceNumber].system 1..
* identifier[insuranceNumber].value 1..    
* beneficiary only Reference(ChEpregPatientMother)
* beneficiary.reference 1..
* type MS
* payor MS
* payor only Reference(CHCoreOrganization)
* payor.reference 1..
* payor ^type.aggregation[0] = #contained



Mapping: ChEpregCoverageToConceptPregnancyPassport
Source: ChEpregCoverage
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Versicherung | Assurance"
* identifier[insuranceNumber]               -> "Versichertennummer | Numéro de la personne assurée"
* beneficiary                               -> "Schwangere Person | Personne enceinte"
* type                                      -> "1: Grundversicherung | Assurance de base" 
* type                                      -> "ZV: Zusatzversicherung | Assurance complémentaire"
* payor                                     -> "Organization.name -> Name Versicherung | Nom de l’assureur"       