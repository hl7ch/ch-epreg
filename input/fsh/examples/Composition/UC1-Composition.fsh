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

//-------------------------------------- Stammdaten --------------------------------------//
* section[coreData].title = "Stammdaten"
* section[coreData].code = $loinc#86638-4 "Patient demographic and administrative information panel [FPAR]"

* section[coreData].section[insurance].title = "Versicherung"
* section[coreData].section[insurance].code = $loinc#35525-5 "Clinical trial protocol Financing and insurance section"
* section[coreData].section[insurance].text.status = #additional 
* section[coreData].section[insurance].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Grundversicherung:</b> Sanitas</p>
    <p><b>Zusatzversicherung:</b> Helsana</p>
  </div>"
* section[coreData].section[insurance].entry[0] = Reference(UC1-BasicInsurance)
* section[coreData].section[insurance].entry[+] = Reference(UC1-SupplementaryInsurance)

* section[coreData].section[parent].title = "Elternteil"
* section[coreData].section[parent].code = $loinc#54136-7 "Relationship to patient Family member"
* section[coreData].section[parent].text.status = #additional 
* section[coreData].section[parent].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Biologischer Vater:</b> Pierre Kinderlieb</p>
  </div>"
* section[coreData].section[parent].entry = Reference(UC1-RelatedPerson-BiologicalFather)

* section[coreData].section[careTeam].title = "Behandelnde Leistungserbringende"
* section[coreData].section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[coreData].section[careTeam].text.status = #additional 
* section[coreData].section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Gynäkologin:</b> Petra Sectionata, Frauenzimmer</p>
    <p><b>Hausärztin/Hausarzt:</b> keine</p>
  </div>"
* section[coreData].section[careTeam].entry = Reference(UC1-PetraSectionataAtFrauenzimmer)

//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[bloodBankStudies].title = "Blutbank-Untersuchungen"
* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 "Blood bank studies (set)"   
* section[lab-subsections].section[bloodBankStudies].text.status = #generated 
* section[lab-subsections].section[bloodBankStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Blutgruppe: AB Rh+, 05.02.2025</li>
        <li>Fetaler RhD: Rh+, 05.02.2025</li>
    </ul>    
  </div>"
* section[lab-subsections].section[bloodBankStudies].entry[bloodGroup][0] = Reference(UC1-BloodGroup-20250205)
* section[lab-subsections].section[bloodBankStudies].entry[fetalRhD][0] = Reference(UC1-FetalRhD-20250205)

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
        <li>Gewichtszunahme: 12.5 kg</li>
        <li>Blutdruck: 160/100 mmHg</li>
        <li>Urin: Zucker positiv, Nitrit positiv</li>
        <li>Bauchumfang: 101 cm</li>
        <li>Fundusstand: Rb/0</li>
        <li>Vaginalbefund: bland</li>
        <li>Kindsbewegung: normal</li>
        <li>Herztöne: 162 /min</li>
        <li>Kindslage: Schädellage</li>
    </ul>
    <b>Untersuchung vom 23.01.2025</b>
    <ul>
        <li>SSW: 35</li>
        <li>Gewicht: 80.6 kg</li>
        <li>Gewichtszunahme: 11.1 kg</li>
        <li>Blutdruck: 120/80 mmHg</li>
    </ul>
  </div>"
* section[pregProgress].entry[pregExamination][0] = Reference(UC1-EncounterMother20250205)
* section[pregProgress].entry[pregExamination][+] = Reference(UC1-EncounterMother20250123)
* section[pregProgress].entry[pregExamination][+] = Reference(UC1-EncounterChild20250205)
* section[pregProgress].entry[pregExamination][+] = Reference(UC1-EncounterChild20250123)
* section[pregProgress].entry[gestationalAge][0] = Reference(UC1-GestationalAgeInDays-20250205)
* section[pregProgress].entry[gestationalAge][+] = Reference(UC1-GestationalAgeInDays-20250123)
* section[pregProgress].entry[bodyWeight][0] = Reference(UC1-BodyWeight-20250205)
* section[pregProgress].entry[bodyWeight][+] = Reference(UC1-BodyWeight-20250123)
* section[pregProgress].entry[weightGain][0] = Reference(UC1-WeightGain-20250205)
* section[pregProgress].entry[weightGain][+] = Reference(UC1-WeightGain-20250123)
* section[pregProgress].entry[bloodPressure][0] = Reference(UC1-BloodPressure-20250205)
* section[pregProgress].entry[urineFinding][0] = Reference(UC1-UrineFinding-20250205)
* section[pregProgress].entry[abdominalCircumference][0] = Reference(UC1-AbdominalCircumference-20250205)
* section[pregProgress].entry[fundusHeight][0] = Reference(UC1-FundusHeight-20250205)
* section[pregProgress].entry[vaginaFeature][0] = Reference(UC1-VaginaFeature-20250205)
* section[pregProgress].entry[bloodPressure][+] = Reference(UC1-BloodPressure-20250123)
* section[pregProgress].entry[fetalMovement][0] = Reference(UC1-FetalMovement-20250205)
* section[pregProgress].entry[fetalHeartFeature][0] = Reference(UC1-FetalHeartFeature-20250205)
* section[pregProgress].entry[fetalPosition][0] = Reference(UC1-FetalPosition-20250205)
