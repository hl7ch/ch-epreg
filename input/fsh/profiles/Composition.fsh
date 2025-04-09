Profile: ChEpregComposition
Parent: CHCoreCompositionEPR
Id: ch-epreg-composition
Title: "CH EPREG Composition"
Description: "This profile constrains the Composition resource to represent the the first entry in the CH EPREG Document."
* . ^short = "CH EPREG Composition"
* type = $sct#736377005 // "Maternity care plan (record artifact)"
* subject only Reference(ChEpregPatientMother)

* section contains 
    careTeam 0..1 MS and 
    lab-subsections 0..1 and
    pregnancyProgress 0..1 

//-------------------------------------- Behandelnde Leistungserbringende --------------------------------------//
* section[careTeam].title 1..
* section[careTeam].code 1..
* section[careTeam].code = $loinc#85847-2 // "Patient Care team information"
* section[careTeam].text 1..
* section[careTeam].entry MS
* section[careTeam].entry only Reference(ChEpregPractitionerRoleTHCP)
* section[careTeam].entry.reference 1..
* section[careTeam].section 0..0

//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections] ^short = "Based on the section of the exchange format for Swiss laboratory reports (https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-composition.html)"
* section[lab-subsections].title 1..
* section[lab-subsections].code = $loinc#26436-6 // "Laboratory studies (set)"
* section[lab-subsections].text 0..0 
* section[lab-subsections].entry 0..0

* section[lab-subsections].section.code 1..
* section[lab-subsections].section.code from $lab-studyType-eu-lab (preferred)

// https://hl7.eu/fhir/laboratory/0.1.0/ValueSet-lab-studyType-eu-lab.html
* section[lab-subsections].section ^slicing.discriminator.type = #value
* section[lab-subsections].section ^slicing.discriminator.path = "code"
* section[lab-subsections].section ^slicing.ordered = false
* section[lab-subsections].section ^slicing.rules = #open
* section[lab-subsections].section contains 
    bloodBankStudies 0..1 and 
    chemistryStudies 0..1 and 
    hematologyStudies 0..1 and 
    microbiologyStudies 0..1

* section[lab-subsections].section[bloodBankStudies].title 1.. // Blutbank-Untersuchungen
* section[lab-subsections].section[bloodBankStudies].code 1..
* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 // "Blood bank studies (set)" 
* section[lab-subsections].section[bloodBankStudies].text 1..  
* section[lab-subsections].section[bloodBankStudies].entry only Reference(ChEpregObservationResultsLab)
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.discriminator.type = #profile
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.discriminator.path = "resolve()"
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.ordered = false
* section[lab-subsections].section[bloodBankStudies].entry ^slicing.rules = #open
* section[lab-subsections].section[bloodBankStudies].entry contains 
    bloodGroup 0..* MS
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup] only Reference(ChEpregObservationBloodGroup)
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup].reference 1..
* section[lab-subsections].section[bloodBankStudies].section 0..0

* section[lab-subsections].section[chemistryStudies].title 1.. // Chemische Untersuchungen / Klinische Chemie
* section[lab-subsections].section[chemistryStudies].code 1..
* section[lab-subsections].section[chemistryStudies].code = $loinc#18719-5 // "Chemistry studies (set)"
* section[lab-subsections].section[chemistryStudies].text 1..
* section[lab-subsections].section[chemistryStudies].entry only Reference(ChEpregObservationResultsLab)
* section[lab-subsections].section[chemistryStudies].entry.reference 1..
* section[lab-subsections].section[chemistryStudies].section 0..0

* section[lab-subsections].section[hematologyStudies].title 1.. // Hämatologische Untersuchungen / Hämatologie
* section[lab-subsections].section[hematologyStudies].code 1..
* section[lab-subsections].section[hematologyStudies].code = $loinc#18723-7 // "Hematology studies (set)"
* section[lab-subsections].section[hematologyStudies].text 1..
* section[lab-subsections].section[hematologyStudies].entry only Reference(ChEpregObservationResultsLab)
* section[lab-subsections].section[hematologyStudies].entry.reference 1..
* section[lab-subsections].section[hematologyStudies].section 0..0

