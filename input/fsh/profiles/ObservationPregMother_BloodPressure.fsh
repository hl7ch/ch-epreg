Profile: ChEpregObservationBloodPressure
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-blood-pressure
Title: "CH EPREG Observation (Mother): Blood Pressure"
Description: "This profile constrains the Observation resource to represent the blood pressure."
* . ^short = "CH EPREG Observation: Blood Pressure"
* ^extension[$imposeProfile].valueCanonical = Canonical(http://hl7.org/fhir/StructureDefinition/bp)
* category = $observation-category#vital-signs // "Vital Signs"
* code = $loinc#85354-9 // "Blood pressure panel with all children optional"
* effective[x] only dateTime
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    SystolicBP 1..1 and
    DiastolicBP 1..1
* component[SystolicBP].code = $loinc#8480-6 // "Systolic blood pressure"
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].value[x] 1..
* component[SystolicBP].value[x].value 1..
* component[SystolicBP].value[x].unit 1..
* component[SystolicBP].value[x].system 1..
* component[SystolicBP].value[x].system = "http://unitsofmeasure.org"
* component[SystolicBP].value[x].code 1..
* component[SystolicBP].value[x].code = #mm[Hg] 
* component[DiastolicBP].code = $loinc#8462-4 // "Diastolic blood pressure"
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].value[x] 1..
* component[DiastolicBP].value[x].value 1..
* component[DiastolicBP].value[x].unit 1..
* component[DiastolicBP].value[x].system 1..
* component[DiastolicBP].value[x].system = "http://unitsofmeasure.org"
* component[DiastolicBP].value[x].code 1..
* component[DiastolicBP].value[x].code = #mm[Hg] 
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)
       

Mapping: ChEpregObservationBloodPressureToConceptPregnancyPassport
Source: ChEpregObservationBloodPressure
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Blutdruck | Pression artérielle"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* component[SystolicBP].code                -> "Systolischer Blutdruckwert | Valeur de la pression artérielle systolique"
* component[SystolicBP].value[x]            -> "Systolischer Blutdruckwert | Valeur de la pression artérielle systolique"
* component[DiastolicBP].code               -> "Diastolischer Blutdruckwert | Valeur de la pression artérielle diastolique"
* component[DiastolicBP].value[x]           -> "Diastolischer Blutdruckwert | Valeur de la pression artérielle diastolique"
* encounter                                 -> "Untersuchung | Examen"
