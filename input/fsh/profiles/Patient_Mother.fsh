Profile: ChEpregPatientMother
Parent: CHCorePatientEPR
Id: ch-epreg-patient-mother
Title: "CH EPREG Patient: Mother"
Description: "This profile constrains the Patient resource to represent the pregnant individual within the context of the pregnancy passport."
* . ^short = "CH EPREG Patient: Mother"
* extension contains 
    PatNationality named nationality 0..* and 
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named pronoun 0..1
//    JobPosition named jobPosition 0..* and  TODO
//    ContactParentBirthDate named ContactParentBirthDate 0..1   TODO
* name MS 
* name.text MS
* name.family 1..                         
* name.given 1..                                                   
* telecom MS                                 
* telecom[email] MS                         
* telecom[phone] MS                                                    
* birthDate MS                               
* address MS                             
* address.line MS                                       
* address.postalCode MS                      
* address.city MS                           
* address.country MS                          


Mapping: ChEpregPatientMotherToConceptPregnancyPassport
Source: ChEpregPatientMother
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Schwangere Person | Personne enceinte"
* extension[nationality]                    -> "Nationalität | Nationalité" 
* extension[pronoun]                        -> "Pronomen | Pronoms"
* identifier[AHVN13]                        -> "AHV-Nummer | Numéro AVS"
* name                                      -> "Name | Nom"  
* name.text                                 -> "Vollständiger Name | Nom complet"
* name.family                               -> "Nachname | Nom de famille"
* name.given                                -> "Vorname | Prénoms" 
* name.prefix                               -> "Namenszusatz | Autres prénoms"
* telecom[email]                            -> "E-Mailadresse | Courriel"
* telecom[phone]                            -> "Telefon | N° de téléphone" 
* telecom[phone]                            -> "use = home: Festnetz | Fixe" 
* telecom[phone]                            -> "use = mobile: Mobil | Mobile" 
* telecom[phone]                            -> "use = work: Arbeit | Professionnel" 
* birthDate                                 -> "Geburtsdatum | Date de naissance"   
* address                                   -> "Adresse | Adresse" 
* address.line                              -> "Strasse | Rue" 
* address.line                              -> "Hausnummer | Numéro" 
* address.postalCode                        -> "Postleitzahl | Code postal" 
* address.city                              -> "Ort | Localité" 
* address.country                           -> "Land | Pays" 
* communication[languageOfCorrespondence]   -> "Kommunikationssprache | Langue de communication"  