* section[lab-subsections].section[microbiologyStudies].title 1.. // Mikrobiologische Untersuchungen / Mikrobiologie 
* section[lab-subsections].section[microbiologyStudies].code 1..
* section[lab-subsections].section[microbiologyStudies].code = $loinc#18725-2 // "Microbiology studies (set)"
* section[lab-subsections].section[microbiologyStudies].text 1..
* section[lab-subsections].section[microbiologyStudies].entry only Reference(ChEpregObservationResultsLab)
* section[lab-subsections].section[microbiologyStudies].entry.reference 1..
* section[lab-subsections].section[microbiologyStudies].section 0..0

//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregnancyProgress].title 1..
* section[pregnancyProgress].code 1..
* section[pregnancyProgress].code = $loinc#57059-8 // "Pregnancy visit summary note Narrative"
* section[pregnancyProgress].text 1..
* section[pregnancyProgress].entry only Reference(ChEpregEncounterPregVisit or ChEpregObservationPregProgress or ChEpregObservationResultsLab)
* section[pregnancyProgress].entry ^slicing.discriminator.type = #profile
* section[pregnancyProgress].entry ^slicing.discriminator.path = "resolve()"
* section[pregnancyProgress].entry ^slicing.ordered = false
* section[pregnancyProgress].entry ^slicing.rules = #open
* section[pregnancyProgress].entry contains 
    visit 0..* and 
    gestationalAge 0..* and 
    bodyWeight 0..* and 
    bloodPressure 0..* and 
    fetalPosition 0..*    
* section[pregnancyProgress].entry[visit] only Reference(ChEpregEncounterPregVisit)
* section[pregnancyProgress].entry[visit].reference 1..
* section[pregnancyProgress].entry[gestationalAge] only Reference(ChEpregObservationGestationalAgeInWeeks)
* section[pregnancyProgress].entry[gestationalAge].reference 1..
* section[pregnancyProgress].entry[bodyWeight] only Reference(ChEpregObservationBodyWeight)
* section[pregnancyProgress].entry[bodyWeight].reference 1..
* section[pregnancyProgress].entry[bloodPressure] only Reference(ChEpregObservationBloodPressure)
* section[pregnancyProgress].entry[bloodPressure].reference 1..
* section[pregnancyProgress].entry[fetalPosition] only Reference(ChEpregObservationFetalPosition)
* section[pregnancyProgress].entry[fetalPosition].reference 1..
* section[pregnancyProgress].section 0..0



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
* section[lab-subsections].section[bloodBankStudies]    -> "Laboruntersuchung | Analyse de laboratoire"
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup] -> "Blutgruppenzugehörigkeit | Détermination du groupe sanguin"
* section[lab-subsections].section[chemistryStudies]    -> "Laboruntersuchung | Analyse de laboratoire"
* section[lab-subsections].section[hematologyStudies]   -> "Laboruntersuchung | Analyse de laboratoire"
* section[lab-subsections].section[microbiologyStudies] -> "Laboruntersuchung | Analyse de laboratoire"
* section[pregnancyProgress]                            -> "Schwangerschaftsverlauf | Évolution de la grossesse"
* section[pregnancyProgress].entry                      -> "Weitere Untersuchungen und Fragen | Autres examens et questions"
* section[pregnancyProgress].entry[visit]               -> "Untersuchung | Examen"
* section[pregnancyProgress].entry[gestationalAge]      -> "Schwangerschaftswochen | Semaines de grossesse"
* section[pregnancyProgress].entry[bodyWeight]          -> "Aktuelles Gewicht | Poids actuel"
* section[pregnancyProgress].entry[bloodPressure]       -> "Blutdruck | Pression artérielle"
* section[pregnancyProgress].entry[fetalPosition]       -> "Kindslage | Position fœtale"
