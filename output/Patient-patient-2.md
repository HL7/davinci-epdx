# patientin2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **patientin2**

## Example Patient: patientin2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

William John Smith (official) Male, DoB: 1959-12-25 ( Member Number)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-2",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB"
      }]
    },
    "system" : "http://example.org/old-payer/identifiers/member",
    "value" : "55678",
    "assigner" : {
      "display" : "Old Payer"
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Smith",
    "given" : ["William", "John"]
  }],
  "gender" : "male",
  "birthDate" : "1959-12-25"
}

```
