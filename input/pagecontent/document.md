### FHIR document (Bundle)
This exchange format is defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

![Fig. 3: Schematic document structure of CH EPREG](assets/images/document.png)

### Profile
[CH EPREG Document](StructureDefinition-ch-epreg-document.html): Definition for the pregnancy passport Document in the context of the electronic patient record (EPR)
### Examples
* [CH EPERG Composition](Composition-1-Composition.html): Compositon of CH EPREG
* [CH EPERG Document](Bundle-EPREG-document.html): Bundle of CH EPREG
