# Payer Member Example 2 - Sarah Williams - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Payer Member Example 2 - Sarah Williams**

## Example Patient: Payer Member Example 2 - Sarah Williams

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Sarah Elizabeth Williams - Payer Member



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "payer-member-002",
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
    "value" : "MBR-B98765432",
    "assigner" : {
      "display" : "Example Payer"
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Williams",
    "given" : ["Sarah", "Elizabeth"]
  }],
  "gender" : "female",
  "birthDate" : "1978-07-22",
  "address" : [{
    "line" : ["456 Oak Avenue"],
    "city" : "Sometown",
    "state" : "MA",
    "postalCode" : "02102"
  }]
}

```
