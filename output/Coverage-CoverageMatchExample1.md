# Coverage to Match Example 1 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Coverage to Match Example 1**

## Example Coverage: Coverage to Match Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Coverage for Robert Johnson - Subscriber ID: 12345678, Previous Health Plan, PPO-GOLD



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "CoverageMatchExample1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
  },
  "status" : "draft",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "HIP",
      "display" : "health insurance plan policy"
    }]
  },
  "subscriber" : {
    "reference" : "Patient/patient-prov-001"
  },
  "subscriberId" : "12345678",
  "beneficiary" : {
    "reference" : "Patient/patient-prov-001"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }]
  },
  "period" : {
    "start" : "2023-01-01",
    "end" : "2023-12-31"
  },
  "payor" : [{
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "9876543210"
    },
    "display" : "Previous Health Plan"
  }],
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "group"
      }]
    },
    "value" : "EMPLOY-12345"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "plan"
      }]
    },
    "value" : "PPO-GOLD"
  }]
}

```
