Profile: ChEpregPatientMother
Parent: CHCorePatientEPR
Id: ch-epreg-patient-mother
Title: "CH EPREG Patient: Mother"
Description: "This profile constrains the Patient resource to represent the pregnant individual."
* . ^short = "CH EPREG Patient: Mother"
* extension contains 
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named pronoun 0..1
* name MS 
* name.text MS
* name.family 1..                         
* name.given 1..                                                   
* telecom[email] MS                         
* telecom[phone] MS                                                    
* birthDate MS                               
* address MS                             
* address.line MS                                       
* address.postalCode MS                      
* address.city MS                           
* address.country MS         
* link ^slicing.discriminator.type = #value
* link ^slicing.discriminator.path = "type"
* link ^slicing.rules = #open   
* link contains child 0..*     
* link[child] ^short = "Link to the mother's RelatedPerson resource pointing to the child's Patient resource"
* link[child].other ^short = "The mother's RelatedPerson resource"
* link[child].other only Reference(ChEpregRelatedPersonMother)
* link[child].other.reference 1..
* link[child].type = #seealso
* contact contains 
    emergency 0..* MS and 
    guardian 0..*  
* contact[emergency].relationship = $v2-0131#C // "Emergency Contact"
* contact[emergency].name MS
* contact[emergency].name.family MS 
* contact[emergency].name.given MS
* contact[emergency].telecom ^slicing.discriminator.type = #value
* contact[emergency].telecom ^slicing.discriminator.path = "system"
* contact[emergency].telecom ^slicing.rules = #open
* contact[emergency].telecom.system 1..
* contact[emergency].telecom.value 1..
* contact[emergency].telecom contains phone 0..* MS
* contact[emergency].telecom[phone] only CHCoreContactPointECH46Phone
* contact[emergency].extension contains 
    ChEpregExtPrimaryContact named primaryContact 0..1 and
    ChEpregExtNote named note 0..1
* contact[guardian].relationship = $v3-RoleCode#GUARD // "guardian"
* contact[guardian].name MS
* contact[guardian].name.family MS 
* contact[guardian].name.given MS
* contact[guardian].telecom ^slicing.discriminator.type = #value
* contact[guardian].telecom ^slicing.discriminator.path = "system"
* contact[guardian].telecom ^slicing.rules = #open
* contact[guardian].telecom.system 1..
* contact[guardian].telecom.value 1..
* contact[guardian].telecom contains 
    email 0..* and
    phone 0..* MS
* contact[guardian].telecom[email] only CHCoreContactPointECH46Email    
* contact[guardian].telecom[phone] only CHCoreContactPointECH46Phone
* contact[guardian].extension contains ChEpregExtNote named note 0..1    



Mapping: ChEpregPatientMotherToConceptPregnancyPassport
Source: ChEpregPatientMother
Target: "https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf"
Id: concept-pregnancy-passport
Title: "Concept Pregnancy Passport"
Description: "This mapping illustrates the relationship between the CH EPREG profile and the concept of the pregnancy passport."
*                                           -> "Schwangere Person | Personne enceinte"
* extension[citizenship]                    -> "Nationalität | Nationalité" 
* extension[pronoun]                        -> "Pronomen | Pronoms"
* identifier[AHVN13]                        -> "AHV-Nummer | Numéro AVS"
* name                                      -> "Name | Nom"  
* name.text                                 -> "Vollständiger Name | Nom complet"
* name.family                               -> "Nachname | Nom de famille"
* name.given                                -> "Vorname | Prénoms" 
* name.given                                -> "Andere Vornamen (Namenszusatz) | Autres prénoms"
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
* contact[emergency]                        -> "Notfallkontakt | Contact en cas d’urgence"
* contact[emergency].name                   -> "Name | Nom"
* contact[emergency].name.family            -> "Nachname | Nom"
* contact[emergency].name.given             -> "Vorname | Prénom"
* contact[emergency].telecom[phone]         -> "Telefon | N° de téléphone"
* contact[emergency].telecom[phone]         -> "use = home: Festnetz | Fixe" 
* contact[emergency].telecom[phone]         -> "use = mobile: Mobil | Mobile" 
* contact[emergency].telecom[phone]         -> "use = work: Arbeit | Professionnel" 
* contact[emergency].extension[primaryContact] -> "Primärkontakt | Contact principal"
* contact[emergency].extension[note]        -> "Bemerkungen | Remarque"
* contact[guardian]                         -> "Beistand/Vormund | Curatelle/tutelle"
* contact[guardian].name                    -> "Name | Nom"
* contact[guardian].name.family             -> "Nachname | Nom"
* contact[guardian].name.given              -> "Vorname | Prénom"
* contact[guardian].telecom[email]          -> "E-Mailadresse | Courriel"
* contact[guardian].telecom[phone]          -> "Telefon | N° de téléphone"
* contact[guardian].telecom[phone]          -> "use = home: Festnetz | Fixe" 
* contact[guardian].telecom[phone]          -> "use = mobile: Mobil | Mobile" 
* contact[guardian].telecom[phone]          -> "use = work: Arbeit | Professionnel" 
* contact[guardian].extension[note]         -> "Bemerkungen | Remarque"
