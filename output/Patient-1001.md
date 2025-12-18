# Patient1001 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Patient1001**

## Example Patient: Patient1001

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Patient/1001. Default Generated text for resource.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "1001",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
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
      "system" : "http://example.org/old-payer/identifiers/member",
      "value" : "55678",
      "assigner" : {
        "display" : "Old Payer"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Person",
      "given" : ["Patricia", "Ann"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1974-12-25"
}

```
