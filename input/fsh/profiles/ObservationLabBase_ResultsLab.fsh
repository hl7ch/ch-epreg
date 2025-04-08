Profile: ChEpregObservationResultsLab
Parent: Observation
Id: ch-epreg-observation-results-lab
Title: "CH EPREG Observation: Results Laboratory"
Description: "This base profile constrains the Observation resource to represent the laboratory results within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Results Laboratory"
* ^extension[$imposeProfile].valueCanonical = Canonical(http://fhir.ch/ig/ch-lab-report/StructureDefinition/ch-lab-observation-results-laboratory)
* subject 1..
* subject only Reference(ChEpregPatientMother)
* subject.reference 1..
* effective[x] 1.. 
* performer 1..
// * performer only Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson)
* performer.reference 1..
* value[x] MS 
* component.value[x] MS                     

