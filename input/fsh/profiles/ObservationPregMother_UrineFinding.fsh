Profile: ChEpregObservationUrineFinding
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-urine-finding
Title: "CH EPREG Observation (Mother): Urine Finding"
Description: "This profile constrains the Observation resource to represent the findings of the urine dipstick test (e.g. protein, glucose, nitrite, bacteria)."
* . ^short = "CH EPREG Observation: Urine Finding"
* code = $sct#417597005 // "Urine dipstick test finding (finding)"
* effective[x] only dateTime
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)
* value[x] only string
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    protein 0..1 and
    glucose 0..1 and 
    nitrite 0..1 and
    bacteria 0..1
* component[protein].code = $loinc#20454-5 // "Protein [Presence] in Urine by Test strip"
* component[protein].value[x] only string
* component[protein].value[x] 1..
* component[glucose].code = $loinc#25428-4 // "Glucose [Presence] in Urine by Test strip"
* component[glucose].value[x] only string
* component[glucose].value[x] 1..
* component[nitrite].code = $loinc#5802-4 // "Nitrite [Presence] in Urine by Test strip"
* component[nitrite].value[x] only string
* component[nitrite].value[x] 1..
* component[bacteria].code = $loinc#87829-8	// "Bacteria [Presence] in Urine"
* component[bacteria].value[x] only string
* component[bacteria].value[x] 1..
       

Mapping: ChEpregObservationUrineFindingToConceptPregnancyPassport
Source: ChEpregObservationUrineFinding
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Urin | Urine"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* encounter                                 -> "Untersuchung | Examen"
* value[x]                                  -> "Urin | Urine"
* component[protein].code                   -> "Eiweiss | Protéines"
* component[protein].value[x]               -> "Eiweiss | Protéines"
* component[glucose].code                   -> "Zucker | Glucose"
* component[glucose].value[x]               -> "Zucker | Glucose"
* component[nitrite].code                   -> "Nitrit | Nitrites"
* component[nitrite].value[x]               -> "Nitrit | Nitrites"
* component[bacteria].code                  -> "Bakterien | Bactéries"
* component[bacteria].value[x]              -> "Bakterien | Bactéries"
