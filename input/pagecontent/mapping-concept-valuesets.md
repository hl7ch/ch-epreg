The concept for the exchange format of the electronic pregnancy passport ([de](https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/eDossiergrossesse_Concept_fr.pdf)) defines specific value sets for various data elements. These value sets, which contain the values in both German and French, are included in the concept document.

When representing this data in an FHIR document, the goal is to maintain compatibility with (Swiss) base concepts, such as those defined in CH Core or CH Term, whenever possible. To achieve this, the following mappings describe how the defined values from the concept paper are represented as coded values in FHIR resources (see also [FHIR Terminology](https://hl7.org/fhir/R4/terminology-module.html)), making use of existing value sets/terminologies where available.

### Parent 
**Profile:** [CH EPREG RelatedPerson: Parent](StructureDefinition-ch-epreg-relatedperson-parent.html)         
**Examples:** [Biological Father](RelatedPerson-UC1-BiologicalFather.json.html)

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Elternteil</th>
            <th>Concept French:<br>Parents</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Biologischer Vater</td>
            <td>Père biologique</td>
            <td><code>RelatedPerson.relationship</code></td>
            <td><a href="ValueSet-parent.html">Parent</a></td>
            <td>SNOMED CT: 9947008 'Natural father'</td>
        </tr>
        <tr>
            <td>Sozialer Vater</td>
            <td>Père social</td>
            <td><code>RelatedPerson.relationship</code></td>
            <td><a href="ValueSet-parent.html">Parent</a></td>
            <td>SNOMED CT: TBD, see open issue <a href="https://github.com/hl7ch/ch-epreg/issues/10">#10</a></td>
        </tr>
        <tr>
            <td>Soziale Mutter</td>
            <td>Mère sociale</td>
            <td><code>RelatedPerson.relationship</code></td>
            <td><a href="ValueSet-parent.html">Parent</a></td>
            <td>SNOMED CT: TBD, see open issue <a href="https://github.com/hl7ch/ch-epreg/issues/10">#10</a></td>
        </tr>
    </tbody>
</table>
 

### Healthcare Provider 
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


### Laboratory Results
As indicated in the mapping, the specific code (e.g. LOINC) should be used for laboratory results. The Observation profile for laboratory results is based on the [CH LAB-Report profile](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-observation-results-laboratory.html) and uses the same [Laboratory Code value set](https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html). The binding to the `Observation.code` element is [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred), meaning that if no suitable code is found in the value set, a code outside of the value set can be used.

**Profile:** [CH EPREG Observation (Base): Results Laboratory](StructureDefinition-ch-epreg-observation-results-lab.html)         
**Examples:** see [here](StructureDefinition-ch-epreg-observation-results-lab-examples.html)

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Concept German:<br>Laboruntersuchung</th>
      <th>Concept French:<br>Analyses de laboratoire</th>
      <th>Resource element</th>
      <th>ValueSet</th>
      <th>Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Allgemeine Bakteriologie <br>(Vagina, Zervix, Urethra)</td>
      <td>Bactériologie générale <br>(vagin, col de l’utérus, urètre)</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Allgemeine Mikrobiologie</td>
      <td>Microbiologie générale</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Antikörpersuchtest</td>
      <td>Test de recherche d’anticorps</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Beta-HCG</td>
      <td>Bêta-HCG</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Bilirubin, direkt, gesamt</td>
      <td>Bilirubine, directe, totale</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Chlamydien</td>
      <td>Chlamydia</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>CMV</td>
      <td>CMV</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>CRP</td>
      <td>Protéine C-réactive (CRP)</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Cytomegalovirus</td>
      <td>Cytomégalovirus</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Erytrozyten</td>
      <td>Érythrocytes</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Erytrozyten, direkter Test <br>gegen humane globuline</td>
      <td>Érythrocytes, test direct <br>à l’antiglobuline humaine</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Extraktion von menschlichen Nukleinsäuren</td>
      <td>Extraction d’acides nucléiques humains</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Ferritin</td>
      <td>Ferritine</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Folat</td>
      <td>Acide folique</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Hämoglobin</td>
      <td>Hémoglobine</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Hämoglobin A1c</td>
      <td>Hémoglobine A1c</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Hämokrit</td>
      <td>Hématocrite</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Hepatitis B</td>
      <td>Hépatite B</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>HIV</td>
      <td>VIH</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Leukozyten</td>
      <td>Leucocytes</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Lues</td>
      <td>Syphilis</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>MCH</td>
      <td>MCH</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>MCHC</td>
      <td>MCHC</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>MCV</td>
      <td>MCV</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>MPV</td>
      <td>MPV</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Molekulare Genotypisierung <br>der fötalen Erytrozytenantigene</td>
      <td>Génotypage moléculaire des <br>antigènes érythrocytaires fœtaux</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Nüchtern Blutzucker</td>
      <td>Glycémie à jeun</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>OGTT</td>
      <td>Hyperglycémie provoquée <br>par voie orale</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Parvo-B19</td>
      <td>Parvovirus B19</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>RDW</td>
      <td>RDW</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Rubella</td>
      <td>Rubéole</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Streptokokken B</td>
      <td>Streptocoques B</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Thrombozyten</td>
      <td>Thrombocytes</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Thyretropin (TSH)</td>
      <td>Thyrotropine (TSH)</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Toxoplasmose</td>
      <td>Toxoplasmose</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Urin, nativ</td>
      <td>Urine, native</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Varizellen</td>
      <td>Varicelle</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Vitamin B12</td>
      <td>Vitamine B12</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Vitamin D</td>
      <td>Vitamine D</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
    <tr>
      <td>Weitere</td>
      <td>Autres</td>
      <td><code>Observation.code</code></td>
      <td><a href="https://hl7.eu/fhir/laboratory/ValueSet-lab-obsCode-eu-lab.html">Laboratory Code</a></td>
      <td>Provide the explicit code (e.g. LOINC)</td>
    </tr>
  </tbody>
</table>


### Measurement Results
**Profile:** [CH EPREG Observation (Base): Results Laboratory](StructureDefinition-ch-epreg-observation-results-lab.html)         
**Examples:** see [here](StructureDefinition-ch-epreg-observation-results-lab-examples.html)

#### Qualitative 
In the FHIR representation of the qualitative measurement result, the specific examination is given in `Observation.code` / `Observation.component.code` (e.g. antibody search test) and the non-specific result (positive / negative) in `Observation.valueCodeableConcept` / `Observation.component.valueCodeableConcept`.

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Concept German:<br>Messergebnisse<br>Qualitativ</th>
      <th>Concept French:<br>Résultats<br>qualitatifs</th>
      <th>Resource element</th>
      <th>ValueSet</th>
      <th>Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Positiv</td>
      <td>Positif</td>
      <td><code>Observation.valueCodeableConcept</code><br><code>Observation.component.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>Negativ</td>
      <td>Négatif</td>
      <td><code>Observation.valueCodeableConcept</code><br><code>Observation.component.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
    <tr>
      <td>Antikörper-Suchtest negativ</td>
      <td>Test de recherche d’anticorps négatif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
    <tr>
      <td>Antikörper-Suchtest positiv</td>
      <td>Test de recherche d’anticorps positif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>Chlamydia trachomatis <br>Nachweis im Urin positiv</td>
      <td>Test urinaire pour Chlamydia <br>trachomatis positif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>Chlamydia trachomatis <br>Nachweis im Urin negativ</td>
      <td>Test urinaire pour Chlamydia <br>trachomatis négatif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
    <tr>
      <td>HBs-Antigen-Nachweis positiv</td>
      <td>Test de l’antigène HBs positif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>HBs-Antigen-Nachweis negativ</td>
      <td>Test de l’antigène HBs négatif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
    <tr>
      <td>Rubelle-Antikörpertest negativ</td>
      <td>Test des anticorps de la rubéole négatif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
    <tr>
      <td>Rubella-Antikörpertest positiv</td>
      <td>Test des anticorps de la rubéole positif</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>Lues Titer Test positiv</td>
      <td>Test de titrage positif pour la syphilis</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 10828004 'Positive'</td>
    </tr>
    <tr>
      <td>Lues Titer Test negativ</td>
      <td>Test de titrage négatif pour la syphilis</td>
      <td><code>Observation.valueCodeableConcept</code></td>
      <td>-</td>
      <td>SCT: 260385009 'Negative'</td>
    </tr>
  </tbody>
</table>


#### Unit
If a measurement result is expressed using a unit, it is represented in FHIR as `Observation.valueQuantity` / `Observation.component.valueQuantity`. According to the FHIR specification for the [Quantity data type](https://hl7.org/fhir/R4/datatypes.html#Quantity), _“If the unit can be coded in UCUM and a code is provided, it SHOULD be a UCUM code”_.

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Concept German:<br>Messergebnisse<br>Einheit</th>
      <th>Concept French:<br>Unités de mesure</th>
      <th>Resource element</th>
      <th>ValueSet</th>
      <th>Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Titer</td>
      <td>Titre</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: {titer} 'titer'</td>
    </tr>
    <tr>
      <td>10*6/µl</td>
      <td>10*6/µl</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: 10*6/uL 'million per microliter'</td>
    </tr>
    <tr>
      <td>fl</td>
      <td>fl</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: fL 'femtoliter'</td>
    </tr>
    <tr>
      <td>g/dl</td>
      <td>g/dl</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: g/dL 'gram per deciliter'</td>
    </tr>
    <tr>
      <td>g/l</td>
      <td>g/l</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: g/L 'gram per liter'</td>
    </tr>
    <tr>
      <td>G/l</td>
      <td>G/l</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: 10*9/L 'billion per liter'</td>
    </tr>
    <tr>
      <td>IE/ml</td>
      <td>UI/ml</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: [IU]/mL 'international unit per milliliter'</td>
    </tr>
    <tr>
      <td>l/l</td>
      <td>l/l</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: L/L 'liter per liter'</td>
    </tr>
    <tr>
      <td>mmol/l</td>
      <td>mmol/l</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: mmol/L 'millimole per liter'</td>
    </tr>
    <tr>
      <td>pg</td>
      <td>pg</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: pg 'picogram'</td>
    </tr>
    <tr>
      <td>T/l</td>
      <td>T/l</td>
      <td><code>Observation.valueQuantity</code><br><code>Observation.component.valueQuantity</code></td>
      <td><a href="https://hl7.org/fhir/R4/valueset-ucum-units.html">UCUM Codes</a></td>
      <td>UCUM: 10*12/L 'trillion per liter'</td>
    </tr>
  </tbody>
</table>


### Blood Group & Rhesus
**Profile:** [CH EPREG Observation (Lab): Blood Group](StructureDefinition-ch-epreg-observation-blood-group.html)        
**Example:** [Blood Group: AB Rh(D) positive](Observation-UC1-BloodGroup-20250205.html)

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
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
            <td>SNOMED CT: 112144000 'Blood group A'<br>SNOMED CT: 278149003 'Blood group A Rh(D) positive'<br>SNOMED CT: 278152006 'Blood group A Rh(D) negative'</td>
        </tr>
        <tr>
            <td>B</td>
            <td>B</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
            <td>SNOMED CT: 112149005 'Blood group B'<br>SNOMED CT: 278150003 'Blood group B Rh(D) positive'<br>SNOMED CT: 278153001 'Blood group B Rh(D) negative'</td>
        </tr>
        <tr>
            <td>AB</td>
            <td>AB</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
            <td>SNOMED CT: 165743006 'Blood group AB'<br>SNOMED CT: 278151004 'Blood group AB Rh(D) positive'<br>SNOMED CT: 278154007 'Blood group AB Rh(D) negative'</td>
        </tr>
        <tr>
            <td>O</td>
            <td>O</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
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
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
            <td>SNOMED CT: 165747007 'RhD positive'<br>SNOMED CT: 278149003 'Blood group A Rh(D) positive'<br>SNOMED CT: 278150003 'Blood group B Rh(D) positive'<br>SNOMED CT: 278151004 'Blood group AB Rh(D) positive'<br>SNOMED CT: 278147001 'Blood group O Rh(D) positive'</td>
        </tr>
        <tr>
            <td>RhD negativ</td>
            <td>RhD négatif</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-blood-group.html">Blood Group</a></td>
            <td>SNOMED CT: 165746003 'RhD negative'<br>SNOMED CT: 278152006 'Blood group A Rh(D) negative'<br>SNOMED CT: 278153001 'Blood group B Rh(D) negative'<br>SNOMED CT: 278154007 'Blood group AB Rh(D) negative'<br>SNOMED CT: 278148006 'Blood group O Rh(D) negative'</td>
        </tr>
    </tbody>
</table>


### Fetal RhD
**Profile:** [CH EPREG Observation (Lab): Fetal RhD](StructureDefinition-ch-epreg-observation-fetal-rhd.html)        
**Example:** [Fetal RhD: RhD positive](Observation-UC1-FetalRhD-20250205.html)

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
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-fetal-rhd-antigen.html">Fetal RhD Antigen</a></td>
            <td>LOINC: LA22747-2 'RhD positive'</td>
        </tr>
        <tr>
            <td>RhD negativ</td>
            <td>RhD négatif</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-fetal-rhd-antigen.html">Fetal RhD Antigen</a></td>
            <td>LOINC: LA22748-0 'RhD negative'</td>
        </tr>
    </tbody>
</table>


### Further Examinations
There is no ValueSet mapping for further examinations, as the Observation resource representing the result of the examination requires a code that explicitly reflects the specific examination performed.

For example, in the case of amniotic fluid (Fruchtwasser / Liquide amniotique), relevant use cases for a maternity record might include:
* LOINC: 38386-9 'Color of Amniotic fluid': This Observation represents the color of the amniotic fluid, which can provide important clinical insights during pregnancy monitoring.
* LOINC: 1887-9 'Appearance of Amniotic fluid': This Observation covers the general visual appearance, such as clarity or turbidity, which is also significant in obstetric assessments.

**Profile:** [CH EPREG Observation (Base): Pregnancy Progress](StructureDefinition-ch-epreg-observation-preg-progress.html)         
**Examples:** [Digestion: Heartburn](Observation-1ce882f2-953f-428e-a90b-a55271020fca.html)

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Weitere Untersuchungen<br>und Fragen</th>
            <th>Concept French:<br>Autres examens<br>et questions</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Beckenbodenprobleme / Inkontinenz</td>
            <td>Dysfonctionnement du plancher pelvien / incontinence</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Belastungsbalance</td>
            <td>Gestion du stress</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Besondere Beschwerden</td>
            <td>Plaintes particulières</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Energie / Wohlbefinden / Schlaf</td>
            <td>Énergie / bien-être / sommeil</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Fragen / Anliegen</td>
            <td>Questions / demandes</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Fruchtwasser</td>
            <td>Liquide amniotique</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Hämorrhoiden</td>
            <td>Hémorroïdes</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Ödeme</td>
            <td>Œdème</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Vaginale Abgänge</td>
            <td>Écoulement vaginal</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Übelkeit</td>
            <td>Nausées</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Varizen</td>
            <td>Varices</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Verdauung</td>
            <td>Digestion</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
        <tr>
            <td>Weitere Befunde</td>
            <td>Autres constatations</td>
            <td><code>Observation.code</code></td>
            <td>-</td>
            <td>Provide the explicit code (e.g. LOINC)</td>
        </tr>
    </tbody>
</table>


### Fetal Position
**Profile:** [CH EPREG Observation (Child): Fetal Position](StructureDefinition-ch-epreg-observation-fetal-position.html)        
**Example:** [Vertex Presentation](Observation-UC1-FetalPosition-20250205.html), [Breech Presentation](Observation-4a907770-6665-4fb4-b186-afd0ddf48742.html)

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Concept German:<br>Kindslage</th>
            <th>Concept French:<br>Position de l’enfant</th>
            <th>Resource element</th>
            <th>ValueSet</th>
            <th>Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Schädellage</td>
            <td>Présentation céphalique</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-fetal-position.html">Fetal Position</a></td>
            <td>SNOMED CT: 70028003 'Vertex presentation'</td>
        </tr>
        <tr>
            <td>Beckenendlage</td>
            <td>Présentation par le siège</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-fetal-position.html">Fetal Position</a></td>
            <td>SNOMED CT: 6096002 'Breech presentation'</td>
        </tr>
        <tr>
            <td>Querlage</td>
            <td>Présentation transversale</td>
            <td><code>Observation.valueCodeableConcept</code></td>
            <td><a href="ValueSet-fetal-position.html">Fetal Position</a></td>
            <td>SNOMED CT: 73161006 'Transverse lie'</td>
        </tr>
    </tbody>
</table>
