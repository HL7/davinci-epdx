# US Core Laboratory Result Observation - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Laboratory Result Observation**

## US Core Laboratory Result Observation

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core ImplantableDevice](USCoreImplantableDevice.md)

The US Core Laboratory Result Observation profile sets minimum expectations for the Observation resource to record, search, and fetch laboratory test results associated with a patient/member. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.

In [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1) a number of new Observation profiles were created. Many of them replaced the Vital Signs profiles from the base FHIR R4 base specification. The full list of [US Core 6.1.0 Observation profiles](http://hl7.org/fhir/us/core/STU6.1/profiles-and-extensions.html#observation) in can be found [here](http://hl7.org/fhir/us/core/STU6.1/profiles-and-extensions.html#observation):

* [US Core Observation Clinical Result Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html)
* [US Core Laboratory Result Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html)
* [US Core Observation Occupation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-occupation.html)
* [US Core Observation Pregnancy Intent Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancyintent.html)
* [US Core Observation Pregnancy Status Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html)
* [US Core Observation Screening Assessment Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html)
* [US Core Observation Sexual Orientation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html)
* [US Core Simple Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)
* [US Core Smoking Status Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html)
* [US Core Vital Signs Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-vital-signs.html) 
* [US Core Pediatric Head Occipital Frontal Circumference Percentile Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-head-occipital-frontal-circumference-percentile.html)
* [US Core Pediatric BMI for Age Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-bmi-for-age.html)
* [US Core Pediatric Weight for Height](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-weight-for-height.html)
* [US Core Blood Pressure Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-blood-pressure.html)
* [US Core BMI Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-bmi.html)
* [US Core Body Height Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-height.html)
* [US Core Body Temperature Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-temperature.html)
* [US Core Body Weight Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-weight.html)
* [US Core Head Circumference Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-head-circumference.html)
* [US Core Heart Rate Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-heart-rate.html)
* [US Core Pulse Oximetry Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-pulse-oximetry.html)
* [US Core Respiratory Rate Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-respiratory-rate.html)
 

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 LaboratoryResultObservation](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-observation-lab.html) or [US Core 6.1.0 LaboratoryResultObservation](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Observation.status | status | 1..1 | code |
| Observation.category | category | 1..* | (Slice Definition) |
| Observation.category:Laboratory | category:Laboratory | 1..1 | CodeableConcept |
| Observation.category:Laboratory.coding | Laboratory.coding | 1..* | Coding |
| Observation.category:Laboratory.system | Laboratory.system | 1..1 | uri |
| Observation.category:Laboratory.code | Laboratory.code | 1..1 | code |
| Observation.code | code | 1..1 | CodeableConcept |
| Observation.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| Observation.effective[x] | effective[x] | 0..1 |   |
| Observation.value[x] | value[x] | 0..1 |   |
| Observation.dataAbsentReason | dataAbsentReason | 0..1 | CodeableConcept |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

### Example Laboratory Results Profile

Link to urine specific gravity laboratory result: [https://hl7.org/fhir/us/core/Observation-usg.html](https://hl7.org/fhir/us/core/Observation-usg.html)

[Next Page - US Core Location](USCoreLocation.md)

