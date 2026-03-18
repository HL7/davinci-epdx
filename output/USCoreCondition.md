# US Core Condition - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Condition**

## US Core Condition

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core CareTeam](USCoreCareTeam.md)

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Condition](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-condition.html) or [US Core 6.1.0 Condition Encounter Diagnosis](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html) or [US Core 6.1.0 Condition Problems and Health Concerns](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html) resources are:

| | | | |
| :--- | :--- | :--- | :--- |
| Condition.clinicalStatus | clinicalStatus | 0..1 | CodeableConcept |
| Condition.verificationStatus | verificationStatus | 0..1 | CodeableConcept |
| Condition.category | category | 1..* | CodeableConcept |
| Condition.code | code | 1..1 | CodeableConcept |
| Condition.subject | subject | 1..1 | Reference(US Core Patient Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

The essential fields to be provided in the Condition resource from the CPCDS file are:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Condition.clinicalStatus | S | 0..1 |   | . Note: active | recurrence | relapse | inactive | remission | resolved |
| Condition.verificationStatus | S | 0..1 |   | . Note: active | recurrence | relapse | inactive | remission | resolved |
| Condition.category | S | 1..* |   | . Note: Based on Diagnosis from claim pick appropriate condition category from: [problem-list-item | encounter-diagnosis | health-concern] |
| Condition.code | S | 1..1 | ExplanationOfBenefit.diagnosis.diagnosis | [{"6, 7, 8, 21, 22, 23, 30":"Diagnosis Code"}] |
| Condition.subject | S | 1..1 | ExplanationOfBenefit.patient | [{"Ref (1)":"Member id"}] |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Condition Resource

An example mapping of a problem using the Condition is shown below:

```

{
  "resourceType" : "Condition",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: examplemeta: clinicalStatus: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-clinical code 'active' = 'Active', given as 'Active'})</span>verificationStatus: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-ver-status code 'confirmed' = 'Confirmed', given as 'Confirmed'})</span>category: Problem <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-category code 'problem-list-item' = 'Problem List Item', given as 'Problem List Item'})</span>code: Single liveborn, born in hospital <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '442311008' = 'Liveborn born in hospital', given as 'Liveborn born in hospital'})</span>subject: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a>onset: Aug 10, 2016, 12:00:00 AM</div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ],
    "text" : "Active"
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed",
        "display" : "Confirmed"
      }
    ],
    "text" : "Confirmed"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }
      ],
      "text" : "Problem"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "442311008",
        "display" : "Liveborn born in hospital"
      }
    ],
    "text" : "Single liveborn, born in hospital"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy V. Shaw"
  },
  "onsetDateTime" : "2016-08-10"
}

```

[Next Page - Consent](consent.md)

