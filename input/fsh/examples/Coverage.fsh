Instance: CoverageMeier
InstanceOf: CHEPREGCoverage
Title: "Coverage Meier"
Description: "Coverage resource for Petra Meier"

* identifier[0].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[0].value = "80756015090002647590"

* status = #active

* type.coding[0].system = "http://fhir.ch/ig/ch-vs/ValueSet-mainguarantor"
* type.coding[0].code = #1
* type.coding[0].display = "Krankenversicherung (obligat.)"

* beneficiary[0].reference = "Patient/PetraMeier"

* payor[0].reference = "Organization/Sanitas"

* identifier[1].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[1].value = "80756015090112734590"
* status = #active
* type.coding[1].system = "http://fhir.ch/ig/ch-vs/ValueSet-mainguarantor"
* type.coding[1].code = #ZV
* type.coding[1].display = "Zusatzversicherung"
//* beneficiary[1].reference = "Patient/PetraMeier"
* payor[1].reference = "Organization/Visana"

