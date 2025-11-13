Profile: ChEpregAppointmentNextExamination
Parent: Appointment
Id: ch-epreg-appointment-next-examination
Title: "CH EPREG Appointment: Next Examination"
Description: "This profile constrains the Appointment resource to represent the date of the planned next pregnancy examination."
* . ^short = "CH EPREG Appointment: Next Examination"
* status = #booked
* start 1..
* end 1..
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant contains
    patient 1..1 and
    treatingHealthcareProvider 1..1
* participant[patient].actor 1..1
* participant[patient].actor only Reference(ChEpregPatientMother)
* participant[patient].required 1..
* participant[patient].required = #required
* participant[patient].status = #accepted
* participant[treatingHealthcareProvider].actor 1..1
* participant[treatingHealthcareProvider].actor only Reference(ChEpregPractitionerRoleTHCP)
* participant[treatingHealthcareProvider].required 1..
* participant[treatingHealthcareProvider].required = #required
* participant[treatingHealthcareProvider].status = #accepted



Mapping: ChEpregAppointmentNextExaminationToConceptPregnancyPassport
Source: ChEpregAppointmentNextExamination
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Nächste Kontrolle | Prochain contrôle"
* participant[patient]                      -> "Schwangere Person | Personne enceinte"
* participant[treatingHealthcareProvider]   -> "Behandelnder Leistungserbringender | Fournisseur de prestations"

