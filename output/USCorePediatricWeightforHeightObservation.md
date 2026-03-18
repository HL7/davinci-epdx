# US Core Pediatric Weight for Height Observation - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Pediatric Weight for Height Observation**

## US Core Pediatric Weight for Height Observation

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Pediatric Head Occipital-frontal Circumference Observation](USCorePediatricHeadOccipital.md)

The [US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) IG profiles the Observation resource for a variety of purposes. For example:

* [Smoking status](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-smokingstatus.html)
* [Pediatric BMI for Age](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-pediatric-bmi-for-age.html)
* [Pediatric Weight for Height](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-pediatric-weight-for-height.html)

[US Core 6.1.0 ](http://hl7.org/fhir/us/core/STU6.1) defines those same profiles:

* [Smoking status](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html)
* [Pediatric BMI for Age](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-bmi-for-age.html)
* [Pediatric Weight for Height](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-weight-for-height.html)

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core Observation](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-observation-lab.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Observation.status | status | 1..1 | code |
| Observation.category | category | 1..* | (Slice Definition) |
| Observation.category:VSCat | category:VSCat | 1..1 | CodeableConcept |
| Observation.category:VSCat.coding | coding | 1..* | Coding |
| Observation.category:VSCat.coding.system | system | 1..1 | uri |
| Observation.category:VSCat.coding.code | code | 1..1 | code |
| Observation.code | code | 1..1 | CodeableConcept |
| Observation.code.coding | coding | 1..* | Coding |
| Observation.code.coding.system | system | 1..1 | uri |
| Observation.code.coding.code | code | 1..1 | code |
| Observation.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| Observation.effective[x] | effective[x] | 1..1 |   |
| Observation.value[x] | value[x] | 0..1 | (Slice Definition) |
| Observation.value[x]:valueQuantity.value | value | 1..1 | decimal |
| Observation.value[x]:valueQuantity.unit | unit | 1..1 | string |
| Observation.value[x]:valueQuantity.system | system | 1..1 | uri |
| Observation.value[x]:valueQuantity.code | code | 1..1 | code |
| Observation.dataAbsentReason | dataAbsentReason | 0..1 | CodeableConcept |
| Observation.component | component | 0..* | BackboneElement |
| Observation.component.code | code | 1..1 | CodeableConcept |
| Observation.component.value[x] | value[x] | 0..1 |   |
| Observation.dataAbsentReason | dataAbsentReason | 0..1 | CodeableConcept |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### An Example Pediatric Weight For Height Observation Resource

US Core Pediatric Weight for Height Observation: [https://hl7.org/fhir/us/core/Observation-pediatric-wt-example.html](https://hl7.org/fhir/us/core/Observation-pediatric-wt-example.html)

```

{
  "resourceType" : "Observation",
  "id" : "pediatric-wt-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrativeid: pediatric-wt-examplemeta: category: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span>code: <span title=\"Codes: {http://loinc.org 77606-2}\">BMI</span>subject: <a href=\"Patient-infant-example.html\">Infant Example. Generated Summary: id: infant-example; Medical Record Number: 1032703 (USUAL); active; Infant Example ; ph: 555-555-5555(HOME); gender: male; birthDate: 2020-06-02</a>encounter: GP Visiteffective: 2020-07-02value: 65 %note: WHO Males, 0-2 years Chart</div>"
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }
      ],
      "text" : "Vital Signs"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "77606-2",
        "display" : "Weight-for-length Per age and sex"
      }
    ],
    "text" : "BMI"
  },
  "subject" : {
    "reference" : "Patient/infant-example",
    "display" : "Infant Example"
  },
  "encounter" : {
    "display" : "GP Visit"
  },
  "effectiveDateTime" : "2020-07-02",
  "valueQuantity" : {
    "value" : 65,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [
    {
      "text" : "WHO Males, 0-2 years Chart"
    }
  ]
}

```

[Next Page - US Core Practitioner](USCorePractitioner.md)

