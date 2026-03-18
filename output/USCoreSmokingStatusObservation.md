# US Core Smoking Status Observation - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Smoking Status Observation**

## US Core Smoking Status Observation

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Pulse Oximetry](USCorePulseOximetry.md)

This IG supports the full complement of US Core profiles. They are supported to enable a payer to produce FHIR resources from data provided in other formats.

For some resources, payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core 3.1.1 Smoking Status](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-smokingstatus.html) or [Smoking status](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html) is one potential example of an Observation profile that payers may be unable to create from the source clinical data they have available.

A Smoking Status observation requires codes and values for smoking observation. Payers may not have access to the detail data needed to create a valid observation resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Smoking Status](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-smokingstatus.html) or [Smoking status](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html) Observation resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Observation.status | status | 1..1 | code |
| Observation.code | code | 1..1 | CodeableConcept |
| Observation.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| Observation.issued | issued | 1..1 | instant |
| Observation.value[x] | value[x] | 1..1 | (Slice Definition) |
| Observation.value[x]:valueCodeableConcept | value[x]:valueCodeableConcept | 1..1 | CodeableConcept |
| Observation.component.code | code | 1..1 | CodeableConcept |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

### Example Smoking Status Observation

[US Core Smoking Status Observation example](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-smokingstatus.html):

```

{
  "resourceType" : "Observation",
  "id" : "some-day-smoker",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrativeid: some-day-smokermeta: category: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>code: <span title=\"Codes: {http://loinc.org 72166-2}\">Tobacco smoking status</span>subject: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number: 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a>issued: 18/03/2016 4:27:04 PMvalue: <span title=\"Codes: {http://snomed.info/sct 428041000124106}\">Current some day smoker</span></div>"
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }
      ],
      "text" : "Social History"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "72166-2",
        "display" : "Tobacco smoking status"
      }
    ],
    "text" : "Tobacco smoking status"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "issued" : "2016-03-18T05:27:04Z",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "428041000124106"
      }
    ],
    "text" : "Current some day smoker"
  }
}

```

[Next Page - VitalSigns](VitalSigns.md)

