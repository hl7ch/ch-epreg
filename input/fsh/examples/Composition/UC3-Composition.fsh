Instance: UC3-Composition
InstanceOf: ChEpregComposition
Usage: #example
Title: "UC 3: Composition"
Description: "Example for CH EPREG Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:064d9096-5f85-4aa1-8bd9-d3b6397eff29"
* status = #final
* type = $sct#736377005 "Maternity care plan (record artifact)"
* subject = Reference(UC3-SophieDoppelherz)
* date = "2025-02-10T15:45:00+01:00"
* author = Reference(UC3-ClaudiaFruehblickAtFrauenzimmer)
* title = "Schwangerschaftspass"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

//-------------------------------------- Stammdaten --------------------------------------//
* section[coreData].title = "Stammdaten"
* section[coreData].code = $loinc#86638-4 "Patient demographic and administrative information panel [FPAR]"

* section[coreData].section[careTeam].title = "Behandelnde Leistungserbringende"
* section[coreData].section[careTeam].code = $loinc#85847-2 "Patient Care team information"
* section[coreData].section[careTeam].text.status = #additional 
* section[coreData].section[careTeam].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p><b>Gynäkologin:</b> Claudia Frühblick, Frauenzimmer</p>
  </div>"
* section[coreData].section[careTeam].entry = Reference(UC3-ClaudiaFruehblickAtFrauenzimmer)

//-------------------------------------- Schwangerschaftsverlauf --------------------------------------//
* section[pregProgress].title = "Schwangerschaftsverlauf"
* section[pregProgress].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[pregProgress].text.status = #generated 
* section[pregProgress].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <b>Untersuchung vom 10.02.2025</b>
    <ul>
        <li>SSW: 7</li>
        <li>Gewicht: 64 kg</li>
        <li>Blutdruck: 120/75 mmHg</li>
        <li>Urin: bland</li>
        <li>Herztöne Kind A: 155 /min</li>
        <li>Herztöne Kind B: 155 /min</li>
    </ul>
  </div>"
* section[pregProgress].entry[pregVisit][0] = Reference(UC3-EncounterMother20250210)
* section[pregProgress].entry[pregVisit][+] = Reference(UC3-EncounterChildA20250210)
* section[pregProgress].entry[pregVisit][+] = Reference(UC3-EncounterChildB20250210)
* section[pregProgress].entry[gestationalAge] = Reference(UC3-GestationalAgeInDays-20250210)
* section[pregProgress].entry[bodyWeight] = Reference(UC3-BodyWeight-20250210)
* section[pregProgress].entry[bloodPressure] = Reference(UC3-BloodPressure-20250210)
* section[pregProgress].entry[urineFinding] = Reference(UC3-UrineFinding-20250210)
* section[pregProgress].entry[fetalHeartFeature][0] = Reference(UC3-FetalHeartFeatureChildA-20250210)
* section[pregProgress].entry[fetalHeartFeature][+] = Reference(UC3-FetalHeartFeatureChildB-20250210)
