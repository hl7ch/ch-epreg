The relationship between mother and child (fetus/newborn) is modeled using the `Patient` and `RelatedPerson` resources, as depicted in the figures below. This approach follows the guidelines outlined in the [Mother and newborn relationships](https://hl7.org/fhir/R4/patient.html#maternity) section of the FHIR specification and the [International Birth And Child Model Implementation Guide](https://hl7.org/fhir/uv/ibcm/2024Sep/index.html).

### Mother with her single child
{% include img.html img="mother-child.png" caption="Fig.: A relationship between a mother and her single child" width="80%" %}

**Example instances:**    
[Patient: Mother](Patient-UC1-KatrinKinderlieb.html) --> [RelatedPerson: Mother](RelatedPerson-UC1-RelatedPerson-Mother.html) --> [Patient: Child](Patient-UC1-Child.html)

### Mother with her multiple children  
{% include img.html img="mother-children.png" caption="Fig.: Relationship between a mother and her multiple children (e.g., twins)" width="80%" %}

### Encounters/observations of mother and child  
{% include img.html img="enc-obs-mother-child.png" caption="Fig.: Encounters and observations of mother and child and their references" width="80%" %}

**Example instances:**    
Mother: [Observation](Observation-UC1-GestationalAgeInWeeks-20250205.html) --> [Encounter](Encounter-UC1-EncounterMother20250205.html) --> [Patient](Patient-UC1-KatrinKinderlieb.html)       
Child: [Observation](Observation-UC1-FetalPosition-20250205.html) --> [Encounter](Encounter-UC1-EncounterChild20250205.html) --> [Patient](Patient-UC1-Child.html)  
