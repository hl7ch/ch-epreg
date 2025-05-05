The concept for the exchange format of the electronic pregnancy passport ([de](https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/eDossiergrossesse_Concept_fr.pdf)) defines all data elements in both German and French. These data elements are listed in tabular form below. The information from the concept has been supplemented with the respective mapping to FHIR (resources, elements) and any notes on modeling considerations.    

The mapping can also be found for each profile under its 'Mappings' tab, e.g. [CH EPREG Composition](StructureDefinition-ch-epreg-composition-mappings.html).

_Please note that not all data elements from the concept have been mapped in this first version of the implementation guide. However, all elements and sections described in the guide (document structure / use cases etc.) have already been mapped, enabling an initial use of the pregnancy passport._     
_Each element that has already been mapped has an entry in the column 'Mapping to FHIR (Resources, Elements). The others will follow in a next version._

### Master Data

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **1. Schwangere Person** | **1. Personne enceinte** | 1..1 | M |   |   | `Composition.subject`<br />-> [CH EPREG Patient: Mother](StructureDefinition-ch-epreg-patient-mother.html) |   |
| 1.1. AHV-Nummer | 1.1. Numéro AVS | 0..1 | R | Identifikator |   | _not allowed in the EPR context_ | AHVN13/NAVS13 is not allowed in the EPR context, see parent profile [CH Core Patient EPR](https://fhir.ch/ig/ch-core/StructureDefinition-ch-core-patient-epr.html). |
| 1.2. Name | 1.2. Nom | 0..1 | R |   | 371484003 Patient name (observable entity) | `Patient.name` |   |
| 1.2.1. Nachname | 1.2.1. Nom de famille | 1..1 | M | String | 184096005 Patient surname (observable entity) | `Patient.name.family` |   |
| 1.2.2. Vorname | 1.2.2. Prénoms | 1..1 | M | String | 184095009 Patient forename (observable entity) | `Patient.name.given` |   |
| 1.2.3. Namenszusatz | 1.2.3. Autres prénoms | 0..1 | O | String | 716057004 Patient middle name (observable entity) | `Patient.name.prefix` |   |
| 1.2.4. Vollständiger Name | 1.2.4. Nom complet | 0..1 | R | String | Vollständiger Name mit Vornamen, Nachnamen und Namenszusatz. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden. | `Patient.name.text` |   |
| 1.2.5. Pronomen | 1.2.5. Pronoms | 0..1 | O | String | Für Trans-PatientInnen als optionale Angabe | `Patient.extension:pronoun.extension:value.valueCodeableConcept` |   |
| 1.3. Geburtsdatum | 1.3. Date de naissance | 0..1 | R | Datum | 184099003 Date of birth (observable entity) | `Patient.birthDate` |   |
| 1.4. Nationalität | 1.4. Nationalité | 0..\* | O | String |   | `Patient.extension:citizenship.extension:code.valueCodeableConcept` |   |
| 1.5. Kommunikationssprache | 1.5. Langue de communication | 0..1 | O | String |   | `Patient.communication:languageOfCorrespondence` |   |
| 1.6. Adresse | 1.6. Adresse | 0..1 | R |   |   | `Patient.address` |   |
| 1.6.1. Strasse | 1.6.1. Rue | 0..1 | R | String |   | `Patient.address.line` |   |
| 1.6.2. Hausnummer | 1.6.2. Numéro | 0..1 | R | String |   | `Patient.address.line` |   |
| 1.6.3. Postleitzahl | 1.6.3. Code postal | 0..1 | R | String |   | `Patient.address.postalCode` |   |
| 1.6.4. Ort | 1.6.4. Localité | 0..1 | R | String |   | `Patient.address.city` |   |
| 1.6.5. Land | 1.6.5. Pays | 0..1 | R | String |   | `Patient.address.country` |   |
| 1.7. Telefon | 1.7. N° de téléphone | 0..1 | R |   |   | `Patient.telecom:phone` |   |
| 1.7.1. Festnetz | 1.7.1. Fixe | 0..1 | O | String |   | `Patient.telecom:phone`<br />`use` = home |   |
| 1.7.2. Mobil | 1.7.2. Mobile | 0..\* | R | String |   | `Patient.telecom:phone`<br />`use` = mobile |   |
| 1.7.3. Arbeit | 1.7.3. Professionnel | 0..1 | O | String |   | `Patient.telecom:phone`<br />`use` = work |   |
| 1.8. E-Mailadresse | 1.8. Courriel | 0..\* | R | String |   | `Patient.telecom:email` |   |
| 1.9. Versicherung | 1.9. Assurance | 0..1 | R |   |   |   |   |
| 1.9.1. Grundversicherung | 1.9.1. Assurance de base | 0..1 | R |   |   |   |   |
| 1.9.1.1. Name Versicherung | 1.9.1.1. Nom de l’assureur | 0..1 | R | String |   |   |   |
| 1.9.1.2. Versichertennummer | 1.9.1.2. Numéro de la personne assurée | 1..1 | M | String |   |   |   |
| 1.9.2. Zusatzversicherung | 1.9.2. Assurance complémentaire | 0..\* | R |   |   |   |   |
| 1.9.2.1. Name Versicherung | 1.9.2.1. Nom de l’assureur | 0..1 | R | String |   |   |   |
| 1.9.2.2. Versichertennummer | 1.9.2.2. Numéro de la personne assurée | 1..1 | M | String |   |   |   |
| **2. Elternteil** | **2. Parent** | 0..\* | O |   |   |  |   |
| 2.1. Art des Elternteils | 2.1. Type de parent | 1..1 | M | Code | [Value Set: Elternteil](mapping-concept-valuesets.html#parent) | `RelatedPerson.relationship` |   |
| 2.2. Name | 2.2. Nom | 0..1 | R |   |   | `RelatedPerson.name` |   |
| 2.2.1. Nachname | 2.2.1. Nom | 0..1 | R | String |   | `RelatedPerson.name.family` |   |
| 2.2.2. Vorname | 2.2.2. Prénom | 0..1 | R | String |   | `RelatedPerson.name.given` |   |
| 2.3. Geburtsdatum | 2.3. Date de naissance | 0..1 | O | Datum |   | `RelatedPerson.birthDate` |   |
| 2.4. Nationalität | 2.4. Nationalité | 0..\* | O | String |   | `RelatedPerson.extension:citizenship.extension:code.valueCodeableConcept` |   |
| 2.5. Kommunikationssprache | 2.5. Langue de communication | 0..1 | O | String |   | `RelatedPerson.communication:languageOfCorrespondence` |   |
| 2.6. Bemerkungen | 2.6. Remarques | 0..1 | O | String |   | `RelatedPerson.extension:note.valueString` |   |
| **3. Notfallkontakt** | **3. Contact en cas d’urgence** | 0..\* | R |   |   |   |   |
| 3.1. Primärkontakt | 3.1. Contact principal | 0..1 | O | Boolean | Gibt an, ob es sich um den Primärkontakt handelt. |   |   |
| 3.2. Name | 3.2. Nom | 0..1 | R |   |   |   |   |
| 3.2.1. Nachname | 3.2.1. Nom | 0..1 | R | String |   |   |   |
| 3.2.2. Vorname | 3.2.2. Prénom | 0..1 | R | String |   |   |   |
| 3.3. Telefon | 3.3. N° de téléphone | 0..1 | R |   |   |   |   |
| 3.3.1. Festnetz | 3.3.1. Fixe | 0..1 | O | String |   |   |   |
| 3.3.2. Mobil | 3.3.2. Mobile | 0..1 | R | String |   |   |   |
| 3.3.3. Arbeit | 3.3.3. Professionnel | 0..1 | O | String |   |   |   |
| 3.4. Bemerkungen | 3.4. Remarque | 0..1 | O | String |   |   |   |
| **4. Beistand/Vormund** | **4. Curatelle/tutelle** | 0..\* | O |   |   |   |   |
| 4.1. Name | 4.1. Nom | 0..1 | R |   |   |   |   |
| 4.1.1. Nachname | 4.1.1. Nom | 0..1 | R | String |   |   |   |
| 4.1.2. Vorname | 4.1.2. Prénom | 0..1 | R | String |   |   |   |
| 4.2. Telefon | 4.2. N° de téléphone | 0..1 | R |   |   |   |   |
| 4.2.1. Festnetz | 4.2.1. Fixe | 0..1 | O | String |   |   |   |
| 4.2.2. Mobil | 4.2.2. Mobile | 0..1 | R | String |   |   |   |
| 4.2.3. Arbeit | 4.2.3. Professionnel | 0..1 | O | String |   |   |   |
| 4.3. E-Mailadresse | 4.3. Courriel | 0..1 | O | String |   |   |   |
| 4.4. Bemerkungen | 4.4. Remarques | 0..1 | O | String |   |   |   |
| **5. Behandelnder Leistungserbringender** | **5. Fournisseur de prestations** | 0..\* | R |   | Dieses Element kann mehrmals vorkommen, so dass damit zum Beispiel ein Gynäkologe, eine Hebamme und der Hausarzt abgebildet werden können. | `Composition.section:careTeam.entry`<br />-> [CH EPREG PractitionerRole: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitionerrole-thcp.html)<br />`PractitionerRole.practitioner`<br />-> [CH EPREG Practitioner: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitioner-thcp.html)<br />`PractitionerRole.organization`<br />-> [CH EPREG Organization: Treating Healthcare Provider](StructureDefinition-ch-epreg-organization-thcp.html) |   |
| 5.1. Art des Leistungserbringenden | 5.1. Type de fournisseur de prestations | 1..1 | M | Code | [Value Set: Leistungserbringender](mapping-concept-valuesets.html#healthcare-provider) | `PractitionerRole.code`<br />`PractitionerRole.specialty` |   |
| 5.2. GLN Nummer | 5.2. Numéro GLN | 0..1 | R | Identifikator |   | `Practitioner.identifier:GLN`|   |
| 5.3. Bemerkungen | 5.3. Remarques | 0..1 | O | String |   | `PractitionerRole.extension:note.valueString` |   |
| 5.4. Vorhanden | 5.4. Disponible | 1..1 | M | Boolean | Gibt an, ob ein gewisser Leistungserbringer vorhanden bzw. nicht vorhanden ist. So kann zum Beispiel explizit gesagt werden, dass die Patientin keinen Hausarzt besitzt. | _can be textually described here:_<br />`Composition.section:careTeam.text` |   |
| 5.5. Name der behandelnden Institution | 5.5. Nom de l’institution | 0..1 | R | String | Name der Institution oder Praxis | `Organization.name` |   |
| 5.6. Name | 5.6. Nom | 0..1 | R |   | Name des Leistungserbringenden | `Practitioner.name` |   |
| 5.6.1. Titel | 5.6.1. Titre | 0..1 | O | String |   | `Practitioner.name.prefix` |   |
| 5.6.2. Nachname | 5.6.2. Nom | 0..1 | R | String |   | `Practitioner.name.family` |   |
| 5.6.3. Vorname | 5.6.3. Prénom | 0..1 | R | String |   | `Practitioner.name.given` |   |
| 5.7. Adresse | 5.7. Adresse | 0..1 | R |   | Adresse des Leistungserbringenden bzw. der Praxis | `Organization.address` | Mapped address to Organization (not Practitioner), like it is done in [CH EMED](https://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-practitionerrole.html). |
| 5.7.1. Strasse | 5.7.1. Rue | 0..1 | R | String |   | `Organization.address.line` |   |
| 5.7.2. Hausnummer | 5.7.2. Numéro | 0..1 | R | String |   | `Organization.address.line` |   |
| 5.7.3. Postleitzahl | 5.7.3. Code postal | 0..1 | R | String |   | `Organization.address.postalCode` |   |
| 5.7.4. Ort | 5.7.4. Localité | 0..1 | R | String |   | `Organization.address.city` |   |
| 5.7.5. Land | 5.7.5. Pays | 0..1 | R | String |   | `Organization.address.country` |   |
| 5.8. Telefon | 5.8. N° de téléphone | 0..1 | R |   | Telefon des Leistungserbringenden | `Organization.telecom:phone` |   |
| 5.8.1. Festnetz | 5.8.1. Fixe | 0..1 | R | String |   | `Organization.telecom:phone`<br />`use` = work |   |
| 5.8.2. Mobil | 5.8.2. Mobile | 0..1 | O | String |   | `Organization.telecom:phone`<br />`use` = mobile |   |
| 5.9. E-Mailadresse | 5.9. Courriel | 0..1 | R | String | E-Mailadresse des Leistungserbringenden | `Organization.telecom:email` |   |
| **6. Geplanter Geburtsort** | **6. Lieu d’accouchement prévu** | 0..1 | R |   |   |   |   |
| 6.1. Hausgeburt | 6.1. Accouchement à la maison | 0..1 | O |   |   |   |   |
| 6.1.1. Hausgeburt geplant | 6.1.1. Accouchement prévu à la maison | 0..1 | O | Boolean | Gibt an, ob eine Hausgeburt geplant ist oder nicht. |   |   |
| 6.1.2. Verlegungsort Wunschspital | 6.1.2. Hôpital de transfert souhaité | 0..1 | O | String |   |   |   |
| 6.1.3. Verlegungsort Notfallspital | 6.1.3. Hôpital de transfert d’urgence | 0..1 | O | String |   |   |   |
| 6.2. Angemeldet | 6.2. Lieu d’accouchement annoncé | 0..1 | O | Boolean | Gibt an, ob die Anmeldung beim geplanten Geburtsort bereits stattgefunden hat oder nicht. |   |   |
| 6.3. Name der behandelnden Institution | 6.3. Nom de l’institution | 0..1 | R | String |   |   |   |
| 6.4. Adresse | 6.4. Adresse | 0..1 | R |   |   |   |   |
| 6.4.1. Strasse | 6.4.1. Rue | 0..1 | R | String |   |   |   |
| 6.4.2. Hausnummer | 6.4.2. Numéro | 0..1 | R | String |   |   |   |
| 6.4.3. Postleitzahl | 6.4.3. Code postal | 0..1 | R | String |   |   |   |
| 6.4.4. Ort | 6.4.4. Localité | 0..1 | R | String |   |   |   |
| 6.4.5. Land | 6.4.5. Pays | 0..1 | R | String |   |   |   |
| 6.5. Telefon | 6.5. N° de téléphone | 0..1 | R |   |   |   |   |
| 6.5.1. Festnetz | 6.5.1. Fixe | 0..1 | R | String |   |   |   |
| 6.5.2. Mobil | 6.5.2. Mobile | 0..1 | O | String |   |   |   |
| 6.6. E-Mailadresse | 6.6. Courriel | 0..1 | R | String |   |   |   |

### Medical History & Risk Factors

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **7. Anamnese** | **7. Anamnèse** | 0..1 | O |   |   |   |   |
| 7.1. Allgemeine Anamnese | 7.1. Anamnèse générale | 0..1 | O |   |   |   |   |
| 7.1.1. Alter | 7.1.1. Âge | 0..1 | O | Quantität | Alter in Jahren<br />424144002 Current chronological age (observable entity) |   |   |
| 7.1.2. Körpergrösse | 7.1.2. Taille | 0..1 | O | Quantität | Grösse in cm<br />248334005 Length of body (observable entity)<br />LOINC: 8302-2 Body height |   |   |
| 7.1.3. Körpergewicht vor der Schwangerschaft | 7.1.3. Poids avant la grossesse | 0..1 | O | Quantität | Gewicht in kg.<br />1 Nachkommastelle<br />400967004 Baseline weight (observable entity) <br />LOINC: 29463-7 Body weight |   |   |
| 7.1.4. BMI | 7.1.4. IMC | 0..1 | O | Quantität | 1 Nachkommastelle<br />60621009 Body mass index (observable entity) |   |   |
| 7.2. Persönliche Anamnese | 7.2. Anamnèse personnelle | 0..1 | O |   | 160476009 Social / personal history observable (observable entity) |   |   |
| 7.2.1. Fragen persönliche Anamnese | 7.2.1. Questions sur l’anamnèse personnelle | 0..\* | O |   |   |   |   |
| 7.2.1.1. Frage | 7.2.1.1. Question | 1..1 | M | Code | Value Set: Persönliche Anamnese |   |   |
| 7.2.1.2. Antwort | 7.2.1.2. Réponse | 1..1 | M | Boolean | Gibt an, ob die Frage zutrifft oder nicht. |   |   |
| 7.2.1.3. Bemerkungen | 7.2.1.3. Remarques | 0..1 | O | String |   |   |   |
| 7.3. Familienanamnese | 7.3. Anamnèse familiale | 0..1 | O |   |   |   |   |
| 7.3.1. Fragen Familienanamnese | 7.3.1. Questions sur l’anamnèse familiale | 0..\* | O |   |   |   |   |
| 7.3.1.1. Frage | 7.3.1.1. Question | 1..1 | M | Code | Value Set: Familienanamnese |   |   |
| 7.3.1.2. Antwort | 7.3.1.2. Réponse | 1..1 | M | Boolean | Gibt an, ob eine Frage zutrifft oder nicht. |   |   |
| 7.3.1.3. Bemerkungen | 7.3.1.3. Remarques | 0..1 | O | String | Bemerkungen zur Frage |   |   |
| 7.4. Soziale Anamnese | 7.4. Anamnèse sociale | 0..1 |   |   |   |   |   |
| 7.4.1. Zivilstand | 7.4.1. État civil | 0..1 | O | Code | Value Set: Zivilstand |   |   |
| 7.4.2. Fragen Soziale Anamnese | 7.4.2. Questions sur l’anamnèse sociale | 0..\* | O |   |   |   |   |
| 7.4.2.1. Frage | 7.4.2.1. Question | 1..1 | M | Code | Value Set: Soziale Anamnese |   |   |
| 7.4.2.2. Antwort | 7.4.2.2. Réponse | 1..1 | M | String |   |   |   |
| 7.5. Gynäkologische Anamnese | 7.5. Anamnèse gynécologique | 0..1 | O |   |   |   |   |
| 7.5.1. Fragen Gynäkologische Anamnese | 7.5.1. Questions sur l’anamnèse gynécologique | 0..\* | O |   |   |   |   |
| 7.5.1.1. Frage | 7.5.1.1. Question | 1..1 | M | Code | Value Set:<br />Gynäkologische Anamnese |   |   |
| 7.5.1.2. Antwort | 7.5.1.2. Réponse | 1..1 | M | String |   |   |   |
| 7.6. Frühere Schwangerschaften | 7.6. Grossesses précédentes | 0..1 | O |   |   |   |   |
| 7.6.1. Gravida | 7.6.1. Nombre de grossesses | 0..1 | R | Count | Anzahl der Schwangerschaften inklusive der aktuellen Schwangerschaft<br />161732006 Gravida (observable entity) |   |   |
| 7.6.2. Para | 7.6.2. Nombre d’accouchements | 0..1 | R | Count | Anzahl der bisherigen Geburten<br />364325004 Parity (observable entity) |   |   |
| 7.6.3. EUG | 7.6.3. Grossesse extra-utérine (GEU) | 0..\* | O |   | Extrauteringravidität |   |   |
| 7.6.3.1. Schwangerschaftswoche+Tage | 7.6.3.1. Semaine de grossesse + jours | 0..1 | R |   | 1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 7.6.3.1.1. Schwangerschaftswochen | 7.6.3.1.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der Schwangerschaft |   |   |
| 7.6.3.1.2. Anzahl an Tagen in Schwangerschaftswoche | 7.6.3.1.2. Nombre de jours dans la semaine de grossesse en cours | 0..1 | O | Quantität | Anzahl der Tage in der Schwangerschaftswoche |   |   |
| 7.6.3.2. Datum | 7.6.3.2. Date | 0..1 | O | Datum | Datum der extrauterinen Schwangerschaft |   |   |
| 7.6.3.3. Ort | 7.6.3.3. Localité | 0..1 | O | String |   |   |   |
| 7.6.3.4. Behandlung | 7.6.3.4. Traitement | 0..1 | O | String |   |   |   |
| 7.6.3.5. Bemerkungen | 7.6.3.5. Remarques | 0..1 | O | String |   |   |   |
| 7.6.4. Aborte | 7.6.4. Avortement spontané | 0..\* | O |   |   |   |   |
| 7.6.4.1. Schwangerschaftswoche+Tage | 7.6.4.1. Semaine de grossesse + jours | 0..1 | R |   | 1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 7.6.4.1.1. Schwangerschaftswochen | 7.6.4.1.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der Schwangerschaft |   |   |
| 7.6.4.1.2. Anzahl an Tagen in Schwangerschaftswoche | 7.6.4.1.2. Nombre de jours dans la semaine de grossesse en cours | 0..1 | O | Quantität | Anzahl der Tage in der Schwangerschaftswoche |   |   |
| 7.6.4.2. Datum | 7.6.4.2. Date | 0..1 | O | Datum | Datum des Aborts |   |   |
| 7.6.4.3. Ort | 7.6.4.3. Localité | 0..1 | O | String |   |   |   |
| 7.6.4.4. Behandlung | 7.6.4.4. Traitement | 0..1 | R | Code | Value Set: Abort |   |   |
| 7.6.4.5. Bemerkungen | 7.6.4.5. Remarques | 0..1 | O | String |   |   |   |
| 7.6.5. Interruptio inkl. Embryonenreduktion | 7.6.5. Interruption volontaire de grossesse, y c. réduction embryonnaire | 0..\* | O |   |   |   |   |
| 7.6.5.1. Schwangerschaftswoche+Tage | 7.6.5.1. Semaine de grossesse + jours | 0..1 | R |   | 1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 7.6.5.1.1. Schwangerschaftswochen | 7.6.5.1.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der Schwangerschaft |   |   |
| 7.6.5.1.2. Anzahl an Tagen in Schwangerschaftswoche | 7.6.5.1.2. Nombre de jours dans la semaine de grossesse en cours | 0..1 | O | Quantität | Anzahl der Tage in der Schwangerschaftswoche |   |   |
| 7.6.5.2. Datum | 7.6.5.2. Date | 0..1 | O | Datum | Datum der Interruptio |   |   |
| 7.6.5.3. Ort | 7.6.5.3. Localité | 0..1 | O | String |   |   |   |
| 7.6.5.4. Behandlung | 7.6.5.4. Traitement | 0..1 | O | Code | Value Set: Interruption Behandlung |   |   |
| 7.6.5.5. Bemerkungen | 7.6.5.5. Remarques | 0..1 | O | String |   |   |   |
| 7.6.6. Geburt | 7.6.6. Accouchement | 0..\* | O |   | 3950001 Birth (finding) |   |   |
| 7.6.6.1. Datum | 7.6.6.1. Date | 0..1 | R | Datum |   |   |   |
| 7.6.6.2. Schwangerschaftswoche+Tage | 7.6.6.2. Semaine de grossesse + jours | 0..1 | R |   | 1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 7.6.6.2.1. Schwangerschaftswochen | 7.6.6.2.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der Schwangerschaft |   |   |
| 7.6.6.2.2. Anzahl an Tagen in Schwangerschaftswoche | 7.6.6.2.2. Nombre de jours dans la semaine de grossesse en cours | 0..1 | O | Quantität | Anzahl der Tage in der Schwangerschaftswoche |   |   |
| 7.6.6.3. Geburtsort | 7.6.6.3. Lieu d’accouchement | 0..1 | O | String |   |   |   |
| 7.6.6.4. SS-Verlauf | 7.6.6.4. Évolution de la grossesse | 0..1 | R | String |   |   |   |
| 7.6.6.5. Geburtsverlauf und Komplikationen | 7.6.6.5. Déroulement de l’accouchement et complications | 0..1 | O |   |   |   |   |
| 7.6.6.5.1. Beschreibung Verlauf und Komplikationen | 7.6.6.5.1. Description de l’accouchement et des complications | 0..1 | O | String |   |   |   |
| 7.6.6.5.2. Präeklampsie | 7.6.6.5.2. Prééclampsie | 0..1 | O | Boolean |   |   |   |
| 7.6.6.5.3. Gestationsdiabetes | 7.6.6.5.3. Diabète gestationnel | 0..1 | O | Boolean |   |   |   |
| 7.6.6.6. Geburtsmodus | 7.6.6.6. Type d’accouchement | 0..1 | R | Code | Value Set: Geburtsmodus |   |   |
| 7.6.6.7. Geburtsverletzungen | 7.6.6.7. Traumatismes obstétricaux | 0..1 | R | String | 56110009 Birth trauma of fetus (disorder) |   |   |
| 7.6.6.8. Angaben zum Kind | 7.6.6.8. Informations concer t l’enfant | 0..\* | O |   |   |   |   |
| 7.6.6.8.1. Körpergewicht | 7.6.6.8.1. Poids corporel | 0..1 | R | Quantität | Gewicht in g<br />364589006 Birth weight (observable entity) <br />LOINC: 8339-4 Birth weight Measured |   |   |
| 7.6.6.8.2. Körperlänge | 7.6.6.8.2. Taille | 0..1 | R | Quantität | Länge in cm.<br />1 Nachkommastelle<br />169886007 Birth length (observable entity)<br />LOINC: 89269-5 Body height Measured --at birth |   |   |
| 7.6.6.8.3. Apgar | 7.6.6.8.3. Score d’Apgar | 0..1 | R | String | Format 8/9/10<br />249228009 Total apgar score (observable entity) |   |   |
| 7.6.6.8.4. Fehlbildung | 7.6.6.8.4. Malformation | 0..1 | O | String | 276654001 Congenital malformation (disorder) |   |   |
| 7.6.6.9. Wochenbett | 7.6.6.9. Post-partum | 0..1 | O | String |   |   |   |
| 7.6.6.10. Stillen | 7.6.6.10. Allaitement | 0..1 | O | String |   |   |   |
| 7.6.6.11. Besonderheiten Mutter | 7.6.6.11. Particularités concer t la mère | 0..1 | O | String |   |   |   |
| 7.6.6.12. Besonderheiten Kind | 7.6.6.12. Particularités concer t l’enfant | 0..1 | O | String |   |   |   |
| **8. Risikofaktoren** | **8. Facteurs de risque** | 0..1 | O |   |   |   |   |
| 8.1. Einzelne Risikofaktoren | 8.1. Liste des facteurs de risque | 0..\* | O |   |   |   |   |
| 8.1.1. Risikofaktor | 8.1.1. Facteur de risque | 1..1 | M | Code | Value Set: Risikofaktoren |   |   |
| 8.1.2. Antwort | 8.1.2. Réponse | 1..1 | M | Boolean | Gibt an, ob ein Risikofaktor zutrifft oder nicht |   |   |
| 8.1.3. Bemerkungen | 8.1.3. Remarques | 0..1 | O | String | Bemerkungen zum Risikofaktor |   |   |
| 8.2. Beurteilung Risikoschwangerschaft | 8.2. Évaluation des risques | 0..\* | O |   |   |   |   |
| 8.2.1. Risikoschwangerschaft liegt vor | 8.2.1. Présence d’une grossesse à risque | 1..1 | M | Boolean | Gibt an, ob eine Risikoschwangerschaft vorliegt oder nicht |   |   |
| 8.2.2. Beurteilung durch | 8.2.2. Évaluation effectuée par | 1..1 | M | String |   |   |   |
| 8.2.3. Bemerkungen | 8.2.3. Remarques | 0..1 | R | String |   |   |   |

### Pregnancy Dating & Prenatal Diagnostics

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **9. Terminbestimmung** | **9. Calcul du terme** | 0..1 | O |   |   |   |   |
| 9.1. Start letzte Periode | 9.1. Début de la dernière période menstruelle | 0..1 | R | Datum | 248993009 Date of last normal period (observable entity) |   |   |
| 9.2. Zyklusdauer/-länge | 9.2. Durée du cycle menstruel | 0..1 | R | Quantität | Anzahl in Tagen<br />364310004 Duration of menstrual cycle (observable entity) |   |   |
| 9.3. Positiver Schwangerschaftstest am | 9.3. Test de grossesse positif le | 0..1 | O | Datum | 250423000 Pregnancy test positive (finding) |   |   |
| 9.4. Schwangerschaft festgestellt am | 9.4. Grossesse constatée le | 0..1 | O | Datum | Datum, an dem die Schwangerschaft durch medizinisches Personal festgestellt wurde. |   |   |
| 9.5. Einnistungsblutung am | 9.5. Saignement d’implantation le | 0..1 | O | Datum |   |   |   |
| 9.6. Konzeptionsart | 9.6. Type de conception | 0..1 | O | Code | Value Set: Konzeptionsart |   |   |
| 9.7. Termin | 9.7. Terme | 0..1 | O |   |   |   |   |
| 9.7.1. Errechneter Termin | 9.7.1. Terme estimé | 0..1 | O | Datum | 161714006 Estimated date of delivery (observable entity) |   |   |
| 9.7.2. Termin US korrigiert | 9.7.2. Correction après échographie | 0..1 | O | Datum | 738070007 Estimated date of delivery from antenatal ultrasound scan (observable entity) |   |   |
| 9.7.3. Definitiver Termin | 9.7.3. Terme définitif | 0..1 | O | Datum |   |   |   |
| 9.8. Assistierte Reproduktionsmethode | 9.8. Technique de procréation médicalement assistée | 0..1 | O |   |   |   |   |
| 9.8.1. Datum Embryotransfer | 9.8.1. Date du transfert d’embryon | 0..1 | O | Datum | Datum, an dem der Embryotransfer stattgefunden hat. |   |   |
| 9.8.2. Alter der eingesetzten Eizelle | 9.8.2. Âge de l’ovocyte utilisé | 0..\* | O | Quantität | Alter der Eizelle in Tagen. |   |   |
| 9.8.3. Bemerkungen | 9.8.3. Remarques | 0..1 | O | String |   |   |   |
| 9.9. Bemerkungen | 9.9. Remarques | 0..1 | O | String | Bemerkungen zur Terminbestimmung |   |   |
| **10.Pränataldiagnostik** | **10. Diagnostic prénatal** | 0..1 | O |   | 243787009 Antenatal screening (procedure) |   |   |
| 10.1. Abgelehnt | 10.1. Refus | 0..1 | O | Boolean | Gibt an, ob die schwangere Frau die Pränataldiagnostik ablehnt oder nicht. |   |   |
| 10.2. Pränataldiagnostik Test | 10.2. Test de diagnostic prénatal | 0..\* | O |   |   |   |   |
| 10.2.1. Code Pränataldiagnostiktest | 10.2.1. Code du test de diagnostic prénatal | 1..1 | M | Code | Value Set: Pränataldiagnostik Test |   |   |
| 10.2.2. Datum der Durchführung | 10.2.2. Date du test | 0..1 | O | Datum |   |   |   |
| 10.2.3. Schwangerschaftswoche+Tage | 10.2.3. Semaine de grossesse + jours | 0..1 | R |   | 1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 10.2.3.1. Schwangerschaftswochen | 10.2.3.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |   |   |
| 10.2.3.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 10.2.3.2. Nombre de jours dans la semaine de grossesse en cours | 0..1 | O | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |   |   |
| 10.2.4. Ergebnis | 10.2.4. Résultat | 0..1 | R | String | Ergebnisse des Pränataldiagnostik Tests |   |   |
| 10.2.5. Bemerkung | 10.2.5. Remarques | 0..1 | O | String | Bemerkungen zum durchgeführten Pränataldiagnostik Test |   |   |

### Serological & Laboratory Tests

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **11. Untersuchungen und Tests** | **11. Analyses et tests** | 0..1 | O |   |   | `Composition.section:lab-subsections` | Modelled accoring [CH LAB-Report](https://fhir.ch/ig/ch-lab-report/index.html), see note row 11.3. below. |
| 11.1. Blutgruppenzugehörigkeit | 11.1. Détermination du groupe sanguin | 0..1 | R |   |   | `Composition.section:lab-subsections`<br />`.section:bloodBankStudies.entry:bloodGroup`<br />-> [CH EPREG Observation (Lab): Blood Group](StructureDefinition-ch-epreg-observation-blood-group.html) | The values for blood group and Rhesus are given as single value (`Observation.valueCodeableConcept`), either one or the other, or both combined.<br />This approach is already in use in Switzerland and IPS:<br />- [https://doc.mednet.swiss/fhir/ValueSet-mni-obs-bloodGroup.html](https://doc.mednet.swiss/fhir/ValueSet-mni-obs-bloodGroup.html)<br />- [https://hl7.org/fhir/uv/ips/STU1.1/ValueSet-results-blood-group-snomed-ct-ips-free-set.html](https://hl7.org/fhir/uv/ips/STU1.1/ValueSet-results-blood-group-snomed-ct-ips-free-set.html)<br />See also the discussion on [chat.fhir.org](https://chat.fhir.org/#narrow/channel/179256-Orders-and-Observation-WG/topic/Blood.20Type). |
| 11.1.1. Untersuchungsdatum | 11.1.1. Date de l’analyse | 1..1 | M | Datum/Zeit |   | `Observation.effectiveDateTime` |   |
| 11.1.2. Durchgeführt durch | 11.1.2. Analyse effectuée par | 1..1 | M |   | Dies kann analog zum Austauschformat eLaborbefund implementiert werden. | `Observation.performer` |   |
| 11.1.3. Blutgruppe | 11.1.3. Groupe sanguin | 0..1 | R | Code | [Value Set: Blutgruppe](mapping-concept-valuesets.html#blood-group--rhesus) | `Observation.valueCodeableConcept` | See note row 11.1. above.  |
| 11.1.4. Rhesus | 11.1.4. Rhésus | 0..1 | R | Code | [Value Set: Rhesus](mapping-concept-valuesets.html#blood-group--rhesus) | `Observation.valueCodeableConcept` |  See note row 11.1. above.<br /> RhD mother and fetal RhD have different [result values](ValueSet-blood-group.html), due to different laboratory tests. |
| 11.2. Bestimmung des fetalen RHD-Status | 11.2. Détermination du RhD fœtal | 0..1 | R |   |   | `Composition.section:lab-subsections`<br />`.section:bloodBankStudies.entry:fetalRhD`<br />-> [CH EPREG Observation (Lab): Fetal RhD](StructureDefinition-ch-epreg-observation-fetal-rhd.html) |   |
| 11.2.1. Untersuchungsdatum | 11.2.1. Date de l’analyse | 1..1 | M | Datum/Zeit |   | `Observation.effectiveDateTime` |   |
| 11.2.2. Rhesus | 11.2.2. Rhésus | 0..1 | R | Code | [Value Set: Rhesus](mapping-concept-valuesets.html#fetal-rhd) | `Observation.valueCodeableConcept` | RhD mother and fetal RhD have different [result values](ValueSet-fetal-rhd-antigen.html), due to different laboratory tests. |
| 11.3. Laboruntersuchung | 11.3. Analyse de laboratoire | 0..\* | O |   | 108252007 Laboratory procedure (procedure) | `Composition.section:lab-subsections`<br />- `.section:bloodBankStudies.entry`<br />- `.section:chemistryStudies.entry`<br />- `.section:hematologyStudies.entry`<br />- `.section:microbiologyStudies.entry`<br />-> [CH EPREG Observation (Base): Results Laboratory](StructureDefinition-ch-epreg-observation-results-lab.html) | Modelled and compliant in accordance with [CH LAB-Report Composition: Laboratory Report](https://fhir.ch/ig/ch-lab-report/StructureDefinition-ch-lab-report-composition.html);<br />`.section:lab-subsections` with sections corresponding to [ValueSet: Laboratory Study Types](https://hl7.eu/fhir/laboratory/ValueSet-lab-studyType-eu-lab.html).<br />Representation of the common sections used for the pregnancy passport, but other sections can be added. |
| 11.3.1. Untersuchungsdatum | 11.3.1. Date de l’analyse | 1..1 | M | Datum/Zeit |   | `Observation.effective[x]` |   |
| 11.3.2. Durchgeführt durch | 11.3.2. Analyse effectuée par | 1..1 | M |   | Dies kann analog zum Austauschformat eLaborbefund implementiert werden. | `Observation.performer` |   |
| 11.3.3. Code Laboruntersuchung | 11.3.3. Code de l’analyse de laboratoire | 1..1 | M | Code | [Value Set: Laboruntersuchung](mapping-concept-valuesets.html#laboratory-results) | `Observation.code` |   |
| 11.3.4. Messergebnis | 11.3.4. Résultats | 1..1 | M |   |   | `Observation.(component.)value[x]` |   |
| 11.3.4.1. Messergebnis quantitativ | 11.3.4.1. Résultat quantitatif | 0..1 | R |   |   | => `.valueQuantity` | [Data Type: Quantity](https://hl7.org/fhir/R4/datatypes.html#Quantity) |
| 11.3.4.1.1. Analyse-Wert | 11.3.4.1.1. Valeur | 0..1 | R | Quantität | 1 Nachkommastelle | => `.valueQuantity.value` |   |
| 11.3.4.1.2. Einheit | 11.3.4.1.2. Unité | 0..1 | R | Code | [Value Set: Messergebnisse Einheit](mapping-concept-valuesets.html#unit) | => `.valueQuantity.code` |   |
| 11.3.4.2. Messergebnis qualitativ | 11.3.4.2. Résultat qualitatif | 0..1 | R | Code | [Value Set: Messergebnisse Qualitativ](mapping-concept-valuesets.html#qualitative) | => `.valueCodeableConcept.coding` | [Data Type: CodeableConcept](https://hl7.org/fhir/R4/datatypes.html#CodeableConcept) |
| 11.3.4.3. Messergebnis Textform | 11.3.4.3. Résultat au format texte | 0..1 | R | String | Messergebnis in Textform falls andere Angabe nicht möglich. | => `.valueCodeableConcpet.text` |   |
| 11.3.5. Immunität anzunehmen | 11.3.5. Immunité acquise | 0..\* | R | Code | Value Set: Interpretation Immunität |   |   |
| 11.4. Laboruntersuchung, Ergebnis maskiert | 11.4. Analyse de laboratoire, résultat non documenté | 0..\* | O |   |   |   |   |
| 11.4.1. Untersuchungsdatum | 11.4.1. Date de l’analyse | 1..1 | M | Datum/Zeit |   |   |   |
| 11.4.2. Durchgeführt durch | 11.4.2. Effectuée par | 1..1 | M | String |   |   |   |
| 11.4.1. Code Laboruntersuchung | 11.4.3. Code de l’analyse de laboratoire | 1..1 | M | Code | Value Set: Laboruntersuchung maskiert |   |   |

### Inpatient Admission During Pregnancy

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **12. Stationäre Aufnahme** | **12. Hospitalisation** | 0..1 | O |   | 32485007 Hospital admission (procedure) |   |   |
| 12.1. Datum (von/bis) | 12.1. Date (du/au) | 0..1 | R |   |   |   |   |
| 12.1.1. Datum Eintritt | 12.1.1. Date d’admission | 0..1 | R | Datum |   |   |   |
| 12.1.2. Datum Austritt | 12.1.2. Date de sortie | 0..1 | R | Datum |   |   |   |
| 12.2. Klinik | 12.2. Institution | 0..1 |   |   |   |   |   |
| 12.2.1. Name der Institution | 12.2.1. Nom de l’institution | 0..1 | R | String |   |   |   |
| 12.2.2. Adresse | 12.2.2. Adresse | 0..1 | O |   |   |   |   |
| 12.2.2.1. Strasse | 12.2.2.1. Rue | 0..1 | O | String |   |   |   |
| 12.2.2.2. Hausnummer | 12.2.2.2. Numéro | 0..1 | O | String |   |   |   |
| 12.2.2.3. Postleitzahl | 12.2.2.3. Code postal | 0..1 | O | String |   |   |   |
| 12.2.2.4. Ort | 12.2.2.4. Localité | 0..1 | O | String |   |   |   |
| 12.2.2.5. Land | 12.2.2.5. Pays | 0..1 | O | String |   |   |   |
| 12.2.3. Telefon | 12.2.3. N° de téléphone | 0..\* | O | String |   |   |   |
| 12.2.4. E-Mailadresse | 12.2.4. Courriel | 0..\* | O | String |   |   |   |
| 12.3. Diagnose | 12.3. Diagnostic | 0..1 | R | String |   |   |   |
| 12.4. Therapie | 12.4. Traitement | 0..1 | O | String |   |   |   |
| 12.5. Verlauf | 12.5. Évolution | 0..1 | O | String |   |   |   |

### Pregnancy Progress

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **13. Untersuchung** | **13. Examen** | 0..1 | O |   |   | `Composition.setion:pregProgress.entry:pregVisit`<br />-> [CH EPREG Encounter: Mother](StructureDefinition-ch-epreg-encounter-mother.html) |   |
| 13.1. Nummer | 13.1. Numéro | 0..1 | O | Count | Nummer der Untersuchung | `Encounter.extension:visitNumber.valuePositiveInt` |   |
| 13.2. Zeitpunkt der Untersuchung | 13.2. Date de l’examen | 1..1 | M |   |   | `Observation.effective[x]` |   |
| 13.2.1. Datum | 13.2.1. Date | 1..1 | M | Datum | Datum der Untersuchung | `Encounter.period.start`<br />`Encounter.period.end` |   |
| 13.2.2. Schwangerschaftswoche+Tage | 13.2.2. Semaine de grossesse + jours | 0..1 | R |   | Schwangerschaftswoche in der die Untersuchung stattgefunden hat<br />1156738004 Fetal gestational age in weeks and days (observable entity) | `Composition.section:pregProgress.entry:gestationalAge`<br />-> [CH EPREG Observation (Mother): Gestational Age in Days](StructureDefinition-ch-epreg-observation-gestational-age-in-days.html)<br />`Observation.valueQuantity` | Gestational age in days, analogous to existing usage in Switzerland:<br />- [https://chmed20af.emediplan.ch/fhir/StructureDefinition-chmed20af-obs-timeofgestation.html](https://chmed20af.emediplan.ch/fhir/StructureDefinition-chmed20af-obs-timeofgestation.html)<br />- [https://doc.mednet.swiss/fhir/StructureDefinition-mni-obs-timeOfGestation.html](https://doc.mednet.swiss/fhir/StructureDefinition-mni-obs-timeOfGestation.html) |
| 13.2.2.1. Schwangerschaftswochen | 13.2.2.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |  | See note row 13.2.2. above. |
| 13.2.2.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 13.2.2.2. Nombre de jours dans la semaine de grossesse en cours | 1..1 | M | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |  | See note row 13.2.2. above. |
| 13.3. Angaben zur Schwangeren | 13.3. Informations sur la femme enceinte | 0..1 | O |   |   | `Observation.subject`<br />-> [CH EPREG Patient: Mother](StructureDefinition-ch-epreg-patient-mother.html)<br />`Observation.encounter`<br />->[CH EPREG Encounter: Mother](StructureDefinition-ch-epreg-encounter-mother.html) | See [Guidance: Encounters/Observations of Mother and Child](guidance-child-relationships.html#encountersobservations-of-mother-and-child). |
| 13.3.1. Aktuelles Gewicht | 13.3.1. Poids actuel | 0..1 | O | Quantität | Aktuelles Gewicht in kg.<br />1 Nachkommastelle | `Compostion.section:pregProgress.entry:bodyWeight`<br />-> [CH EPREG Observation (Mother): Body Weight](StructureDefinition-ch-epreg-observation-body-weight.html)<br />`Observation.valueQuantity` | Conforms to [FHIR Body Weight Profile](https://hl7.org/fhir/R4/bodyweight.html). |
| 13.3.2. Gewichtszunahme | 13.3.2. Prise de poids | 0..1 | O | Quantität | Gewichtszunahme in kg.<br />1 Nachkommastelle | `Composition.section:weightGain`<br />-> [CH EPREG Observation (Mother): Weight Gain](StructureDefinition-ch-epreg-observation-weight-gain.html)<br />`Observation.valueQuantity` |   |
| 13.3.3. Blutdruck | 13.3.3. Pression artérielle | 0..1 | O |   | 75367002 Blood pressure (observable entity)<br />LOINC: 85354-9 Blood pressure panel with all children optional | `Composition.section:pregProgress.entry:bloodPressure`<br />-> [CH EPREG Observation (Mother): Blood Pressure](StructureDefinition-ch-epreg-observation-blood-pressure.html) | Conforms to [FHIR Blood Pressure Profile](https://hl7.org/fhir/R4/bp.html). |
| 13.3.3.1. Systolischer Blutdruckwert | 13.3.3.1. Valeur de la pression artérielle systolique | 1..1 | M | Quantität | Angabe in mmHg<br />271649006 Systolic blood pressure (observable entity) <br />LOINC: 8480-6 Systolic blood pressure | `Observation.component:SystolicBP.valueQuantity` |   |
| 13.3.3.2. Diastolischer Blutdruckwert | 13.3.3.2. Valeur de la pression artérielle diastolique | 1..1 | M | Quantität | Angabe in mmHg<br />271650006 Diastolic blood pressure (observable entity) <br />LOINC: 8462-4 Diastolic blood pressure | `Observation.component:DiastolicBP.valueQuantity` |   |
| 13.3.4. Urin | 13.3.4. Urine | 0..1 | O |   | 364687002 Urine observable (observable entity) | `Composition.section:pregProgress.entry:urineFinding`<br />-> [CH EPREG Observation (Mother): Urine Finding](StructureDefinition-ch-epreg-observation-urine-finding.html)<br />`Observation.valueString` |   |
| 13.3.4.1. Eiweiss | 13.3.4.1. Protéines | 0..1 | O | String | 171247004 Urine screening for protein (procedure) | `Observation.component:protein.valueString` |   |
| 13.3.4.2. Zucker | 13.3.4.2. Glucose | 0..1 | O | String | 268556000 Urine screening for glucose (procedure) | `Observation.component:glucose.valueString` |   |
| 13.3.4.3. Nitrit | 13.3.4.3. Nitrites | 0..1 | O | String |   | `Observation.component:nitrite.valueString` |   |
| 13.3.4.4. Bakterien | 13.3.4.4. Bactéries | 0..1 | O | String |   | `Observation.component:bacteria.valueString` |   |
| 13.3.5. BU (Bauchumfang) | 13.3.5. Circonférence abdominale | 0..1 | O | Quantität |   | `Composition.section:pregProgress.entry:abdominalCircumference`<br />-> [CH EPREG Observation (Mother): Abdominal Circumference](StructureDefinition-ch-epreg-observation-abdominal-circumference.html)<br />`Observation.valueQuantity` |   |
| 13.3.6. SY-FU (Symphysen-Fundus-Abstand) | 13.3.6. Hauteur utérine | 0..1 | O | String | 364265003 Height of gravid uterus (observable entity) | `Composition.section:pregProgress.entry:fundusHeight`<br />[CH EPREG Observation (Mother): Fundus Height](StructureDefinition-ch-epreg-observation-fundus-height.html)<br />`Observation.valueString` |   |
| 13.3.7. Vaginalbefund | 13.3.7. Examen gynécologique | 0..1 | O | String |   | `Composition.section:pregProgress.entry:vaginaFeature`<br />-> [CH EPREG Observation (Mother): Vagina Feature](StructureDefinition-ch-epreg-observation-vagina-feature.html)<br />`Observation.valueString` |   |
| 13.3.8. Weitere Untersuchungen und Fragen | 13.3.8. Autres examens et questions | 0..1 | O |   |   | `Composition.section:pregProgress.entry`<br />-> [CH EPREG Observation (Base): Pregnancy Progress](StructureDefinition-ch-epreg-observation-preg-progress.html) | Additional Observation entries, representing the specific examination/question can be added in the section `pregProgress`, see also the according [guidance section](mapping-concept-valuesets.html#further-examinations). |
| 13.3.8.1. Untersuchung oder Frage | 13.3.8.1. Examen ou question | 1..1 | M | Code | [Value Set: Weitere Untersuchungen und Fragen](mapping-concept-valuesets.html#further-examinations) | `Observation.code` |   |
| 13.3.8.2. Beurteilung | 13.3.8.2. Évaluation | 1..1 | M | String |   | `Observation.(component.)value[x]` |   |
| 13.4. Angaben zum Fötus/Kind | 13.4. Informations sur le fœtus/l’enfant | 0..\* | O |   |   | `Observation.subject`<br />-> [CH EPREG Patient: Child](StructureDefinition-ch-epreg-patient-child.html)<br />`Observation.encounter`<br />->[CH EPREG Encounter: Child](StructureDefinition-ch-epreg-encounter-child.html) | The modelling of the CH EPREG Observations for the (unborn) child reflects the need of the concept (separate information about the mother and the (unborn) child) and is based on the FHIR base spec and the IBCM IG, see [guidance](guidance-child-relationships.html#child-and-mother). |
| 13.4.1. Identifikation | 13.4.1. Identification | 0..1 | O | String | Angaben oder Beschreibung von Merkmalen zur Unterscheidung der Föten/Kinder im Falle einer Mehrlingsschwangerschaft. | [CH EPREG Patient: Child](StructureDefinition-ch-epreg-patient-child.html)<br />`Patient.identifier:internalPid` |   |
| 13.4.2. Kindsbewegungen | 13.4.2. Mobilité fœtale | 0..1 | O | String | 249040004 Fetal movement activity (observable entity) | `Composition.section:pregProgress.entry:fetalMovement`<br />-> [CH EPREG Observation (Child): Fetal Movement](StructureDefinition-ch-epreg-observation-fetal-movement.html)<br />`Observation.valueString` |   |
| 13.4.3. Herztöne | 13.4.3. Bruits cardiaques fœtaux | 0..1 | O | String | 364620002 Fetal heart feature (observable entity) | `Composition.section:pregProgress.entry:fetalHeartFeature`<br />-> [CH EPREG Observation (Child): Fetal Heart Feature](StructureDefinition-ch-epreg-observation-fetal-heart-feature.html)<br />Observation.valueString |   |
| 13.4.4. Kindslage | 13.4.4. Position fœtale | 0..1 | O | String | 364607000 Position of fetus (observable entity) | `Composition.section:pregProgress.entry:fetalPosition`<br />-> [CH EPREG Observation (Child): Fetal Position](StructureDefinition-ch-epreg-observation-fetal-position.html)<br />Observation.valueCodeableConcept |   |
| 13.5. Therapie | 13.5. Thérapie | 0..1 | O | String |   |   |   |
| 13.6. Arbeitsunfähigkeitszeugnis | 13.6. Certificat d’incapacité de travail | 0..1 | O | String |   |   |   |
| 13.6.1. Arbeitsunfähig | 13.6.1. Incapacité de travail | 1..1 | M | Boolean |   |   |   |
| 13.6.2. Beginn der Arbeitsunfähigkeit | 13.6.2. Début de l’incapacité de travail | 0..1 | O | Datum |   |   |   |
| 13.6.3. Bemerkungen | 13.6.3. Remarques | 0..1 | O | String | Bemerkungen zur Arbeitsunfähigkeit |   |   |
| 13.7. Bemerkungen | 13.7. Remarques | 0..1 | O | String | Bemerkungen zur Untersuchung | [CH EPREG Encounter: Mother](StructureDefinition-ch-epreg-encounter-mother.html)<br />`Encounter.extension:note.valueString` |   |
| 13.8. Nächste Kontrolle | 13.8. Prochain contrôle | 0..1 | O | Datum |   | [CH EPREG Encounter: Mother](StructureDefinition-ch-epreg-encounter-mother.html)<br />`Encounter.extension:nextVisit.valueDateTime` |   |
| 13.9. Kontrolle durchgeführt durch | 13.9. Contrôle effectué par | 1..1 | M |   |   | `Encounter.participant.individual` (Mother & Child)<br />-> [CH EPREG PractitionerRole: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitionerrole-thcp.html)<br />`Observation.performer` (Mother & Child)<br />-> [CH EPREG PractitionerRole: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitionerrole-thcp.html) |   |
| 13.9.1. GLN-Nummer | 13.9.1. Numéro GLN | 0..1 | R | Identifikator |   | `Organization.identifier:GLN` |   |
| 13.9.2. Name | 13.9.2. Nom | 0..1 | R |   |   | `Practitioner.name` |   |
| 13.9.2.1. Titel | 13.9.2.1. Titre | 0..1 | O | String |   | `Practitioner.name.prefix` |   |
| 13.9.2.2. Nachname | 13.9.2.2. Nom | 0..1 | R | String |   | `Practitioner.name.family` |   |
| 13.9.2.3. Vorname | 13.9.2.3. Prénom | 0..1 | R | String |   | `Practitioner.name.given` |   |
| 13.9.3. Name der Institution | 13.9.3. Nom de l’institution | 0..1 | R | String |   | `Organization.name` |   |
| 13.9.4. Adresse | 13.9.4. Adresse | 0..1 | R |   |   | `Organization.address` |   |
| 13.9.4.1. Strasse | 13.9.4.1. Rue | 0..1 | R | String |   | `Organization.address.line` |   |
| 13.9.4.2. Hausnummer | 13.9.4.2. Numéro | 0..1 | R | String |   | `Organization.address.line` |   |
| 13.9.4.3. Postleitzahl | 13.9.4.3. Code postal | 0..1 | R | String |   | `Organization.address.postalCode` |   |
| 13.9.4.4. Ort | 13.9.4.4. Localité | 0..1 | R | String |   | `Organization.address.city` |   |
| 13.9.4.5. Land | 13.9.4.5. Pays | 0..1 | R | String |   | `Organization.address.country` |   |
| 13.9.5. Telefon | 13.9.5. N° de téléphone | 0..1 | R |   |   | `Organization.telecom` |   |
| 13.9.5.1. Festnetz | 13.9.5.1. Fixe | 0..1 | R | String |   | `Organization.telecom:phone`<br />`use` = work |   |
| 13.9.5.2. Mobil | 13.9.5.2. Mobile | 0..1 | O | String |   | `Organization.telecom:phone`<br />`use` = mobile |   |
| 13.9.6. E-Mailadresse | 13.9.6. Courriel | 0..1 | O | String |   | `Organization.telecom:email` |   |


### Ultrasound Examinations & CTG Monitoring

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **14. Ultraschall** | **14. Échographie** | 0..1 | O |   | 16310003 Ultrasonography (procedure) |   |   |
| 14.1. Nummer | 14.1. Numéro | 0..1 | O | Count | Nummer der Ultraschalluntersuchung |   |   |
| 14.2. Zeitpunkt der Untersuchung | 14.2. Moment | 1..1 | M |   |   |   |   |
| 14.2.1. Datum | 14.2.1. Date | 1..1 | M | Datum | Datum der Ultraschalluntersuchung |   |   |
| 14.2.2. Schwangerschaftswoche+Tage | 14.2.2. Semaine de grossesse + jours | 0..1 | R |   | Schwangerschaftswoche in der die Ultraschalluntersuchung stattgefunden hat<br />1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 14.2.2.1. Schwangerschaftswochen | 14.2.2.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |   |   |
| 14.2.2.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 14.2.2.2. Nombre de jours dans la semaine de grossesse en cours | 1..1 | M | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |   |   |
| 14.2.3. Schwangerschaftswoche+Tage (korrigiert) | 14.2.3. Semaine de grossesse + jours (correction) | 0..1 | O |   | In diesem Element ist es möglich, im Verlauf der Untersuchung die Angabe zur Schwangerschaftswoche zu korrigieren bzw. anzupassen.<br />1157308000 Corrected fetal gestational age in weeks and days (observable entity) |   |   |
| 14.2.3.1. Schwangerschaftswochen | 14.2.3.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |   |   |
| 14.2.3.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 14.2.3.2. Nombre de jours dans la semaine de grossesse en cours | 1..1 | M | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |   |   |
| 14.3. Angaben zur Schwangerschaft | 14.3. Informations concer t la grossesse | 0..\* | O |   |   |   |   |
| 14.3.1. Untersuchte Parameter | 14.3.1. Paramètre examiné | 1..1 | M | Code | Value Set: Angaben zur Schwangerschaft |   |   |
| 14.3.2. Beurteilung | 14.3.2. Évaluation | 1..1 | M | Boolean | Beurteilung, ob der untersuchte Parameter zutrifft oder nicht |   |   |
| 14.3.3. Bemerkungen | 14.3.3. Remarques | 0..1 | O | String | Bemerkungen zum untersuchten Parameter |   |   |
| 14.4. Plazenta | 14.4. Placenta | 0..1 | O | String | Angaben zur Plazenta<br />78067005 Placental structure (body structure) |   |   |
| 14.5. Fruchtwasser | 14.5. Liquide amniotique | 0..1 | O | String | Angaben zum Fruchtwasser<br />77012006 Amniotic fluid (substance) |   |   |
| 14.6. Angaben zum Fötus/Kind | 14.6. Informations concer t le fœtus/l’enfant | 0..\* | O |   |   |   |   |
| 14.6.1. Identifikation | 14.6.1. Identification | 0..1 | O | String | Angaben oder Beschreibung von Merkmalen zur Unterscheidung der Föten/Kinder im Falle einer Mehrlingsschwangerschaft. |   |   |
| 14.6.2. Allgemeine Angaben | 14.6.2. Informations générales | 0..\* | O |   |   |   |   |
| 14.6.2.1. Untersuchte Parameter | 14.6.2.1. Paramètre examiné | 1..1 | M | Code | 5.1.8 Value Set: Abort<br />Angaben zum Fötus/Kind (Ultraschall) |   |   |
| 14.6.2.2. Beurteilung | 14.6.2.2. Évaluation | 1..1 | M | Boolean | Beurteilung, ob der untersuchte Parameter zutrifft oder nicht |   |   |
| 14.6.2.3. Bemerkungen | 14.6.2.3. Remarques | 0..1 | O | String | Bemerkungen zum untersuchten Parameter |   |   |
| 14.6.3. Biometrie | 14.6.3. Biométrie | 0..\* | O |   |   |   |   |
| 14.6.3.1. Messparameter | 14.6.3.1. Paramètre | 1..1 | M | Code | Value Set: Messparameter Biometrie |   |   |
| 14.6.3.2. Messwert | 14.6.3.2. Valeur | 1..1 | M | Quantität | Länge in mm.<br />1 Nachkommastelle |   |   |
| 14.6.3.3. Perzentil | 14.6.3.3. Percentile | 0..1 | R |   | 1157309008 Percentile of fetal growth (observable entity) |   |   |
| 14.6.3.3.1. System | 14.6.3.3.1. Système | 1..1 | M | Code | Value Set: Perzentil System |   |   |
| 14.6.3.3.2. Wert | 14.6.3.3.2. Valeur | 1..1 | M | Quantität | Perzentil in % |   |   |
| 14.6.3.4. Bemerkungen | 14.6.3.4. Remarques | 0..1 | O | String | Bemerkungen zum untersuchten Messparameter |   |   |
| 14.6.4. Zeitgerechte Entwicklung | 14.6.4. Développement normal | 0..1 | O |   | 713117007 Monitoring fetal development (regime/therapy) |   |   |
| 14.6.4.1. Liegt vor | 14.6.4.1. Développement normal | 0..1 | O | Boolean | Gibt an, ob die Entwicklung zeitgerecht ist oder nicht. |   |   |
| 14.6.4.2. Kontrollbedürftig | 14.6.4.2. Contrôle nécessaire | 0..1 | O | Boolean | Gibt an, ob die Entwicklung kontrollbedürftig ist oder nicht. |   |   |
| 14.6.4.3. Bemerkungen | 14.6.4.3. Remarques | 0..1 | O | String | Bemerkungen zur zeitgerechten Entwicklung |   |   |
| 14.7. Konsiliaruntersuchung veranlasst | 14.7. Consilium | 0..1 | O | Boolean | Gibt an, ob eine Konsiliaruntersuchung veranlasst wurde oder nicht. |   |   |
| 14.8. Besonderheiten | 14.8. Particularités | 0..1 | O | String | Besonderheiten zur Ultraschalluntersuchung |   |   |
| 14.9. Bemerkungen | 14.9. Remarques | 0..1 | O | String | Bemerkungen zur Ultraschalluntersuchung |   |   |
| 14.10. Untersuchung durchgeführt durch | 14.10. Examen effectué par | 1..1 | M |   |   |   |   |
| 14.10.1. GLN-Nummer | 14.10.1. Numéro GLN | 0..1 | O | Identifikator |   |   |   |
| 14.10.2. Name | 14.10.2. Nom | 0..1 | R |   |   |   |   |
| 14.10.2.1. Titel | 14.10.2.1. Titre | 0..1 | O | String |   |   |   |
| 14.10.2.2. Nachname | 14.10.2.2. Nom | 0..1 | R | String |   |   |   |
| 14.10.2.3. Vorname | 14.10.2.3. Prénom | 0..1 | R | String |   |   |   |
| 14.10.3. Name der Institution | 14.10.3. Nom de l’institution | 0..1 | R | String |   |   |   |
| 14.10.3.1. Adresse | 14.10.3.1. Adresse | 0..1 | R |   |   |   |   |
| 14.10.3.2. Strasse | 14.10.3.2. Rue | 0..1 | R | String |   |   |   |
| 14.10.3.3. Hausnummer | 14.10.3.3. Numéro | 0..1 | R | String |   |   |   |
| 14.10.3.4. Postleitzahl | 14.10.3.4. Code postal | 0..1 | R | String |   |   |   |
| 14.10.3.5. Ort | 14.10.3.5. Localité | 0..1 | R | String |   |   |   |
| 14.10.3.6. Land | 14.10.3.6. Pays | 0..1 | R | String |   |   |   |
| 14.10.4. Telefon | 14.10.4. N° de téléphone | 0..1 | R |   |   |   |   |
| 14.10.4.1. Festnetz | 14.10.4.1. Fixe | 0..1 | R | String |   |   |   |
| 14.10.4.2. Mobil | 14.10.4.2. Mobile | 0..1 | O | String |   |   |   |
| 14.10.5. E-Mailadresse | 14.10.5. Courriel | 0..1 | O | String |   |   |   |
| **15. Kardiotokografie** | **15. CTG** | 0..\* | O |   |   |   |   |
| 15.1. Identifikation | 15.1. Identification | 0…1 | O | String | Angaben oder Beschreibung von Merkmalen zur Unterscheidung der Föten/Kinder im Falle einer Mehrlingsschwangerschaft. |   |   |
| 15.2. Zeitpunkt der Untersuchung | 15.2. Date de l’examen | 1..1 | M |   |   |   |   |
| 15.2.1. Datum und Zeit | 15.2.1. Date et heure | 1..1 | M | Datum/Zeit | Datum des CTG |   |   |
| 15.2.2. Schwangerschaftswoche + Tage | 15.2.2. Semaine de grossesse + jours | 0..1 | R |   | Schwangerschaftswoche in der das CTG durchgeführt wurde<br />1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 15.2.2.1. Schwangerschaftswochen | 15.2.2.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |   |   |
| 15.2.2.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 15.2.2.2. Nombre de jours dans la semaine de grossesse en cours | 1..1 | M | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |   |   |
| 15.3. Befund | 15.3. Résultats | 0..1 | R |   | Befund zum CTG |   |   |
| 15.3.1. Interpretation FIGO-Score | 15.3.1. Interprétation du score FIGO | 0..1 | O | String |   |   |   |
| 15.3.2. Baseline | 15.3.2. Fréquence cardiaque de base | 0..1 | O | Quantität |   |   |   |
| 15.3.3. Oszillation | 15.3.3. Oscillations | 0..1 | O | Quantität |   |   |   |
| 15.3.4. Akzelerationen | 15.3.4. Accélérations | 0..1 | O | Boolean |   |   |   |
| 15.3.5. Dezelerationen | 15.3.5. Décélérations | 0..1 | O | String |   |   |   |
| 15.4. Kontrolle durchgeführt durch | 15.4. Contrôle effectué par | 1..1 | M |   |   |   |   |
| 15.4.1. GLN-Nummer | 15.4.1. Numéro GLN | 0..1 | O | Identifikator |   |   |   |
| 15.4.2. Name | 15.4.2. Nom | 0..1 | R |   |   |   |   |
| 15.4.2.1. Titel | 15.4.2.1. Titre | 0..1 | O | String |   |   |   |
| 15.4.2.2. Nachname | 15.4.2.2. Nom | 0..1 | R | String |   |   |   |
| 15.4.2.3. Vorname | 15.4.2.3. Prénom | 0..1 | R | String |   |   |   |
| 15.4.3. Name der Institution | 15.4.3. Nom de l’institution | 0..1 | R | String |   |   |   |
| 15.4.4. Adresse | 15.4.4. Adresse | 0..1 | R |   |   |   |   |
| 15.4.4.1. Strasse | 15.4.4.1. Rue | 0..1 | R | String |   |   |   |
| 15.4.4.2. Hausnummer | 15.4.4.2. Numéro | 0..1 | R | String |   |   |   |
| 15.4.4.3. Postleitzahl | 15.4.4.3. Code postal | 0..1 | R | String |   |   |   |
| 15.4.4.4. Ort | 15.4.4.4. Localité | 0..1 | R | String |   |   |   |
| 15.4.4.5. Land | 15.4.4.5. Pays | 0..1 | R | String |   |   |   |
| 15.4.5. Telefon | 15.4.5. N° de téléphone | 0..1 | R |   |   |   |   |
| 15.4.5.1. Festnetz | 15.4.5.1. Fixe | 0..1 | R | String |   |   |   |
| 15.4.5.2. Mobil | 15.4.5.2. Mobile | 0..1 | O | String |   |   |   |
| 15.4.6. E-Mailadresse | 15.4.6. Courriel | 0..1 | O | String |   |   |   |

### Delivery

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **16. Geburt** | **16. Accouchement** | 0..1 | O |   | 3950001 Birth (finding) |   |   |
| 16.1. Datum und Zeit | 16.1. Date et heure | 1..1 | M | Datum/Zeit | Datum und Zeit der Geburt |   |   |
| 16.2. Schwangerschaftswoche+Tage | 16.2. Semaine de grossesse + jours | 0..1 | O |   | Schwangerschaftswoche in der die Geburt stattgefunden hat<br />1156738004 Fetal gestational age in weeks and days (observable entity) |   |   |
| 16.2.1. Schwangerschaftswochen | 16.2.1. Semaines de grossesse | 1..1 | M | Quantität | Anzahl der Wochen in der laufenden Schwangerschaft |   |   |
| 16.2.2. Anzahl an Tagen in laufender Schwangerschaftswoche | 16.2.2. Nombre de jours dans la semaine de grossesse en cours | 1..1 | M | Quantität | Anzahl der Tage in der laufenden Schwangerschaftswoche |   |   |
| 16.3. Geburtsverlauf | 16.3. Déroulement de l’accouchement | 0..1 | O |   |   |   |   |
| 16.3.1. Phasendauer | 16.3.1. Durée des phases | 0..\* | O |   |   |   |   |
| 16.3.1.1. Phase | 16.3.1.1. Phase | 1..1 | M | Code | Value Set: Phase |   |   |
| 16.3.1.2. Dauer | 16.3.1.2. Durée | 1..1 | M | Quantität | Dauer der jeweiligen Phase in Stunden. 2 Nachkommastellen. |   |   |
| 16.3.2. Wehenbeginn | 16.3.2. Début du travail | 0..1 | O | Datum/Zeit | Datum und Zeit des Beginns der Wehen |   |   |
| 16.3.3. Schmerztherapie | 16.3.3. Traitement de la douleur | 0..\* | O | Code | Value Set: Schmerztherapie |   |   |
| 16.3.4. Medikamentöse Wehenunterstützung | 16.3.4. Induction médicamenteuse du travail | 0..1 | O | Boolean |   |   |   |
| 16.3.5. Vorzeitiger Blasensprung | 16.3.5. Rupture prématurée des membranes | 0..1 | O |   |   |   |   |
| 16.3.5.1. PROM | 16.3.5.1. Rupture prématurée des membranes | 0..1 | O | String |   |   |   |
| 16.3.5.2. Datum und Zeit | 16.3.5.2. Date et heure | 0..1 | O | Datum/Zeit | Datum und Zeit des vorzeitigen Blasensprunges |   |   |
| 16.3.6. Amniotomie | 16.3.6. Amniotomie | 0..1 | O | Datum/Zeit |   |   |   |
| 16.3.7. Fruchtwasserfarbe | 16.3.7. Couleur du liquide amniotique | 0..1 | O | String |   |   |   |
| 16.3.8. Medikamentenabgabe im Verlauf | 16.3.8. Administration de médicaments pendant l’accouchement | 0..1 | O | String |   |   |   |
| 16.3.9. Blutung im Verlauf | 16.3.9. Hémorragie pendant l’accouchement | 0..1 | O | String |   |   |   |
| 16.3.10. Manuelle Plazentalösung | 16.3.10. Extraction manuelle du placenta | 0..1 | O | String |   |   |   |
| 16.3.11. Blutverlust total | 16.3.11. Perte de sang totale | 0..1 | O | Quantität | Blutverlust in ml |   |   |
| 16.3.12. Verlegung intrapartal | 16.3.12. Transfert pendant l’accouchement | 0..1 | O | Boolean |   |   |   |
| 16.3.13. Verlegung postpartal | 16.3.13. Transfert post-partum | 0..1 | O | Boolean |   |   |   |
| 16.4. Geburtsverletzungen Mutter | 16.4. Traumatismes obstétricaux (mère) | 0..1 | O |   |   |   |   |
| 16.4.1. Damm | 16.4.1. Périnée | 0..1 | O |   |   |   |   |
| 16.4.1.1. Damm intakt | 16.4.1.1. Périnée intact | 0..1 | O | Boolean | Gibt an, ob der Damm intakt ist. |   |   |
| 16.4.1.2. Dammriss | 16.4.1.2. Déchirure du périnée | 0..1 | O | Code | Value Set: Dammriss |   |   |
| 16.4.2. Vaginalriss | 16.4.2. Déchirure du vagin | 0..1 | O | Boolean |   |   |   |
| 16.4.3. Cervixriss | 16.4.3. Déchirure du col de l’utérus | 0..1 | O | Boolean |   |   |   |
| 16.4.4. Episiotomie | 16.4.4. Épisiotomie | 0..1 | O | Boolean |   |   |   |
| 16.4.5. Plazenta vollständig | 16.4.5. Placenta entier | 0..1 | O | Boolean |   |   |   |
| 16.5. Angaben zum Kind | 16.5. Informations concer t l’enfant | 0..\* | O |   | 118188004 Finding of neonate (finding) |   |   |
| 16.5.1. Identifikator | 16.5.1. Identification | 0..1 | O | String |   |   |   |
| 16.5.2. Lebendgeburt | 16.5.2. Naissante vivante | 1..1 | M | Boolean | 281050002 Livebirth (finding) |   |   |
| 16.5.3. Geburtsmodus | 16.5.3. Type d’accouchement | 0..1 | O | Code | Value Set: Geburtsmodus<br />364336006 Pattern of delivery (observable entity) |   |   |
| 16.5.4. Kindslage | 16.5.4. Position de l’enfant | 0..1 | O | Code | [Value Set: Kindslage](mapping-concept-valuesets.html#fetal-position)<br />364607000 Position of fetus (observable entity) |   |   |
| 16.5.5. Geburtsverletzungen Kind | 16.5.5. Traumatismes obstétricaux (enfant) | 0..\* | O | Code | Value Set: Geburtsverletzungen Kind |   |   |
| 16.5.6. Name | 16.5.6. Nom | 0..1 | O | String | Vorname(n) des Kindes |   |   |
| 16.5.7. Geschlecht | 16.5.7. Sexe | 0..1 | O | Code | Value Set: Geschlecht |   |   |
| 16.5.8. Körpergewicht | 16.5.8. Poids | 0..1 | O | Quantität | Gewicht in g<br />364589006 Birth weight (observable entity) <br />LOINC: 8339-4 Birth weight Measured |   |   |
| 16.5.9. Körperlänge | 16.5.9. Taille | 0..1 | O | Quantität | Länge in cm.<br />1 Nachkommastelle<br />169886007 Birth length (observable entity) <br />LOINC: 89269-5 Body height Measured --at birth |   |   |
| 16.5.10. Kopfumfang | 16.5.10. Circonférence céphalique | 0..1 | O | Quantität | Kopfumfang in cm.<br />1 Nachkommastelle<br />169876006 Birth head circumference (observable entity) <br />LOINC: 9843-4 Head Occipital-frontal circumference |   |   |
| 16.5.11. Apgar-Score | 16.5.11. Score d’Apgar | 0..\* | O |   | 249228009 Total apgar score (observable entity) |   |   |
| 16.5.11.1. Apgar-Score Zeitpunkt | 16.5.11.1. Moment | 0..1 | O | Code | Value Set: Apgar-Score Zeitpunkt |   |   |
| 16.5.11.2. Apgar-Score Wert | 16.5.11.2. Valeur | 0..1 | O | Code | Value Set: Apgar-Score Wert |   |   |
| 16.5.12. pH-Wert | 16.5.12. Valeur de pH | 0..1 | O |   |   |   |   |
| 16.5.12.1. pH-Wert Nabelarterie | 16.5.12.1. Valeur de pH de l’artère ombilicale | 0..1 | O | Quantität | Wert zwischen 0-14. 2 Nachkommastellen |   |   |
| 16.5.12.2. pH-Wert Nabelvene | 16.5.12.2. Valeur de pH de la veine ombilicale | 0..1 | O | Quantität | Wert zwischen 0-14. 2 Nachkommastellen |   |   |
| 16.5.13. Fehlbildung | 16.5.13. Malformation | 0..1 | O |   | 276654001 Congenital malformation (disorder) |   |   |
| 16.5.13.1. Fehlbildung vorhanden | 16.5.13.1. Présence d’une malformation | 1..1 | M | Boolean | Gibt an, ob eine Fehlbildung beim Kind vorhanden ist oder nicht. |   |   |
| 16.5.13.2. Beschreibung Fehlbildung | 16.5.13.2. Description de la malformation | 0..1 | O | String | Beschreibung der Fehlbildung |   |   |
| 16.5.14. Besonderheiten | 16.5.14. Particularités | 0..1 | O | String | Beschreibung Besonderheiten zum Kind |   |   |
| 16.6. Bemerkungen zur Geburt | 16.6. Remarques concer t l’accouchement | 0..1 | O | String | Bemerkungen zur Geburt |   |   |


### Postpartum

{:class="table table-bordered"}
| Name German | Name French | Cardinality | Conformity | Data Type | Coding (SNOMED CT) / Comments | Mapping to FHIR (Resources, Elements) | Notes on Modeling Considerations |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **17. Wochenbett** | **17. Post-partum** | 0..1 | O |   |   |   |   |
| 17.1. Wochenbettverlauf | 17.1. Déroulement du post-partum | 0..1 | O |   |   |   |   |
| 17.1.1. Wundheilung | 17.1.1. Cicatrisation | 0..1 | O | String |   |   |   |
| 17.1.2. Ausscheidung | 17.1.2. Excrétion | 0..1 | O | String |   |   |   |
| 17.1.3. Rückbildung Uterus | 17.1.3. Involution utérine | 0..1 | O | String |   |   |   |
| 17.1.4. Wochenfluss | 17.1.4. Lochies | 0..1 | O | String |   |   |   |
| 17.1.5. Brust | 17.1.5. Seins | 0..1 | O | String |   |   |   |
| 17.1.6. Mamillen | 17.1.6. Mamelons | 0..1 | O | String |   |   |   |
| 17.1.7. Vitalzeichen | 17.1.7. Signes vitaux | 0..1 | O | String |   |   |   |
| 17.1.8. Medikamente | 17.1.8. Médicaments | 0..1 | O | String |   |   |   |
| 17.1.9. Psychisches Befinden | 17.1.9. État psychique | 0..1 | O | String |   |   |   |
| 17.2. Komplikationen | 17.2. Complications | 0..1 | O |   |   |   |   |
| 17.2.1. Komplikationen eingetreten | 17.2.1. Survenue de complications | 1..1 | M | Boolean | Gibt an, ob Komplikationen eingetreten sind oder nicht. |   |   |
| 17.2.2. Beschreibung Komplikationen | 17.2.2. Description des complications | 0..1 | R | String | Beschreibung der eingetretenen Komplikationen |   |   |
| 17.3. Gynäkologischer Austrittsbefund | 17.3. Examen gynécologique de sortie | 0..1 | O |   |   |   |   |
| 17.3.1. Gynäkologsicher Befund normal | 17.3.1. Examen gynécologique normal | 0..1 | O | Boolean | Gibt an, ob der gynäkologische Befund normal war oder nicht. |   |   |
| 17.3.2. Beschreibung gynäkologischer Befund | 17.3.2. Description | 0..1 | R | String | Beschreibung des gynäkologischen Befundes falls nicht normal. |   |   |
| 17.4. Vitalwerte bei Entlassung | 17.4. Signes vitaux au moment de la sortie | 0..1 | O |   |   |   |   |
| 17.4.1. Hb bei Entlassung | 17.4.1. Concentration en hémoglobine | 0..1 | O | Quantität |   |   |   |
| 17.4.2. Blutdruck | 17.4.2. Pression artérielle | 0..1 | O |   | 75367002 Blood pressure (observable entity)<br />LOINC: 85354-9 Blood pressure panel with all children optional |   |   |
| 17.4.2.1. Systolischer Blutdruckwert | 17.4.2.1. Pression artérielle systolique | 1..1 | M | Quantität | Angabe in mmHg<br />271649006 Systolic blood pressure (observable entity) <br />LOINC: 8480-6 Systolic blood pressure |   |   |
| 17.4.2.2. Diastolischer Blutdruckwert | 17.4.2.2. Pression artérielle diastolique | 1..1 | M | Quantität | Angabe in mmHg<br />271650006 Diastolic blood pressure (observable entity) <br />LOINC: 8462-4 Diastolic blood pressure |   |   |
| 17.4.3. Puls | 17.4.3. Pouls | 0..1 | M | Quantität | Puls in Anzahl Schlägen pro Minute |   |   |
| 17.4.4. Körpertemperatur | 17.4.4. Température corporelle | 0..1 | M | Quantität | Temperatur in Grad Celsius.<br />1 Nachkommastelle. |   |   |
| 17.5. Anti-D-Prophylaxe | 17.5. Prophylaxie anti-D | 0..1 | O | Boolean | Gibt an, ob Massnahmen zur Anti-D-Prophylaxe unternommen wurden oder nicht. |   |   |
| 17.6. Besonderheiten | 17.6. Particularités | 0..1 | O | String |   |   |   |
| 17.7. Datum der Entlassung | 17.7. Date de sortie | 0..1 | O | Datum |   |   |   |
| 17.8. Angaben zum Kind | 17.8. Informations concer t l’enfant | 0..1 | O |   |   |   |   |
| 17.8.1. Blutgruppe | 17.8.1. Groupe sanguin | 0..1 | O | Code | Value Set: Blutgruppe |   |   |
| 17.8.2. Rhesus | 17.8.2. Rhésus | 0..1 | O | Code | Value Set: Rhesus |   |   |
| 17.8.3. Direkter Coombstest | 17.8.3. Test direct à l’antiglobuline | 0..1 | O | Code | Value Set: CoombstestCoombstest |   |   |
| 17.8.4. Kind unauffällig entlassen am | 17.8.4. Enfant sorti le (rien à signaler) | 0..1 | O | Datum | Datum, an welchem das Kind unauffällig entlassen werden konnte |   |   |
| 17.8.5. Kind verlegt am | 17.8.5. Enfant transféré le | 0..1 | O | Datum | Datum, an dem das Kind verlegt wurde |   |   |
| 17.8.6. Ernährung Kind | 17.8.6. Alimentation de l’enfant | 0..1 | O | String | Angaben zur Ernährung des Kindes |   |   |
| 17.8.7. Besonderheiten zum Kind | 17.8.7. Particularités concer t l’enfant | 0..1 | O | String | Beschreibung möglicher Besonderheiten zum Kind |   |   |
| 17.9. Bemerkungen zum Wochenbett | 17.9. Remarques concer t le post-partum | 0..1 | O | String | Bemerkungen zum Wochenbett |   |   |
