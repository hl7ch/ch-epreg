Instance: UC3-Appointment20250310
InstanceOf: ChEpregAppointmentNextVisit
Usage: #example
Title: "UC 3: Next Visit 10.03.2025"
Description: "Example for CH EPREG Appointment: Next Visit"
* language = #de-CH
* status = #booked
* start = "2025-03-10T14:30:00+01:00"
* end = "2025-03-10T15:00:00+01:00"
* participant[patient].actor = Reference(UC3-SophieDoppelherz)
* participant[patient].required = #required
* participant[patient].status = #accepted
* participant[treatingHealthcareProvider].actor = Reference(UC3-ClaudiaFruehblickAtFrauenzimmer)
* participant[treatingHealthcareProvider].required = #required
* participant[treatingHealthcareProvider].status = #accepted