Profile: ChEpregPatientChild
Parent: CHCorePatient
Id: ch-epreg-patient-child
Title: "CH EPREG Patient: Child"
Description: "This profile constrains the Patient resource to represent the child (fetus/newborn). (See also the [IBCM Fetal Record Profile](https://hl7.org/fhir/uv/ibcm/2024Sep/StructureDefinition-ibcm-fetal-record.html).)"
* . ^short = "CH EPREG Patient: Child"


Mapping: ChEpregPatientChildToConceptPregnancyPassport
Source: ChEpregPatientChild
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
* identifier[LocalPid]                   -> "Identifikation | Identification"
