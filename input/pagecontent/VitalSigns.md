[Previous Page - US Core Smoking Status Observation](USCoreSmokingStatusObservation.html)

This IG supports the full complement of US Core profiles. They are supported to 
enable a payer to produce FHIR resources from data provided in other formats.

For some resources, payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [Vital Signs](http://hl7.org/fhir/R4/observation-vitalsigns.html) are referenced in [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) but uses the profile from the base FHIR specification and does not create a US Core specific profile. Payers may be unable to create a valid Vital Signs record from the source clinical data they have available. In [US Core 6.1.0]({{site.data.fhir.ver.uscore6}}) a set of US Core specific Vital Signs profiles are defined:

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


A Vital Signs resource requires a status, a magic value for what is being measured, the patient information and a time when the observation was taken. Payers may not have access to the detail measurement data needed to create a valid Vital Signs resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [Base R4 Vital Signs](http://hl7.org/fhir/R4/observation-vitalsigns.html) or [US Core 6.1.0 Vital Signs]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-vital-signs.html) profiles are:

{% include style_insert_table_blue.html %}

| R4 Element                                | Name              | Cardinality | Type               |
|-------------------------------------------|-------------------|:-----------:|--------------------|
|  Observation.status                       |  status           |     1..1    | code               |
|  Observation.category                     |  category         |             | (Slice Definition) |
|  Observation.category:VSCat               |  category:VSCat   |     1..1    | CodeableConcept    |
|  Observation.category:VSCat.coding        |  coding           |     1..*    | Coding             |
|  Observation.category:VSCat.coding.system |  system           |     1..1    | uri                |
|  Observation.category:VSCat.coding.code   |  code             |     1..1    | code               |
|  Observation.code                         |  code             |     1..1    | CodeableConcept    |
|  Observation.subject                      |  subject          |     1..1    | Reference(Patient) |
|  Observation.effective[x]                 |  effective[x]     |     1..1    |                    |
|  Observation.value[x]                     |  value[x]         |     0..1    |                    |
|  Observation.dataAbsentReason             |  dataAbsentReason |     0..1    | CodeableConcept    |
|  Observation.component                    |  component        |     0..*    | BackboneElement    |
|  Observation.component.code               |  code             |     1..1    | CodeableConcept    |
|  Observation.component.value[x]           |  value[x]         |     0..1    |                    |
|  Observation.component.dataAbsentReason   |  dataAbsentReason |     0..1    | CodeableConcept    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Examples of Vital Signs Resources

- Vital Signs Panel: Vital signs, weight, height, head circumference, oxygen saturation and BMI panel 
- Respiratory Rate
- Heart rate
- Oxygen Saturation
- Body Temperature
- Body Height
- Head Circumference
- Body Weight
- Body Mass Index
- Blood Pressure (systolic and diastolic)

See links to examples in the FHIR R4 specification here: [https://hl7.org/fhir/R4/observation-vitalsigns.html](https://hl7.org/fhir/R4/observation-vitalsigns.html)

[https://hl7.org/fhir/R4/observation-vitalsigns.html](https://hl7.org/fhir/R4/observation-vitalsigns.html).



[Next Page - Use Case Scenarios](usecasescenarios.html)
