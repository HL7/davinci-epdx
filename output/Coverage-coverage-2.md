# coveragein2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **coveragein2**

## Example Coverage: coveragein2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Default Generated text for resource.



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "coverage-2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB"
      }]
    },
    "system" : "http://example.org/old-payer",
    "value" : "DH10001235"
  }],
  "status" : "draft",
  "subscriberId" : "9876543789",
  "beneficiary" : {
    "reference" : "Patient/2"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }]
  },
  "period" : {
    "start" : "2011-05-23",
    "end" : "2012-05-23"
  },
  "payor" : [{
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "9876543210"
    },
    "display" : "Old Health Plan"
  }],
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "group"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "subplan"
      }]
    },
    "value" : "P7"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "plan"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "class"
      }]
    },
    "value" : "SILVER"
  }]
}

```
