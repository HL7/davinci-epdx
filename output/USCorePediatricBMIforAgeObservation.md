# US Core Pediatric BMI for Age Observation - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Pediatric BMI for Age Observation**

## US Core Pediatric BMI for Age Observation

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Patient](USCorePatient.md)

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

#### An Example BMI Age Observation Resource

US Core Pediatric BMI for Age example: US Core 3.1.1 Pediatric BMI for Age](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-pediatric-bmi-for-age.html)

```

{
  "resourceType" : "Observation",
  "id" : "pediatric-bmi-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrativeid: pediatric-bmi-examplemeta: category: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span>code: <span title=\"Codes: {http://loinc.org 59576-9}\">BMI</span>subject: <a href=\"Patient-child-example.html\">Child Example. Generated Summary: id: child-example; Medical Record Number: 1032704 (USUAL); active; Child Example ; ph: 555-555-5555(HOME); gender: male; birthDate: 2016-01-15</a>encounter: GP Visiteffective: 05/05/2019 5:12:29 AMvalue: 65 %note: CDC Males, 2-20 years Chart</div>"
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
        "code" : "59576-9",
        "display" : "Body mass index (BMI) [Percentile] Per age and sex"
      }
    ],
    "text" : "BMI"
  },
  "subject" : {
    "reference" : "Patient/child-example",
    "display" : "Child Example"
  },
  "encounter" : {
    "display" : "GP Visit"
  },
  "effectiveDateTime" : "2019-05-04T12:12:29-07:00",
  "valueQuantity" : {
    "value" : 65,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [
    {
      "text" : "CDC Males, 2-20 years Chart"
    }
  ]
}

```

[Next Page - US Core Pediatric Head Occipital-frontal Circumference Observation](USCorePediatricHeadOccipital.md)

