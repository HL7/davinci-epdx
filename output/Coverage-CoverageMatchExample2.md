# Coverage to Match Example 2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Coverage to Match Example 2**

## Example Coverage: Coverage to Match Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Coverage for Sarah Williams - Subscriber ID: 87654321, Another Health Plan, HMO-BASIC



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "CoverageMatchExample2",
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
    "reference" : "Patient/patient-prov-002"
  },
  "subscriberId" : "87654321",
  "beneficiary" : {
    "reference" : "Patient/patient-prov-002"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }]
  },
  "period" : {
    "start" : "2023-06-01",
    "end" : "2024-05-31"
  },
  "payor" : [{
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "1111111111"
    },
    "display" : "Another Health Plan"
  }],
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "group"
      }]
    },
    "value" : "EMPLOY-67890"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "plan"
      }]
    },
    "value" : "HMO-BASIC"
  }]
}

```
