Profile: ChEpregPatientFetus
Parent: CHCorePatient
Id: ch-epreg-patient-fetus
Title: "CH EPREG Patient: Fetus"
Description: "This profile constrains the Patient resource to represent the unborn child/fetus. (See also the [IBCM Fetal Record Profile](https://hl7.org/fhir/uv/ibcm/2024Sep/StructureDefinition-ibcm-fetal-record.html).)"
* . ^short = "CH EPREG Patient: Fetus"
* identifier contains internalPid 0..*
* identifier[internalPid] ^short = "Information to distinguish the fetuses in the case of multiple pregnancy"
* identifier[internalPid] ^patternIdentifier.type = $v2-0203#PI // "Patient internal identifier" 
* identifier[internalPid].system 1.. 
* identifier[internalPid].value 1..


Mapping: ChEpregPatientFetusToConceptPregnancyPassport
Source: ChEpregPatientFetus
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* identifier[internalPid]                   -> "Identifikation | Identification"
