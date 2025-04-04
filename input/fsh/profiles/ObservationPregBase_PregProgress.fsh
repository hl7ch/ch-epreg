Profile: ChEpregObservationPregProgress
Parent: Observation 
Id: ch-epreg-observation-preg-progress
Title: "CH EPREG Observation: Pregnancy Progress"
Description: "This base profile constrains the Observation resource to represent the pregnancy progress within the context of the pregnancy passport."
* . ^short = "CH EPREG Observation: Pregnancy Progress"
* subject 1..
* subject only Reference(ChEpregPatientMother)
* subject.reference 1..
* effective[x] 1.. 
* performer 1..
// * performer only Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson)
* performer.reference 1..
* value[x] MS 
* component.value[x] MS                     
* encounter 1.. 
* encounter.reference 1..
* encounter only Reference(ChEpregEncounterPregVisit)
