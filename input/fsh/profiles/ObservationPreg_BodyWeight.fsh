Profile: ChEpregObservationBodyWeight
Parent: ChEpregObservationPregProgress
Id: ch-epreg-observation-body-weight
Title: "CH EPREG Observation: Body Weight"
Description: "This profile constrains the Observation resource to represent the body weight within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Body Weight"
* ^extension[$imposeProfile].valueCanonical = Canonical(http://hl7.org/fhir/StructureDefinition/bodyweight)
* category = $observation-category#vital-signs // "Vital Signs"
* code = $loinc#29463-7 // "Body weight"
* effective[x] only dateTime
* value[x] only Quantity 
* value[x] 1..
* value[x].value 1..
* value[x].unit 1..
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org"
* value[x].code 1..
* value[x].code = #kg  

       

Mapping: ChEpregObservationBodyWeightToConceptPregnancyPassport
Source: ChEpregObservationBodyWeight
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* code                                      -> "Aktuelles Gewicht | Poids actuel"
* subject                                   -> "Schwangere Person | Personne enceinte"
* effective[x]                              -> "Zeitpunkt der Untersuchung | Date de l’examen"
* performer                                 -> "Kontrolle durchgeführt durch | Contrôle effectué par"
* value[x]                                  -> "Aktuelles Gewicht | Poids actuel"
