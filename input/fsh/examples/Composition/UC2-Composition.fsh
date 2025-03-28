Instance: 7c4e431a-6222-475f-9593-764b79316afa
InstanceOf: ChEpregComposition
Usage: #example
Title: "UC 2: Composition"
Description: "Example for CH EPREG Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:658f9dd5-8034-4ba4-b7ce-d3f0f6ebb2a7"
* status = #final
* type = $sct#736377005 "Maternity care plan (record artifact)"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd)
* subject.display = "Fabienne Babyglück"
* subject.type = "Patient"
* date = "2025-03-27T14:11:00+01:00"
* author = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) // TODO
* author.display = "Tanja Allesgut @ Geburtsklinik"
* author.type = "PractitionerRole"
* title = "Schwangerschaftspass"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

//-------------------------------------- Behandelnde Leistungserbringende --------------------------------------//
* section[careTeam].title = "Behandelnde Leistungserbringende"
* section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[careTeam].text.status = #additional 
* section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Gynäkologin:</b> Tanja Allesgut, Geburtsklinik 'Willkommen auf der Welt'</p>
    <p><b>Hebamme:</b> Ruth Ohazwei, Geburtsklinik 'Willkommen auf der Welt'</p>
  </div>"
* section[careTeam].entry[0] = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527)
* section[careTeam].entry[=].display = "Tanja Allesgut @ Geburtsklinik"
* section[careTeam].entry[=].type = "PractitionerRole"
* section[careTeam].entry[+] = Reference(urn:uuid:e1b736e3-10bb-41aa-8d17-c7ba28895880)
* section[careTeam].entry[=].display = "Ruth Ohazwei @ Geburtsklinik"
* section[careTeam].entry[=].type = "PractitionerRole"
/*
//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[bloodBankStudies].title = "Blutbank-Untersuchungen"
* section[lab-subsections].section[bloodBankStudies].code = $loinc#18717-9 "Blood bank studies (set)"   
* section[lab-subsections].section[bloodBankStudies].text.status = #additional 
* section[lab-subsections].section[bloodBankStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Blutgruppe: AB Rh(D)+, 05.02.2025</li>
    </ul>    
  </div>"
* section[lab-subsections].section[bloodBankStudies].entry[0] = Reference(UC1-BloodGroup-20250205)

* section[lab-subsections].section[chemistryStudies].title = "Klinische Chemie"
* section[lab-subsections].section[chemistryStudies].code = $loinc#18719-5	"Chemistry studies (set)"
* section[lab-subsections].section[chemistryStudies].text.status = #additional 
* section[lab-subsections].section[chemistryStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Kreatinin: 1.2 mg/dl (hoch), 05.02.2025</li>
        <li>Harnsäure: 6.3 mg/dl (hoch), 05.02.2025</li>
        <li>GFR: 54 ml/min, 05.02.2025</li>
        <li>GGT: 43 U/l, 05.02.2025</li>
        <li>GOT AST, ASAT: 43 U/l, 05.02.2025</li>
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
* section[lab-subsections].section[chemistryStudies].entry[+] = Reference(UC1-BloodGlucose-20250205)

* section[lab-subsections].section[hematologyStudies].title = "Hämatologie"
* section[lab-subsections].section[hematologyStudies].code = $loinc#18723-7 "Hematology studies (set)"
* section[lab-subsections].section[hematologyStudies].text.status = #additional 
* section[lab-subsections].section[hematologyStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Hkt: 46 %, 05.02.2025</li>
        <li>Thrombozyten: 130, 05.02.2025</li>
    </ul>
  </div>"
* section[lab-subsections].section[hematologyStudies].entry[0] = Reference(UC1-Hematocrit-20250205)
* section[lab-subsections].section[hematologyStudies].entry[+] = Reference(UC1-Platelets-20250205)
*/

//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregnancyProgress].title = "Schwangerschaftsverlauf"
* section[pregnancyProgress].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[pregnancyProgress].text.status = #additional 
* section[pregnancyProgress].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <b>Untersuchung vom 27.03.2025</b>
    <ul>
        <li>SSW: 32</li>
        <li>Gewicht: 65 kg</li>
    </ul>
  </div>"
// Visit 27.03.2025
* section[pregnancyProgress].entry[visit][0] = Reference(urn:uuid:bcd224d8-010e-4f87-9417-39c859a4043b)
* section[pregnancyProgress].entry[visit][=].display = "Untersuchung, 27.03.2025"
* section[pregnancyProgress].entry[visit][=].type = "Encounter"

