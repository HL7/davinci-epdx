[Previous Page - US Core Provenance](USCoreProvenance.html)

This IG supports the full complement of US Core profiles. They are supported to enable a payer to produce FHIR resources from data provided in other formats.

For some resources, payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core Pulse Oximetry](http://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html) is one potential example of an Observation profile that payers may be unable to create from the source clinical data they have available.

A Pulse Oximetry observation requires codes and values for oxygen saturation in the blood. Payers may not have access to the detail measurement data needed to create a valid observation resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core Pulse Oximetry](http://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                                                          | Name                     | Cardinality | Type               |
|-------------------------------------------------------------------------------------|--------------------------|:-----------:|--------------------|
|  Observation.status                                                                 |  status                  |     1..1    | code               |
|  Observation.category                                                               |  category                |     1..*    | (Slice Definition) |
|  Observation.category:VSCat                                                         |  category:VSCat          |     1..1    | CodeableConcept    |
|  Observation.category:VSCat.coding                                                  |  coding                  |     1..*    | Coding             |
|  Observation.category:VSCat.coding.system                                           |  system                  |     1..1    | uri                |
|  Observation.category:VSCat.coding.code                                             |  code                    |     1..1    | code               |
|  Observation.code                                                                   |  code                    |     1..1    | CodeableConcept    |
|  Observation.code.coding                                                            |  coding                  |     0..*    | (Slice Definition) |
|  Observation.code.coding:OxygenSatCode                                              |  coding:OxygenSatCode    |     1..1    | Coding             |
|  Observation.code.coding:OxygenSatCode.system                                       |  system                  |     1..1    | uri                |
|  Observation.code.coding:OxygenSatCode.code                                         |  code                    |     1..1    | code               |
|  Observation.code.coding:PulseOx                                                    |  coding:PulseOx          |     1..1    | Coding             |
|  Observation.code.coding:PulseOx.system                                             |  system                  |     1..1    | uri                |
|  Observation.code.coding:PulseOx.code                                               |  code                    |     1..1    | code               |
|  Observation.subject                                                                |  subject                 |     1..1    | Reference(Patient) |
|  Observation.effective[x]                                                           |  effective[x]            |     1..1    |                    |
|  Observation.value[x]                                                               |  value[x]                |     0..1    | (Slice Definition) |
|  Observation.value[x]:valueQuantity                                                 |  value[x]:valueQuantity  |     0..1    | Quantity           |
|  Observation.value[x]:valueQuantity.value                                           |  value                   |     1..1    | decimal            |
|  Observation.value[x]:valueQuantity.unit                                            |  unit                    |     1..1    | string             |
|  Observation.value[x]:valueQuantity.system                                          |  system                  |     1..1    | uri                |
|  Observation.value[x]:valueQuantity.code                                            |  code                    |     1..1    | code               |
|  Observation.dataAbsentReason                                                       |  dataAbsentReason        |     0..1    | CodeableConcept    |
|  Observation.component                                                              |  component               |     0..*    | (Slice Definition) |
|  Observation.component:All Slices.code                                              |  code                    |     1..1    | CodeableConcept    |
|  Observation.component:All Slices.value[x]                                          |  value[x]                |     0..1    |                    |
|  Observation.component:All Slices.dataAbsentReason                                  |  dataAbsentReason        |     0..1    | CodeableConcept    |
|  Observation.component:FlowRate                                                     |  component:FlowRate      |     0..1    | BackboneElement    |
|  Observation.component:FlowRate.code                                                |  code                    |     1..1    | CodeableConcept    |
|  Observation.component:FlowRate.code.coding                                         |  coding                  |     1..*    | Coding             |
|  Observation.component:FlowRate.code.coding.system                                  |  system                  |     1..1    | uri                |
|  Observation.component:FlowRate.code.coding.code                                    |  code                    |     1..1    | code               |
|  Observation.component:FlowRate.value[x]                                            |  value[x]                |     0..1    | Quantity           |
|  Observation.component:FlowRate.value[x].value                                      |  value                   |     1..1    | decimal            |
|  Observation.component:FlowRate.value[x].unit                                       |  unit                    |     1..1    | string             |
|  Observation.component:FlowRate.value[x].system                                     |  system                  |     1..1    | uri                |
|  Observation.component:FlowRate.value[x].code                                       |  code                    |     1..1    | code               |
|  Observation.component:FlowRate.dataAbsentReason                                    |  dataAbsentReason        |     0..1    | CodeableConcept    |
|  Observation.component:FlowRate.value[x].component:Concentration                    |  component:Concentration |     0..1    | BackboneElement    |
|  Observation.component:FlowRate.value[x].component:Concentration.code               |  code                    |     1..1    | CodeableConcept    |
|  Observation.component:FlowRate.value[x].component:Concentration.code.coding        |  coding                  |     1..*    | Coding             |
|  Observation.component:FlowRate.value[x].component:Concentration.code.coding.system |  system                  |     1..1    | uri                |
|  Observation.component:FlowRate.value[x].component:Concentration.code.coding.code   |  code                    |     1..1    | code               |
|  Observation.component:FlowRate.value[x].component:Concentration.value[x]           |  value[x]                |     0..1    | Quantity           |
|  Observation.component:FlowRate.value[x].component:Concentration.value[x].value     |  value                   |     1..1    | decimal            |
|  Observation.component:FlowRate.value[x].component:Concentration.value[x].unit      |  unit                    |     1..1    | string             |
|  Observation.component:FlowRate.value[x].component:Concentration.value[x].system    |  system                  |     1..1    | uri                |
|  Observation.component:FlowRate.value[x].component:Concentration.value[x].code      |  code                    |     1..1    | code               |
|  Observation.component:FlowRate.value[x].component:Concentration.dataAbsentReason   |  dataAbsentReason        |     0..1    | CodeableConcept    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Pulse Oximetry Resource

Here is a US Core Example of a Pulse Oximetry observation: [http://hl7.org/fhir/us/core/Observation-satO2-fiO2.html](http://hl7.org/fhir/us/core/Observation-satO2-fiO2.html).

[Next Page - US Core Smoking Status Observation](USCoreSmokingStatusObservation.html)
