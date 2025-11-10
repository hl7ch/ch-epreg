### Introduction
The **pregnancy passport** contains all the important medical information needed during pregnancy, at birth and for six weeks afterwards to ensure comprehensive care. This information is entered in the pregnancy passport by the treating healthcare providers, such as gynecologists, midwives and general practitioners, as well as institutions such as clinics, birthing centres, practices or midwife organizations. 

The CH EPREG implementation guide (IG) describes the FHIR representation of the **e**lectronic **preg**nancy passport in Switzerland. It is dependent on [CH Core](http://fhir.ch/ig/ch-core/index.html) and [CH Term](http://fhir.ch/ig/ch-term/index.html), which describe the Swiss-specific context. CH EPREG follows the [Swiss layered approach to FHIR interoperability](http://fhir.ch/ig/ch-core/usage-swiss-core-artifacts.html), which promotes the reuse of common core artifacts across different exchange formats. Like other Swiss exchange format IGs such as CH EMED (medication) and CH VACD (vaccination), CH EPREG leverages core clinical profiles where relevant to pregnancy care, ensuring consistency across Swiss healthcare documentation while applying pregnancy-specific constraints where needed.

The pregnancy passport represents a snapshot of pregnancy-related information at a specific point in time and can be stored in the Electronic Patient Record (EPR). The consolidation and update processes for incorporating data from multiple encounters and sources are not within the scope of this implementation guide. Different approaches to handling these processes are described in the concept paper.

This implementation guide is based on the concept for the exchange format of the electronic pregnancy passport ([de](https://www.e-health-suisse.ch/upload/documents/eSchwangerschaftspass_Konzept_de.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/eDossiergrossesse_Concept_fr.pdf)).

<div markdown="1" class="stu-note">

[Changelog](changelog.html) with significant changes, open and closed issues.

Please note that not all data elements from the concept have been mapped in this first version of the implementation guide. However, all elements and sections described in the guide (document structure / use cases, etc.) have already been mapped, enabling an initial use of the pregnancy passport. You can find the current status under [Mapping Concept Data Elements](mapping-concept-dataelements.html).

</div>

**Download**: You can download this implementation guide in the [npm package format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).


### MustSupport
In the concept for the electronic pregnancy passport, the data elements are described in terms of cardinality and conformity, which are then applied in the CH EPREG profiles (as long as it conforms to FHIR and the CH Core requirements). This table shows how the different levels of conformity are reflected in the FHIR profiles:

{:class="table table-bordered"}
| Concept (conformity) | FHIR profile (minimum cardinality and flag) |
| --- | --- | 
| **M**andatory: This is a required field. It must contain a valid value. | 1.. |
| **R**equired: The field should always contain a valid value if possible. | 0.. MS (`mustSupport`=true)|
| **O**ptional: The field may contain a valid value. | 0.. |

For CH EPREG the meaning of [mustSupport](https://hl7.org/fhir/R4/conformance-rules.html#mustSupport) follows also the IHE use of **R2 (Required if known)** as defined in [ITI TF-2: Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir):    
_If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error solely due to the presence or absence of the element._


### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}

