Profile: ChEpregObservationWeightGain
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-weight-gain
Title: "CH EPREG Observation (Mother): Weight Gain"
Description: "This profile constrains the Observation resource to represent the gestational weight gain."
* . ^short = "CH EPREG Observation: Weight Gain"
* code = $sct#816161008 // "Measured gestational weight gain (observable entity)"
* effective[x] only dateTime
* value[x] only Quantity 
* value[x] 1..
* value[x].value 1..
* value[x].unit 1..
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org"
* value[x].code 1..
* value[x].code = #kg  
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)
* derivedFrom only Reference(ChEpregObservationBodyWeight)
* derivedFrom ^short = "Body weight measurement (e.g., at the beginning of pregnancy, current measurement) from which this gestational weight gain is derived"
* derivedFrom.reference 1..

       

Mapping: ChEpregObservationWeightGainToConceptPregnancyPassport
Source: ChEpregObservationWeightGain
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Gewichtszunahme	| Prise de poids"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Gewichtszunahme	| Prise de poids"
* encounter                                 -> "Untersuchung | Examen"
