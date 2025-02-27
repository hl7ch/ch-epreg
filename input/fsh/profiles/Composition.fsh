Profile: ChEpregComposition
Parent: CHCoreCompositionEPR
Id: ch-epreg-composition
Title: "CH EPREG Composition"
Description: "This profile constrains the Composition resource to represent the the first entry in the CH EPREG Document."
* . ^short = "CH EPREG Composition"
* type = $sct#736377005 // "Maternity care plan (record artifact)"
* subject only Reference(ChEpregPatientMother)

* section.title 1..
* section.code 1.. 

* section contains 
    careTeam 0..1 MS and 
    lab-subsections 0..1

* section[careTeam].code = $loinc#85847-2 // "Patient Care team information"
* section[careTeam].text 1..
* section[careTeam].entry MS
* section[careTeam].entry only Reference(ChEpregPractitionerRoleTHCP)
* section[careTeam].entry.reference 1..
* section[careTeam].section 0..0

* section[lab-subsections] ^short = "Based on the section of the exchange format for Swiss laboratory reports (https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-composition.html)"
* section[lab-subsections].code = $loinc#26436-6 // "Laboratory studies (set)"
* section[lab-subsections].text 0..0 
* section[lab-subsections].entry 0..0

* section[lab-subsections].section.title 1..
* section[lab-subsections].section.code 1..
* section[lab-subsections].section.code from $lab-studyType-eu-lab (preferred)
* section[lab-subsections].section.text 1..
* section[lab-subsections].section.entry only Reference(ChEpregObservationResultsLab)
* section[lab-subsections].section.entry.reference 1..
* section[lab-subsections].section.section 0..0

* section[lab-subsections].section ^slicing.discriminator.type = #value
* section[lab-subsections].section ^slicing.discriminator.path = "code"
* section[lab-subsections].section ^slicing.ordered = false
* section[lab-subsections].section ^slicing.rules = #open
* section[lab-subsections].section contains 
    bloodBankStudies 0..1 

* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 // "Blood bank studies (set)"   
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.discriminator.type = #profile
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.discriminator.path = "resolve()"
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.ordered = false
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.rules = #open
* section[lab-subsections].section[bloodBankStudies].entry contains 
    bloodGroup 0..* MS

* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup] only Reference(ChEpregObservationBloodGroup)
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup].reference 1..




Mapping: ChEpregCompositionToConceptPregnancyPassport
Source: ChEpregComposition
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* subject                                               -> "Schwangere Person | Personne enceinte"
* section[careTeam]                                     -> "Behandelnder Leistungserbringender | Fournisseur de prestations"
* section[careTeam].text                                -> "Vorhanden | Disponible"
* section[lab-subsections]                              -> "Untersuchungen und Tests | Analyses et tests"
* section[lab-subsections].section                      -> "Laboruntersuchung | Analyse de laboratoire"
* section[lab-subsections].section[bloodBankStudies]    -> "Blutgruppenzugehörigkeit | Détermination du groupe sanguin"
