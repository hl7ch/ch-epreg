Profile: ChEpregObservationPregProgress
Parent: Observation 
Id: ch-epreg-observation-preg-progress
Title: "CH EPREG Observation (Base): Pregnancy Progress"
Description: "This base profile constrains the Observation resource to represent the pregnancy progress."
* . ^short = "CH EPREG Observation: Pregnancy Progress"
* subject 1..
* subject only Reference(ChEpregPatientMother or ChEpregPatientChild)
* subject.reference 1..
* effective[x] 1.. 
* performer 1..
* performer only Reference(ChEpregPractitionerRoleTHCP)
* performer.reference 1..
* value[x] MS 
* component.value[x] MS                     
* encounter 1.. 
* encounter.reference 1..
* encounter only Reference(ChEpregEncounterMother or ChEpregEncounterChild)
* code ^binding.description = "See also [Guidance Mapping Further Examinations](guidance-vs-mapping.html#further-examinations)." 
