Instance: b9145a94-ea12-479b-a031-b07d4ac9f297
InstanceOf: ChEpregObservationResultsLab
Usage: #example
Title: "UC 2: Glucose Lab (27.03.2025)"
Description: "Example for CH EPREG Observation: Results Laboratory"
* language = #de-CH
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2341-6 "Glucose [Mass/volume] in Blood by Test strip manual"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* effectiveDateTime = "2025-03-27"
* performer = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* valueQuantity = 3.9 $ucum#mmol/L "millimole per liter"
* interpretation = $v3-ObservationInterpretation#L "Low"
