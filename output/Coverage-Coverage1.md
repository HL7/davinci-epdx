# PDexCoverageExample - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDexCoverageExample**

## Example Coverage: PDexCoverageExample

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [HRex Member Match Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1.1/StructureDefinition-hrex-coverage.html)

**identifier**: Member Number/234567

**status**: Active

**subscriberId**: 93542106

**beneficiary**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**relationship**: Self

**payor**: [Organization Payer 1](Organization-Payer1.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "Coverage1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MB"
          }
        ]
      },
      "system" : "http://example.org/old-payer/identifiers/coverage",
      "value" : "234567"
    }
  ],
  "status" : "active",
  "subscriberId" : "93542106",
  "beneficiary" : {
    "reference" : "Patient/1"
  },
  "relationship" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
        "code" : "self"
      }
    ]
  },
  "payor" : [
    {
      "reference" : "Organization/Payer1"
    }
  ]
}

```
