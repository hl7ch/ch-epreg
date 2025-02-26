Profile: ChEpregComposition
Parent: CHCoreCompositionEPR
Id: ch-epreg-composition
Title: "CH EPREG Composition"
Description: "This profile constrains the Composition resource to represent the the first entry in the CH EPREG Document."
* . ^short = "CH EPREG Composition"
* type = $sct#736377005 // "Maternity care plan (record artifact)"
* subject only Reference(ChEpregPatientMother)
* section contains 
    careTeam 0..1
* section[careTeam].code = $loinc#85847-2 // "Patient Care team information"
* section[careTeam].entry MS
* section[careTeam].entry only Reference(ChEpregPractitionerRoleTHCP)
* section[careTeam].entry.reference 1..


Mapping: ChEpregCompositionToConceptPregnancyPassport
Source: ChEpregComposition
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* subject                                   -> "Schwangere Person | Personne enceinte"
* section[careTeam].entry                   -> "Behandelnder Leistungserbringender | Fournisseur de prestations"