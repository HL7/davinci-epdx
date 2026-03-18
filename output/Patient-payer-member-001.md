# Payer Member Example 1 - Robert Johnson - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Payer Member Example 1 - Robert Johnson**

## Example Patient: Payer Member Example 1 - Robert Johnson

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Robert Michael Johnson - Payer Member



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "payer-member-001",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:30:00Z",
    "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB",
        "display" : "Member Number"
      }]
    },
    "system" : "http://example.org/payer/member-ids",
    "value" : "MBR-A12345678",
    "assigner" : {
      "display" : "Example Payer"
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Johnson",
    "given" : ["Robert", "Michael"]
  }],
  "gender" : "male",
  "birthDate" : "1965-03-15",
  "address" : [{
    "line" : ["123 Main Street"],
    "city" : "Anytown",
    "state" : "MA",
    "postalCode" : "02101"
  }]
}

```
