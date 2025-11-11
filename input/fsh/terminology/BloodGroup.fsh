// https://hl7.org/fhir/uv/ips/ValueSet-results-blood-group-uv-ips.html
// https://doc.mednet.swiss/fhir/ValueSet-mni-obs-bloodGroup.html

ValueSet: BloodGroup
Id: blood-group
Title: "CH EPREG VS: Blood Group"
Description: "This value set includes SNOMED CT codes for blood group findings."
* ^experimental = false

* $sct#112144000 "Blood group A (finding)"
* $sct#278149003 "Blood group A Rh(D) positive (finding)"
* $sct#278152006 "Blood group A Rh(D) negative (finding)"

* $sct#112149005 "Blood group B (finding)"
* $sct#278150003 "Blood group B Rh(D) positive (finding)"
* $sct#278153001 "Blood group B Rh(D) negative (finding)"

* $sct#165743006 "Blood group AB (finding)"
* $sct#278151004 "Blood group AB Rh(D) positive (finding)"
* $sct#278154007 "Blood group AB Rh(D) negative (finding)"

* $sct#58460004 "Blood group O (finding)"
* $sct#278147001 "Blood group O Rh(D) positive (finding)"
* $sct#278148006 "Blood group O Rh(D) negative (finding)"

* $sct#165747007 "RhD positive (finding)"
* $sct#165746003 "RhD negative (finding)"
