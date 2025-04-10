### Mother and Fetus Relationship
The relationship between mother and fetus/fetuses is modeled using the `Patient` and `RelatedPerson` resources, as depicted in the figures below. This approach follows the guidelines outlined in the [Mother and newborn relationships](https://hl7.org/fhir/R4/patient.html#maternity) section of the FHIR specification and the [International Birth And Child Model Implementation Guide](https://hl7.org/fhir/uv/ibcm/2024Sep/index.html).

**Example 1:**    
{% include img.html img="mother-fetus.png" caption="Fig.: A relationship between a mother and a single fetus, where both have their own associated observations" width="65%" %}

Example instances: [Patient: Mother](Patient-UC1-KatrinKinderlieb.html) --> [RelatedPerson: Mother](RelatedPerson-UC1-RelatedPerson-Mother.html) --> [Patient: Fetus](Patient-UC1-Fetus.html)

**Example 2:**    
{% include img.html img="mother-fetuses.png" caption="Fig.: Relationship between a mother and multiple fetuses (e.g., twins)" width="65%" %}


### Mapping Value Sets Concept
The concept for the exchange format of the electronic pregnancy passport ([de](https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/eDossiergrossesse_Concept_fr.pdf)) defines specific value sets for various fields. These value sets, which contain the values in both German and French, are included in the concept document.

When representing this data in an FHIR document, the goal is to maintain compatibility with (Swiss) base concepts, such as those defined in CH Core or CH Term, whenever possible. To achieve this, the following mappings describe how the defined values from the concept paper are represented as coded values in FHIR resources (see also [FHIR Terminology](https://hl7.org/fhir/R4/terminology-module.html)), making use of existing value sets where available.

#### Healthcare Provider 

**Profile:** [CH EPREG PractitionerRole: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitionerrole-thcp.html)         
**Examples:** [Petra Sectionata @ Frauenzimmer](PractitionerRole-UC1-PetraSectionataAtFrauenzimmer.json.html) (gynecologist), [Ruth Ohazwei @ Geburtsklinik](PractitionerRole-e1b736e3-10bb-41aa-8d17-c7ba28895880.json.html) (midwife)

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Leistungs-<br>erbringender</th>
            <th>Concept French:<br>Fournisseurs de<br>prestations</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">Gynäkologin/Gynäkologe</td>
            <td rowspan="2">Gynécologue</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 309343006 'Physician'</td>
        </tr>
        <tr>
            <td><code>PractitionerRole.specialty</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcSpecialisation">HCProfessional.hcSpecialisation</a></td>
            <td>MedReg: 1003 'Gynaecology and obstetrics'</td>
        </tr>
        <tr>
            <td>Hebamme</td>
            <td>Sage-femme</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 309453006 'Registered midwife'</td>
        </tr>
        <tr>
            <td rowspan="2">Hausärztin/Hausarzt</td>
            <td rowspan="2">Médecin de famille</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 309343006 'Physician'</td>
        </tr>
        <tr>
            <td><code>PractitionerRole.specialty</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcSpecialisation">HCProfessional.hcSpecialisation</a></td>
            <td>MedReg: 1040 'General medical practitioner'</td>
        </tr>
        <tr>
            <td rowspan="2">Kinderärztin/Kinderarzt</td>
            <td rowspan="2">Pédiatre</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 309343006 'Physician'</td>
        </tr>
        <tr>
            <td><code>PractitionerRole.specialty</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcSpecialisation">HCProfessional.hcSpecialisation</a></td>
            <td>MedReg: 1006 'Paediatrics'</td>
        </tr>
        <tr>
            <td>Apothekerin/Apotheker</td>
            <td>Pharmacien</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 46255001 'Pharmacist'</td>
        </tr>
        <tr>
            <td>Pflegefachperson</td>
            <td>Infirmier</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td>SNOMED CT: 106292003 'Professional nurse'</td>
        </tr>
        <tr>
            <td rowspan="2">Anderer Leistungserbringende</td>
            <td rowspan="2">Autres fournisseurs de prestations</td>
            <td><code>PractitionerRole.code</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession">HCProfessional.hcProfession</a></td>
            <td rowspan="2">
                As both ValueSets have a 
                <a href="https://hl7.org/fhir/R4/terminologies.html#preferred">preferred</a> 
                binding to the element, the values SHOULD be from the specified ValueSets, but also other codes can be used.
            </td>
        </tr>
        <tr>
            <td><code>PractitionerRole.specialty</code></td>
            <td><a href="http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcSpecialisation">HCProfessional.hcSpecialisation</a></td>
        </tr>
    </tbody>
</table>


#### Blood Group & Rhesus
**Profile:** [CH EPREG Observation: Blood Group](StructureDefinition-ch-epreg-observation-blood-group.html)        
**Example:** [Blood Group AB Rh(D) positive](Observation-UC1-BloodGroup-20250205.html)

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Blutgruppe</th>
            <th>Concept French:<br>Groupe sanguin</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>A</td>
            <td>A</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 112144000 'Blood group A'<br>SNOMED CT: 278149003 'Blood group A Rh(D) positive'<br>SNOMED CT: 278152006 'Blood group A Rh(D) negative'</td>
        </tr>
        <tr>
            <td>B</td>
            <td>B</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 112149005 'Blood group B'<br>SNOMED CT: 278150003 'Blood group B Rh(D) positive'<br>SNOMED CT: 278153001 'Blood group B Rh(D) negative'</td>
        </tr>
        <tr>
            <td>AB</td>
            <td>AB</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 165743006 'Blood group AB'<br>SNOMED CT: 278151004 'Blood group AB Rh(D) positive'<br>SNOMED CT: 278154007 'Blood group AB Rh(D) negative'</td>
        </tr>
        <tr>
            <td>O</td>
            <td>O</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 58460004 'Blood group O'<br>SNOMED CT: 278147001 'Blood group O Rh(D) positive'<br>SNOMED CT: 278148006 'Blood group O Rh(D) negative'</td>
        </tr>
    </tbody>
</table>


<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Rhesus</th>
            <th>Concept French:<br>Rhésus</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>RhD positiv</td>
            <td>RhD positif</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 165747007 'RhD positive'<br>SNOMED CT: 278149003 'Blood group A Rh(D) positive'<br>SNOMED CT: 278150003 'Blood group B Rh(D) positive'<br>SNOMED CT: 278151004 'Blood group AB Rh(D) positive'<br>SNOMED CT: 278147001 'Blood group O Rh(D) positive'</td>
        </tr>
        <tr>
            <td>RhD negativ</td>
            <td>RhD négatif</td>
            <td><code>Observation.code</code></td>
            <td><a href="ValueSet-results-blood-group.html">Results Blood Group</a></td>
            <td>SNOMED CT: 165746003 'RhD negative'<br>SNOMED CT: 278152006 'Blood group A Rh(D) negative'<br>SNOMED CT: 278153001 'Blood group B Rh(D) negative'<br>SNOMED CT: 278154007 'Blood group AB Rh(D) negative'<br>SNOMED CT: 278148006 'Blood group O Rh(D) negative'</td>
        </tr>
    </tbody>
</table>
