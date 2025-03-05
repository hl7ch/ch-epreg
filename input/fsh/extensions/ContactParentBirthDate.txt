Extension: ContactParentBirthDate
Id: contact-parent-birthdate
Title: "Birth Date for Parent Contact"
Description: "Erweiterung zur Angabe des Geburtsdatums im Kontaktfeld nameOfParent"
* ^url = "http://fhir.ch/ig/ch-epreg/StructureDefinition/contact-parent-birthdate"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1
* value[x] only date
* value[x] ^short = "Birth Date"