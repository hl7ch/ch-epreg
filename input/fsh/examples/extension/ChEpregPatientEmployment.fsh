Extension: PatientEmployment
Id: patient-employment
Title: "Patient Employment Information"
Description: "An extension to represent a patient's employment information, including employer, job position, and work address."
Status: active
Context: Patient

* extension contains
    position 0..1 MS "The job position of the patient"
    
* extension[position].valueString 1..1
