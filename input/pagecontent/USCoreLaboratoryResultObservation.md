[Previous Page - US Core ImplantableDevice](USCoreImplantableDevice.html)

 The US Core Laboratory Result Observation profile sets minimum expectations for the Observation resource to record, search, and fetch laboratory test results associated with a patient/member. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [LaboratoryResultObservation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                              | Name                 | Cardinality | Type                               |
|-----------------------------------------|----------------------|:-----------:|------------------------------------|
|  Observation.status                     |  status              |     1..1    | code                               |
|  Observation.category                   |  category            |     1..*    | (Slice Definition)                 |
|  Observation.category:Laboratory        |  category:Laboratory |     1..1    | CodeableConcept                    |
|  Observation.category:Laboratory.coding |  coding              |     1..*    | Coding                             |
|  Observation.category:Laboratory.system |  system              |     1..1    | uri                                |
|  Observation.category:Laboratory.code   |  code                |     1..1    | code                               |
|  Observation.code                       |  code                |     1..1    | CodeableConcept                    |
|  Observation.subject                    |  subject             |     1..1    | Reference(US Core Patient Profile) |
|  Observation.effective[x]               |  effective[x]        |     0..1    |                                    |
|  Observation.value[x]                   |  value[x]            |     0..1    |                                    |
|  Observation.dataAbsentReason           |  dataAbsentReason    |     0..1    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Laboratory Results Profile

Link to urine specific gravity laboratory result: [https://hl7.org/fhir/us/core/Observation-usg.html](https://hl7.org/fhir/us/core/Observation-usg.html)


[Next Page - US Core Location](USCoreLocation.html)
