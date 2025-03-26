### Mapping Value Sets Concept
The concept for the exchange format of the electronic pregnancy passport ([de](https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/eDossiergrossesse_Concept_fr.pdf)) defines specific value sets for various fields. These value sets, which contain the values in both German and French, are included in the concept document.

When representing this data in an FHIR document, the goal is to maintain compatibility with (Swiss) base concepts, such as those defined in CH Core or CH Term, whenever possible. To achieve this, the following mappings describe how the defined values from the concept paper are represented as coded values in FHIR resources (see also [FHIR Terminology](https://hl7.org/fhir/R4/terminology-module.html)), making use of existing value sets where available.

#### Healthcare Provider 

Profile: [CH EPREG PractitionerRole: Treating Healthcare Provider](StructureDefinition-ch-epreg-practitionerrole-thcp.html)    
Examples: 
* [UC 1: Petra Sectionata @ Frauenzimmer](PractitionerRole-UC1-PetraSectionataAtFrauenzimmer.json.html) (gynecologist)
* Midwife (TODO)

{:class="table table-bordered"}
| Concept German <br>Leistungserbringender | Concept French <br>Fournisseurs de prestations | FHIR element | ValueSet | Concept | 
| --- | --- | --- | --- |
| Gynäkologin/Gynäkologe | Gynécologue |  |  |  |
| Hebamme | Sage-femme | `PractitionerRole.code` | [HCProfessional.hcProfession](http://fhir.ch/ig/ch-term/ValueSet/HCProfessional.hcProfession) | system : http://snomed.info/sct <br>code : 309453006 <br>display : Registered midwife |
| Hausärztin/Hausarzt | Médecin de famille |  |  |  |
| Kinderärztin/Kinderarzt | Pédiatre |  |  |  |
| Apothekerin/Apotheker | Pharmacien |  |  |  |
| Pflegefachperson | Infirmier |  |  |  |
| Anderer Leistungserbringende | Autres fournisseurs de prestations |  |  |  |

