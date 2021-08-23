[Previous Page - US Core Pediatric BMI for Age Observation](USCorePediatricBMIforAgeObservation.html)

The US Core IG profiles the Observation resource for a variety of purposes. For example:
- [Smoking status](https://hl7.org/fhir/us/core/Observation-some-day-smoker.html)
- [Pediatric BMI for Age](http://hl7.org/fhir/us/core/Observation-pediatric-bmi-example.html)
- [Pediatric Weight for Height](https://hl7.org/fhir/us/core/Observation-pediatric-wt-example.html)

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core Observation](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                 | Name              | Cardinality | Type                               |
|--------------------------------------------|-------------------|:-----------:|------------------------------------|
|  Observation.status                        |  status           |     1..1    | code                               |
|  Observation.category                      |  category         |     1..*    | (Slice Definition)                 |
|  Observation.category:VSCat                |  category:VSCat   |     1..1    | CodeableConcept                    |
|  Observation.category:VSCat.coding         |  coding           |     1..*    | Coding                             |
|  Observation.category:VSCat.coding.system  |  system           |     1..1    | uri                                |
|  Observation.category:VSCat.coding.code    |  code             |     1..1    | code                               |
|  Observation.code                          |  code             |     1..1    | CodeableConcept                    |
|  Observation.code.coding                   |  coding           |     1..*    | Coding                             |
|  Observation.code.coding.system            |  system           |     1..1    | uri                                |
|  Observation.code.coding.code              |  code             |     1..1    | code                               |
|  Observation.subject                       |  subject          |     1..1    | Reference(US Core Patient Profile) |
|  Observation.effective[x]                  |  effective[x]     |     1..1    |                                    |
|  Observation.value[x]                      |  value[x]         |     0..1    | (Slice Definition)                 |
|  Observation.value[x]:valueQuantity.value  |  value            |     1..1    | decimal                            |
|  Observation.value[x]:valueQuantity.unit   |  unit             |     1..1    | string                             |
|  Observation.value[x]:valueQuantity.system |  system           |     1..1    | uri                                |
|  Observation.value[x]:valueQuantity.code   |  code             |     1..1    | code                               |
|  Observation.dataAbsentReason              |  dataAbsentReason |     0..1    | CodeableConcept                    |
|  Observation.component                     |  component        |     0..*    | BackboneElement                    |
|  Observation.component.code                |  code             |     1..1    | CodeableConcept                    |
|  Observation.component.value[x]            |  value[x]         |     0..1    |                                    |
|  Observation.dataAbsentReason              |  dataAbsentReason |     0..1    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### An Example Head Occipital-frontal Circumference Observation Resource

US Core Pediatric Head Occipital-frontal Circumference Percentile example: [https://hl7.org/fhir/us/core/Observation-ofc-percentile.html](https://hl7.org/fhir/us/core/Observation-ofc-percentile.html)


[Next Page - US Core Pediatric Weight for Height Observation](USCorePediatricWeightforHeightObservation.html)
