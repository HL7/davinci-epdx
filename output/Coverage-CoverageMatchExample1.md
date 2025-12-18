# Coverage to Match Example 1 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Coverage to Match Example 1**

## Example Coverage: Coverage to Match Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [HRex Member Match Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1.1/StructureDefinition-hrex-coverage.html)

**status**: Draft

**type**: EHPLANS

**subscriber**: [Patient/patient-prov-001](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-001)

**subscriberId**: 12345678

**beneficiary**: [Patient/patient-prov-001](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-001)

**relationship**: Self

**period**: 2023-01-01 --> 2023-12-31

**payor**: Previous Health Plan (Identifier: [NPI](http://terminology.hl7.org/3.1.0/NamingSystem-npi.html)/9876543210)

> **class****type**:Group**value**: EMPLOY-12345

> **class****type**:Plan**value**: PPO-GOLD



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "CoverageMatchExample1",
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
    "reference" : "Patient/patient-prov-001"
  },
  "subscriberId" : "12345678",
  "beneficiary" : {
    "reference" : "Patient/patient-prov-001"
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
    "start" : "2023-01-01",
    "end" : "2023-12-31"
  },
  "payor" : [
    {
      "identifier" : {
        "system" : "http://hl7.org/fhir/sid/us-npi",
        "value" : "9876543210"
      },
      "display" : "Previous Health Plan"
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
      "value" : "EMPLOY-12345"
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
      "value" : "PPO-GOLD"
    }
  ]
}

```
