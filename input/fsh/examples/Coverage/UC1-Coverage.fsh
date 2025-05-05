Instance: UC1-BasicInsurance
InstanceOf: ChEpregCoverage
Usage: #example
Title: "UC 1: Basic Insurance"
Description: "Example for CH EPREG Coverage"
* language = #de-CH
* status = #active
* identifier[insuranceNumber].type = $v2-0203#MB "Member Number"
* identifier[insuranceNumber].system = "http://example.com/identifiers/insurance-number"
* identifier[insuranceNumber].value = "123456789"
* type = $bfs-medstats-25-mainguarantor#1 "Krankenversicherung (obligat.)"
* beneficiary = Reference(UC1-KatrinKinderlieb)
* payor = Reference(Sanitas)
* contained = Sanitas

Instance: Sanitas
InstanceOf: CHCoreOrganization
Usage: #inline
* name = "Sanitas"


Instance: UC1-SupplementaryInsurance
InstanceOf: ChEpregCoverage
Usage: #example
Title: "UC 1: Supplementary Insurance"
Description: "Example for CH EPREG Coverage"
* language = #de-CH
* status = #active
* identifier[insuranceNumber].type = $v2-0203#MB "Member Number"
* identifier[insuranceNumber].system = "http://example.com/identifiers/insurance-number"
* identifier[insuranceNumber].value = "555555555"
* type = $mainguarantor#ZV "Zusatzversicherung"
* beneficiary = Reference(UC1-KatrinKinderlieb)
* payor = Reference(Helsana)
* contained = Helsana

Instance: Helsana
InstanceOf: CHCoreOrganization
Usage: #inline
* name = "Helsana"