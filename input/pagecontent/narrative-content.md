The requirements of CH EPREG for narrative content are identical to those of [CH IPS](https://fhir.ch/ig/ch-ips/narrative-content.html) and are based on the guidelines [FHIR Clinical Documents](#fhir-clinical-documents) and [HL7 IPS-UV](#hl7-ips-uv), which are explained below.

### Recommendations 

#### FHIR Clinical Documents

[Human readability and rendering FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/2024Sep/#human-readability-and-rendering-fhir-clinical-documents):   
_The Composition resource is special in that it can convey narrative in both `Composition.text` and `Composition.section.text`. This IG recommends that document metadata be conveyed in `Composition.text` whereas attested narrative be conveyed in `Composition.section.text`._

#### HL7 IPS-UV

[Narrative Content Guidance](https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#narrative-content-guidance):   
_While no constraints are implemented, early implementers have recommended that IPS documents not duplicate the content contained in `Composition.section.text` (which is required) in the `Composition.text`._

#### Implementers Feedback

<div markdown="5" class="dragon">
    <p>
    Please consider also the <a href="https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#narrative-content-guidance">HL7 IPS-UV STU Note</a>: 
    </p>
    <p>
    <em>While a globally consistent practice has not been identified, IPS encourages implementers to review emerging best practices and guidelines regarding narrative text that are being implemented in participating nations (e.g., <a href="https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_IG_STU3#Resource.text_or_.22the_narrative.22">The Netherlands</a>) and discussed in the <a href="https://chat.fhir.org/#narrow/stream/207835-IPS/topic/generation.20of.20narrative">FHIR Community</a>.</em>
    </p>
    <p>
    <em>Ongoing FHIR implementations will influence future guidance, such as the FHIR Clinical Document Implementation Guide, about the content and display of narrative content, which is required in the IPS Composition. We encourage implementers to monitor this topic and provide feedback through HL7 engagement, issue logging, and community discussion.</em>
    </p>
    <p>
    Please add your feedback on this topic for CH EPREG via the 'Propose a change'-link in the footer of the page.
    </p>
</div>
<p>&nbsp;</p>

### Example
The following are snippets for `Composition.text` and `Composition.section.text` from the [UC 1: Pregnancy Passport](Bundle-UC1-Document.json.html) example:

`Composition.text` containing document metadata:

{% fragment Composition/UC1-Composition JSON EXCEPT:text %}

<p>&nbsp;</p>

`Composition.section:pregProgress.text` containing attested narrative:

{% fragment Composition/UC1-Composition JSON EXCEPT:section.where(code.coding.code = '57059-8') EXCEPT:text BASE:section %}

<p>&nbsp;</p>
