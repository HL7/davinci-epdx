# Coverage to Match Example 2 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Coverage to Match Example 2**

## Example Coverage: Coverage to Match Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [HRex Member Match Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1.1/StructureDefinition-hrex-coverage.html)

**status**: Draft

**type**: EHPLANS

**subscriber**: [Patient/patient-prov-002](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-002)

**subscriberId**: 87654321

**beneficiary**: [Patient/patient-prov-002](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-002)

**relationship**: Self

**period**: 2023-06-01 --> 2024-05-31

**payor**: Another Health Plan (Identifier: [NPI](http://terminology.hl7.org/3.1.0/NamingSystem-npi.html)/1111111111)

> **class****type**:Group**value**: EMPLOY-67890

> **class****type**:Plan**value**: HMO-BASIC



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "CoverageMatchExample2",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"
    ]
  },
  "status" : "draft",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EHPLANS"
      }
    ]
  },
  "subscriber" : {
    "reference" : "Patient/patient-prov-002"
  },
  "subscriberId" : "87654321",
  "beneficiary" : {
    "reference" : "Patient/patient-prov-002"
  },
  "relationship" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
        "code" : "self"
      }
    ]
  },
  "period" : {
    "start" : "2023-06-01",
    "end" : "2024-05-31"
  },
  "payor" : [
    {
      "identifier" : {
        "system" : "http://hl7.org/fhir/sid/us-npi",
        "value" : "1111111111"
      },
      "display" : "Another Health Plan"
    }
  ],
  "class" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code" : "group"
          }
        ]
      },
      "value" : "EMPLOY-67890"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code" : "plan"
          }
        ]
      },
      "value" : "HMO-BASIC"
    }
  ]
}

```
