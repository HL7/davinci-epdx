# Patient2002 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Patient2002**

## Example Patient: Patient2002

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Patient/2002. Default Generated text for resource.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "2002",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB"
      }]
    },
    "system" : "http://example.org/old-payer/identifiers/member",
    "value" : "45567",
    "assigner" : {
      "display" : "Old Payer"
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Smith",
    "given" : ["William", "John"]
  }],
  "gender" : "female",
  "birthDate" : "1958-12-25"
}

```
