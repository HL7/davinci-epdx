# US Core Practitioner - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Practitioner**

## US Core Practitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Pediatric Weight for Height Observation](USCorePediatricWeightforHeightObservation.md)

The [US Core 3.1.1 Practitioner](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-practitioner.html) or [US Core 6.1.0 Practitioner](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitioner.html) **SHALL** be used to record information about Practitioners.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Practitioner](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-practitioner.html) or [US Core 6.1.0 Practitioner](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitioner.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Practitioner.identifier | identifier | 1..* | (Slice Definition) |
| Practitioner.identifier:All Slices.system | system | 1..1 | uri |
| Practitioner.identifier:All Slices.value | value | 1..1 | string |
| Practitioner.identifier:NPI | identifier:NPI | 0..1 | Identifier |
| Practitioner.identifier:NPI.system | system | 1..1 | uri |
| Practitioner.name | name | 1..* | HumanName |
| Practitioner.name.family | family | 1..1 | string |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Practitioner Resource

An example mapping of a Practitioner resource is shown here:

```

{
  "resourceType" : "Practitioner",
  "id" : "practitioner-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: practitioner-1meta: identifier: 9941339108, 25456name: Ronald Bone address: 1003 Healthcare Drive Amherst MA 01002 (HOME)</div>"
  },
  "identifier" : [
    {
      "system" : "http://hl7.org.fhir/sid/us-npi",
      "value" : "9941339108"
    },
    {
      "system" : "http://www.acme.org/practitioners",
      "value" : "25456"
    }
  ],
  "name" : [
    {
      "family" : "Bone",
      "given" : [
        "Ronald"
      ],
      "prefix" : [
        "Dr"
      ]
    }
  ],
  "address" : [
    {
      "use" : "home",
      "line" : [
        "1003 Healthcare Drive"
      ],
      "city" : "Amherst",
      "state" : "MA",
      "postalCode" : "01002"
    }
  ]
}

```

Refer to the US Core Additional examples of the [US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) or [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1) Implementation Guide for further examples of completed Practitioner Profiles.

[Next Page - US Core PractitionerRole](USCorePractitionerRole.md)

