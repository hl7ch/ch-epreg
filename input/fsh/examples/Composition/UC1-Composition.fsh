Instance: UC1-Composition
InstanceOf: ChEpregComposition
Usage: #example
Title: "UC 1: Composition"
Description: "Example for CH EPREG Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"
* status = #final
* type = $sct#736377005 "Maternity care plan (record artifact)"
* subject = Reference(UC1-KatrinKinderlieb)
* date = "2025-02-18T10:34:00+01:00"
* author = Reference(UC1-PetraSectionataAtFrauenzimmer)
* title = "Schwangerschaftspass"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[careTeam].title = "Behandelnde Leistungserbringende"
* section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[careTeam].text.status = #additional 
* section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p>Gynäkologin: Petra Sectionata, Frauenzimmer</p>
    <p>Hausärztin/Hausarzt: keine</p>
    </div>"
* section[careTeam].entry = Reference(UC1-PetraSectionataAtFrauenzimmer)

* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[0].title = "Chemische Untersuchungen"
* section[lab-subsections].section[=].code = $loinc#18719-5	"Chemistry studies (set)"
* section[lab-subsections].section[=].text.status = #additional 
* section[lab-subsections].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p>Harnsäure: 6.3 mg/dL, 05.02.2025</p>
    </div>"
* section[lab-subsections].section[=].entry = Reference(UC1-Urate-20250205)

* section[lab-subsections].section[bloodBankStudies].title = "Blutbank-Studien"
* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 // "Blood bank studies (set)"   
* section[lab-subsections].section[bloodBankStudies].text.status = #additional 
* section[lab-subsections].section[bloodBankStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p>Blutgruppe: AB Rh(D)+, 05.02.2025</p>
    </div>"
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup] = Reference(UC1-BloodGroup-20250205)

// 18722-9 Fertilitätsuntersuchungen
// 18723-7 Hämatologische Untersuchungen
// 18725-2 Mikrobiologische Untersuchungen
// 18728-6 Toxikologische Untersuchungen 
// 26436-6 Laboruntersuchungen