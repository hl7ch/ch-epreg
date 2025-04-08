Instance: 7c4e431a-6222-475f-9593-764b79316afa
InstanceOf: ChEpregComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:658f9dd5-8034-4ba4-b7ce-d3f0f6ebb2a7"
* status = #final
* type = $sct#736377005 "Maternity care plan (record artifact)"
* subject = Reference(urn:uuid:76c2c5aa-3d7f-438d-b23d-56ce827695fd) "Fabienne Babyglück"
* date = "2025-03-27T14:11:00+01:00"
* author = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
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
* section[careTeam].entry[0] = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* section[careTeam].entry[+] = Reference(urn:uuid:e1b736e3-10bb-41aa-8d17-c7ba28895880) "Ruth Ohazwei @ Geburtsklinik"


//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[chemistryStudies].title = "Klinische Chemie"
* section[lab-subsections].section[chemistryStudies].code = $loinc#18719-5	"Chemistry studies (set)"
* section[lab-subsections].section[chemistryStudies].text.status = #additional 
* section[lab-subsections].section[chemistryStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Glucose: 3.9 mmol/l, 27.03.2025</li>
    </ul>
  </div>"
* section[lab-subsections].section[chemistryStudies].entry[0] = Reference(urn:uuid:b9145a94-ea12-479b-a031-b07d4ac9f297) "Glucose 3.9 mmol/l, 27.03.2025"


//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregnancyProgress].title = "Schwangerschaftsverlauf"
* section[pregnancyProgress].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[pregnancyProgress].text.status = #additional 
* section[pregnancyProgress].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <b>Untersuchung vom 26.03.2025</b>
    <ul>
        <li>SSW: 32</li>
        <li>Gewicht: 65.1 kg</li>
        <li>Blutdruck: 122/83 mmHg</li>
        <li>Glucose: 4.7 mmol/l</li>
        <li>Nächste Kontrolle am: 02.04.2025</li>
    </ul>
    <b>Untersuchung vom 27.03.2025</b>
    <ul>
        <li>SSW: 32</li>
        <li>Gewicht: 65 kg</li>
        <li>Blutdruck: 160/60 mmHg</li>
        <li>Glucose: 3.9 mmol/l</li>
    </ul>
  </div>"
* section[pregnancyProgress].entry[0] = Reference(urn:uuid:8e89c502-964f-4234-9728-540d881b0380) "Untersuchung, 26.03.2025"
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f) "Untersuchung, 27.03.2025"
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:2f167f2f-44f7-49e3-a970-d7f7a6573cd3) "SSW 32, 26.03.2025"
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:84869994-4348-4ad3-95ee-d9b0faf75dba) "SSW 32, 27.03.2025"
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:f339e056-53d6-4247-9226-5339123fbd14) "Gewicht 65 kg, 26.03.2025" 
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:e1c73669-f935-47d1-9dcd-fab76a38bdb7) "Gewicht 65 kg, 27.03.2025" 
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:e949f912-fc27-4849-8632-09caad9fe897) "Blutdruck 122/83 mmHg, 26.03.2025"  
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:4268bd90-eff8-41f4-a7b4-2178dac0e470) "Blutdruck 160/60 mmHg, 27.03.2025" 
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:bbd6f1bc-1d87-4c90-a313-98bea06c3dfb) "Glucose 4.7 mmol/l, 26.03.2025"  
* section[pregnancyProgress].entry[+] = Reference(urn:uuid:4b9ca365-383e-41c8-9bac-b3c79aea1c7e) "Glucose 3.9 mmol/l, 27.03.2025" 
