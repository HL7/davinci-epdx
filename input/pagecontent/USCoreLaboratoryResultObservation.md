[Previous Page - US Core ImplantableDevice](USCoreImplantableDevice.html)

 The US Core Laboratory Result Observation profile sets minimum expectations for the Observation resource to record, search, and fetch laboratory test results associated with a patient/member. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.

In [US Core 6.1.0]({{site.data.fhir.ver.uscore6}}) a number of new Observation profiles were created. Many of them replaced the 
Vital Signs profiles from the base FHIR R4 base specification. The full list of [US Core 6.1.0 Observation profiles]({{site.data.fhir.ver.uscore6}}/profiles-and-extensions.html#observation) in can be found [here]({{site.data.fhir.ver.uscore6}}/profiles-and-extensions.html#observation):

- [US Core Observation Clinical Result Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-clinical-result.html)
- [US Core Laboratory Result Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-lab.html)
- [US Core Observation Occupation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-occupation.html)
- [US Core Observation Pregnancy Intent Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-pregnancyintent.html)
- [US Core Observation Pregnancy Status Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-pregnancystatus.html)
- [US Core Observation Screening Assessment Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-screening-assessment.html)
- [US Core Observation Sexual Orientation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-sexual-orientation.html)
- [US Core Simple Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-simple-observation.html)
- [US Core Smoking Status Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-smokingstatus.html)
- [US Core Vital Signs Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-vital-signs.html)
  - [US Core Pediatric Head Occipital Frontal Circumference Percentile Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-head-occipital-frontal-circumference-percentile.html)
  - [US Core Pediatric BMI for Age Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-bmi-for-age.html)
  - [US Core Pediatric Weight for Height]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-weight-for-height.html)
  - [US Core Blood Pressure Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-blood-pressure.html)
  - [US Core BMI Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-bmi.html)
  - [US Core Body Height Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-height.html)
  - [US Core Body Temperature Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-temperature.html)
  - [US Core Body Weight Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-weight.html)
  - [US Core Head Circumference Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-head-circumference.html)
  - [US Core Heart Rate Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-heart-rate.html)
  - [US Core Pulse Oximetry Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-pulse-oximetry.html)
  - [US Core Respiratory Rate Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-respiratory-rate.html)


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 LaboratoryResultObservation]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-observation-lab.html) or
[US Core 6.1.0 LaboratoryResultObservation]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-lab.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                              | Name                 | Cardinality | Type                               |
|-----------------------------------------|----------------------|:-----------:|------------------------------------|
|  Observation.status                     |  status              |     1..1    | code                               |
|  Observation.category                   |  category            |     1..*    | (Slice Definition)                 |
|  Observation.category:Laboratory        |  category:Laboratory |     1..1    | CodeableConcept                    |
|  Observation.category:Laboratory.coding |  Laboratory.coding   |     1..*    | Coding                             |
|  Observation.category:Laboratory.system |  Laboratory.system   |     1..1    | uri                                |
|  Observation.category:Laboratory.code   |  Laboratory.code     |     1..1    | code                               |
|  Observation.code                       |  code                |     1..1    | CodeableConcept                    |
|  Observation.subject                    |  subject             |     1..1    | Reference(US Core Patient Profile) |
|  Observation.effective[x]               |  effective[x]        |     0..1    |                                    |
|  Observation.value[x]                   |  value[x]            |     0..1    |                                    |
|  Observation.dataAbsentReason           |  dataAbsentReason    |     0..1    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Laboratory Results Profile

Link to urine specific gravity laboratory result: [https://hl7.org/fhir/us/core/Observation-usg.html](https://hl7.org/fhir/us/core/Observation-usg.html)


[Next Page - US Core Location](USCoreLocation.html)
