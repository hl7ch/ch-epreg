Profile: ChEpregObservationAbdominalCircumference
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-abdominal-circumference
Title: "CH EPREG Observation (Mother): Abdominal Circumference"
Description: "This profile constrains the Observation resource to represent the birth abdominal circumference."
* . ^short = "CH EPREG Observation: Abdominal Circumference"
* code = $sct#3941000175104 // "Birth abdominal circumference (observable entity)"
* effective[x] only dateTime
* value[x] only Quantity 
* value[x] 1..
* value[x].value 1..
* value[x].unit 1..
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org"
* value[x].code 1..
* value[x].code = #cm  
* subject only Reference(ChEpregPatientMother)
* encounter only Reference(ChEpregEncounterMother)

       

Mapping: ChEpregObservationAbdominalCircumferenceToConceptPregnancyPassport
Source: ChEpregObservationAbdominalCircumference
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "BU (Bauchumfang) | Circonférence abdominale"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "BU (Bauchumfang) | Circonférence abdominale"
* encounter                                 -> "Untersuchung | Examen"
