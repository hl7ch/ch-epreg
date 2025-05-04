### Child and Mother
The relationship between **biological mother** and **child (fetus/newborn)** is modeled using the `Patient` and `RelatedPerson` resources, as depicted in the figures below. This approach follows the guidelines outlined in the [Mother and newborn relationships](https://hl7.org/fhir/R4/patient.html#maternity) section of the FHIR specification and the [International Birth And Child Model Implementation Guide](https://hl7.org/fhir/uv/ibcm/2024Sep/index.html).

#### Mother with her Single Child
{% include img.html img="mother-child.png" caption="Fig.: Relationship between the biological mother and her single child" width="80%" %}

**Example instances:**    
[Patient: Mother](Patient-UC1-KatrinKinderlieb.html) --> [RelatedPerson: Mother](RelatedPerson-UC1-RelatedPerson-Mother.html) --> [Patient: Child](Patient-UC1-Child.html)

**Profiles:**    
[CH EPREG Patient: Mother](StructureDefinition-ch-epreg-patient-mother.html) --> [CH EPREG RelatedPerson: Mother](StructureDefinition-ch-epreg-relatedperson-mother.html) --> [CH EPREG Patient: Child](StructureDefinition-ch-epreg-patient-child.html)

#### Mother with her Multiple Children  
{% include img.html img="mother-children.png" caption="Fig.: Relationship between the biological mother and her multiple children (e.g. twins)" width="80%" %}

#### Encounters/Observations of Mother and Child  
{% include img.html img="enc-obs-mother-child.png" caption="Fig.: Encounters and observations of the biological mother and her child with their references" width="80%" %}

**Example instances:**    
Mother: [Observation: Gestational Age](Observation-UC1-GestationalAgeInDays-20250205.html) --> [Encounter](Encounter-UC1-EncounterMother20250205.html) --> [Patient](Patient-UC1-KatrinKinderlieb.html)       
Child: [Observation: Fetal Position](Observation-UC1-FetalPosition-20250205.html) --> [Encounter](Encounter-UC1-EncounterChild20250205.html) --> [Patient](Patient-UC1-Child.html)  

### Child and Parents
Besides the biological mother, other parents (e.g., biological father, social father, social mother) can be represented using the same structure. The type of parent is defined in the `RelatedPerson.relationship` element.

{% include img.html img="parent-child.png" caption="Fig.: Relationship between a parent and the child" width="80%" %}

**Example instances:**   
[RelatedPerson: Biological Father](RelatedPerson-UC1-RelatedPerson-BiologicalFather.html) --> [Patient: Child](Patient-UC1-Child.html)

**Profile:**   
[RelatedPerson: Parent](StructureDefinition-ch-epreg-relatedperson-parent.html)
