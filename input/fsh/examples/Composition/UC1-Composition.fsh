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
* date = "2025-02-05T10:34:00+01:00"
* author = Reference(UC1-PetraSectionataAtFrauenzimmer)
* title = "Schwangerschaftspass"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

//-------------------------------------- Behandelnde Leistungserbringende --------------------------------------//
* section[careTeam].title = "Behandelnde Leistungserbringende"
* section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[careTeam].text.status = #additional 
* section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Gynäkologin:</b> Petra Sectionata, Frauenzimmer</p>
    <p><b>Hausärztin/Hausarzt:</b> keine</p>
    <p><b>Bemerkungen:</b> noch keine Hebamme</p>
  </div>"
* section[careTeam].entry = Reference(UC1-PetraSectionataAtFrauenzimmer)

//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[bloodBankStudies].title = "Blutbank-Untersuchungen"
* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 "Blood bank studies (set)"   
* section[lab-subsections].section[bloodBankStudies].text.status = #generated 
* section[lab-subsections].section[bloodBankStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Blutgruppe: AB Rh(D)+, 05.02.2025</li>
    </ul>    
  </div>"
* section[lab-subsections].section[bloodBankStudies].entry[0] = Reference(UC1-BloodGroup-20250205)

* section[lab-subsections].section[chemistryStudies].title = "Klinische Chemie"
* section[lab-subsections].section[chemistryStudies].code = $loinc#18719-5	"Chemistry studies (set)"
* section[lab-subsections].section[chemistryStudies].text.status = #generated 
* section[lab-subsections].section[chemistryStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Kreatinin: 1.2 mg/dl (hoch), 05.02.2025</li>
        <li>Harnsäure: 6.3 mg/dl (hoch), 05.02.2025</li>
        <li>GFR: 54 ml/min, 05.02.2025</li>
        <li>GGT: 43 U/l, 05.02.2025</li>
        <li>GOT/AST/ASAT: 43 U/l, 05.02.2025</li>
        <li>ALAT: 98 U/l, 05.02.2025</li>
        <li>AP: 109 U/l, 05.02.2025</li>
        <li>Glucose: 8.1 mmol/l, 05.02.2025</li>
    </ul>
  </div>"
* section[lab-subsections].section[chemistryStudies].entry[0] = Reference(UC1-Creatinine-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-Urate-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-GFR-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-GGT-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-AST-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-ALAT-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-AP-20250205)
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-GlucoseLab-20250205)

* section[lab-subsections].section[hematologyStudies].title = "Hämatologie"
* section[lab-subsections].section[hematologyStudies].code = $loinc#18723-7 "Hematology studies (set)"
* section[lab-subsections].section[hematologyStudies].text.status = #generated 
* section[lab-subsections].section[hematologyStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Hkt: 46 %, 05.02.2025</li>
        <li>Thrombozyten: 130, 05.02.2025</li>
    </ul>
  </div>"
* section[lab-subsections].section[hematologyStudies].entry[0] = Reference(UC1-Hematocrit-20250205)
* section[lab-subsections].section[hematologyStudies].entry[+] = Reference(UC1-Platelets-20250205)

//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregProgress].title = "Schwangerschaftsverlauf"
* section[pregProgress].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[pregProgress].text.status = #generated 
* section[pregProgress].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <b>Untersuchung vom 05.02.2025</b>
    <ul>
        <li>SSW: 37</li>
        <li>Gewicht: 82.0 kg</li>
        <li>Blutdruck: 160/100 mmHg</li>
        <li>Kindsbewegung: normal</li>
        <li>Kindslage: Schädellage</li>
    </ul>
    <b>Untersuchung vom 23.01.2025</b>
    <ul>
        <li>SSW: 35</li>
        <li>Gewicht: 80.6 kg</li>
        <li>Blutdruck: 120/80 mmHg</li>
        <li>Nächste Kontrolle am: 05.02.2025</li>
    </ul>
  </div>"
* section[pregProgress].entry[pregVisit][0] = Reference(UC1-EncounterMother20250205)
* section[pregProgress].entry[pregVisit][+] = Reference(UC1-EncounterMother20250123)
* section[pregProgress].entry[pregVisit][+] = Reference(UC1-EncounterChild20250205)
* section[pregProgress].entry[pregVisit][+] = Reference(UC1-EncounterChild20250123)
* section[pregProgress].entry[gestationalAge][0] = Reference(UC1-GestationalAgeInWeeks-20250205)
* section[pregProgress].entry[gestationalAge][+] = Reference(UC1-GestationalAgeInWeeks-20250123)
* section[pregProgress].entry[bodyWeight][0] = Reference(UC1-BodyWeight-20250205)
* section[pregProgress].entry[bodyWeight][+] = Reference(UC1-BodyWeight-20250123)
* section[pregProgress].entry[bloodPressure][0] = Reference(UC1-BloodPressure-20250205)
* section[pregProgress].entry[bloodPressure][+] = Reference(UC1-BloodPressure-20250123)
* section[pregProgress].entry[fetalMovement][0] = Reference(UC1-FetalMovement-20250205)
* section[pregProgress].entry[fetalPosition][0] = Reference(UC1-FetalPosition-20250205)
