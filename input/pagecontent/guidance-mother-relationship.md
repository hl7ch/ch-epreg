The relationship between mother and fetus/fetuses is modeled using the `Patient` and `RelatedPerson` resources, as depicted in the figures below. This approach follows the guidelines outlined in the [Mother and newborn relationships](https://hl7.org/fhir/R4/patient.html#maternity) section of the FHIR specification and the [International Birth And Child Model Implementation Guide](https://hl7.org/fhir/uv/ibcm/2024Sep/index.html).

**Example 1:**    
{% include img.html img="mother-fetus.png" caption="Fig.: A relationship between a mother and a single fetus, where both have their own associated observations" width="65%" %}

Example instances: [Patient: Mother](Patient-UC1-KatrinKinderlieb.html) --> [RelatedPerson: Mother](RelatedPerson-UC1-RelatedPerson-Mother.html) --> [Patient: Fetus](Patient-UC1-Fetus.html)

**Example 2:**    
{% include img.html img="mother-fetuses.png" caption="Fig.: Relationship between a mother and multiple fetuses (e.g., twins)" width="65%" %}

