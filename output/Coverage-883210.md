# ExampleCoverage - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleCoverage**

## Example Coverage: ExampleCoverage

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-10-28 09:26:23+0000

Profile: [HRex Member Match Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1.1/StructureDefinition-hrex-coverage.html)

**identifier**: Member Number/1039399818

**status**: Active

**subscriberId**: 97531

**beneficiary**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**relationship**: Self

**payor**: [Organization Payer 1](Organization-Payer1.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "883210",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-10-28T09:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB"
      }]
    },
    "system" : "http://example.org/someOrg/identifiers/whatever",
    "value" : "1039399818"
  }],
  "status" : "active",
  "subscriberId" : "97531",
  "beneficiary" : {
    "reference" : "Patient/1"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }]
  },
  "payor" : [{
    "reference" : "Organization/Payer1"
  }]
}

```
