### FHIR document (Bundle)
This exchange format is defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

{% include img.html img="document.png" caption="Fig.: Schematic document structure for CH EPREG" width="40%" %}


### Profile
[CH EPREG Document](StructureDefinition-ch-epreg-document.html): Definition for the FHIR representation of the **e**lectronic **preg**nancy passport in Switzerland.

### Examples
* [CH EPERG Document](Bundle-UC1-Document.html) for Use Case 1: Preeclampsia ([de](usecase-german.html#fallbeispiel-1-präeklampsie)/[fr](usecase-french.html#cas-dapplication-1--prééclampsie))
* [CH EPERG Document](Bundle-UC2-Document.html) for Use Case 2: Strong Labor Contractions ([de](usecase-german.html#fallbeispiel-2-starke-wehentätigkeit)/[fr](usecase-french.html#cas-dapplication-2--forte-activité-contractile))
