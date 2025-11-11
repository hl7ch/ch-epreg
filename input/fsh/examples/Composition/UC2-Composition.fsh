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

//-------------------------------------- Stammdaten --------------------------------------//
* section[coreData].title = "Stammdaten"
* section[coreData].code = $loinc#86638-4 "Patient demographic and administrative information panel [FPAR]"

* section[coreData].section[careTeam].title = "Behandelnde Leistungserbringende"
* section[coreData].section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[coreData].section[careTeam].text.status = #generated 
* section[coreData].section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Gynäkologin:</b> Tanja Allesgut, Geburtsklinik 'Willkommen auf der Welt'</p>
    <p><b>Hebamme:</b> Ruth Ohazwei, Geburtsklinik 'Willkommen auf der Welt'</p>
  </div>"
* section[coreData].section[careTeam].entry[0] = Reference(urn:uuid:89029102-999c-4b69-a836-e4dbfbd55527) "Tanja Allesgut @ Geburtsklinik"
* section[coreData].section[careTeam].entry[+] = Reference(urn:uuid:e1b736e3-10bb-41aa-8d17-c7ba28895880) "Ruth Ohazwei @ Geburtsklinik"


//-------------------------------------- Serologische- & Laboruntersuchungen --------------------------------------//
* section[lab-subsections].title = "Serologische- & Laboruntersuchungen"
* section[lab-subsections].code = $loinc#26436-6 "Laboratory studies (set)"

* section[lab-subsections].section[chemistryStudies].title = "Klinische Chemie"
* section[lab-subsections].section[chemistryStudies].code = $loinc#18719-5	"Chemistry studies (set)"
* section[lab-subsections].section[chemistryStudies].text.status = #generated 
* section[lab-subsections].section[chemistryStudies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>Glucose: 3.9 mmol/l, 27.03.2025</li>
    </ul>
  </div>"
* section[lab-subsections].section[chemistryStudies].entry[0] = Reference(urn:uuid:b9145a94-ea12-479b-a031-b07d4ac9f297) "Glucose 3.9 mmol/l, 27.03.2025"


//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregProgress].title = "Schwangerschaftsverlauf"
* section[pregProgress].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[pregProgress].text.status = #generated 
* section[pregProgress].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <b>Untersuchung vom 27.03.2025</b>
    <ul>
        <li>SSW: 32</li>
        <li>Gewicht: 65 kg</li>
        <li>Blutdruck: 160/60 mmHg</li>
        <li>Urin: bland</li>
        <li>Fundusstand: Rb/2</li>
        <li>Vaginalbefund: MM 5 cm</li>
        <li>Kindsbewegung: schwach</li>
        <li>Herztöne: 110 /min</li>
        <li>Kindslage: Steisslage</li>
        <li>Weitere Untersuchungen: BZ (Teststreifen Finger): 3.9 mmol/l</li>
    </ul>
    <b>Untersuchung vom 26.03.2025</b>
    <ul>
        <li>SSW: 32</li>
        <li>Gewicht: 65.1 kg</li>
        <li>Blutdruck: 122/83 mmHg</li>
        <li>Kindslage: Steisslage</li>
        <li>Weitere Untersuchungen: BZ (Teststreifen Finger): 4.7 mmol/l, Verdauung: Sodbrennen</li>
    </ul>
  </div>"
* section[pregProgress].entry[0] = Reference(urn:uuid:4b9ca365-383e-41c8-9bac-b3c79aea1c7e) "Weitere Untersuchungen: BZ 3.9 mmol/l, 27.03.2025"
* section[pregProgress].entry[+] = Reference(urn:uuid:bbd6f1bc-1d87-4c90-a313-98bea06c3dfb) "Weitere Untersuchungen: BZ 4.7 mmol/l, 26.03.2025"
* section[pregProgress].entry[+] = Reference(urn:uuid:1ce882f2-953f-428e-a90b-a55271020fca) "Weitere Untersuchungen: Sodbrennen, 26.03.2025"
* section[pregProgress].entry[pregVisit][0] = Reference(urn:uuid:1ba6df42-ae1a-4b4a-886f-33d6b2223b1f) "Untersuchung Mutter, 27.03.2025"
* section[pregProgress].entry[pregVisit][+] = Reference(urn:uuid:8e89c502-964f-4234-9728-540d881b0380) "Untersuchung Mutter, 26.03.2025"
* section[pregProgress].entry[pregVisit][+] = Reference(urn:uuid:833fd8f2-b75f-4dba-990f-6c46aa468d51) "Untersuchung Kind, 27.03.2025"
* section[pregProgress].entry[pregVisit][+] = Reference(urn:uuid:22aeb067-85f9-4b3b-9301-161604005206) "Untersuchung Kind, 26.03.2025"
* section[pregProgress].entry[gestationalAge][0] = Reference(urn:uuid:84869994-4348-4ad3-95ee-d9b0faf75dba) "SSW 32, 27.03.2025"
* section[pregProgress].entry[gestationalAge][+] = Reference(urn:uuid:2f167f2f-44f7-49e3-a970-d7f7a6573cd3) "SSW 32, 26.03.2025"
* section[pregProgress].entry[bodyWeight][0] = Reference(urn:uuid:e1c73669-f935-47d1-9dcd-fab76a38bdb7) "Gewicht 65 kg, 27.03.2025" 
* section[pregProgress].entry[bodyWeight][+] = Reference(urn:uuid:f339e056-53d6-4247-9226-5339123fbd14) "Gewicht 65 kg, 26.03.2025" 
* section[pregProgress].entry[bloodPressure][0] = Reference(urn:uuid:4268bd90-eff8-41f4-a7b4-2178dac0e470) "Blutdruck 160/60 mmHg, 27.03.2025" 
* section[pregProgress].entry[bloodPressure][+] = Reference(urn:uuid:e949f912-fc27-4849-8632-09caad9fe897) "Blutdruck 122/83 mmHg, 26.03.2025" 
* section[pregProgress].entry[urineFinding][0] = Reference(urn:uuid:2db81543-7bf1-4965-a75e-00400c62e78b) "Urin bland, 27.03.2025" 
* section[pregProgress].entry[fundusHeight][0] = Reference(urn:uuid:6eafd07b-c40a-4864-874c-cfe2d5b222ed) "Fundusstand Rb/2, 27.03.2025"  
* section[pregProgress].entry[vaginaFeature][0] = Reference(urn:uuid:c9bba019-9ed9-4574-84e2-f7d302e8f5d0) "Vaginalbefund MM 5 cm, 27.03.2025"  
* section[pregProgress].entry[fetalMovement][0] = Reference(urn:uuid:3e120206-7aa2-4ced-82c3-3704868e023f) "Kindsbewegung schwach, 27.03.2025"
* section[pregProgress].entry[fetalHeartFeature][0] = Reference(urn:uuid:d0b53779-fde0-4780-9ff4-9ba2a4cf9393) "Herztöne 110 /min, 27.03.2025"
* section[pregProgress].entry[fetalPosition][0] = Reference(urn:uuid:a5c14df0-3dca-4530-a22a-072af14178b1) "Kindslage Steisslage, 27.03.2025"
* section[pregProgress].entry[fetalPosition][+] = Reference(urn:uuid:4a907770-6665-4fb4-b186-afd0ddf48742) "Kindslage Steisslage, 26.03.2025"
