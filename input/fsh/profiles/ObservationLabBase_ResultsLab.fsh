Profile: ChEpregObservationResultsLab
Parent: Observation
Id: ch-epreg-observation-results-lab
Title: "CH EPREG Observation: Results Laboratory"
Description: "This base profile constrains the Observation resource to represent the laboratory results."
* . ^short = "CH EPREG Observation: Results Laboratory"
* ^extension[$imposeProfile].valueCanonical = Canonical(http://fhir.ch/ig/ch-lab-report/StructureDefinition/ch-lab-observation-results-laboratory)
* code from http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-eu-lab (preferred)
* subject 1..
* subject only Reference(ChEpregPatientMother)
* subject.reference 1..
* effective[x] 1.. 
* performer 1..
* performer only Reference(CHCorePractitionerRole or CHCorePractitioner or CHCoreOrganization or CareTeam or CHCorePatient or RelatedPerson)
* performer.reference 1..
* value[x] MS 
* component.value[x] MS                     

