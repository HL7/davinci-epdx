# Practitioner Provider Example 1 - Dr. Smith - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Practitioner Provider Example 1 - Dr. Smith**

## Example Practitioner: Practitioner Provider Example 1 - Dr. Smith

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Dr. John Smith, MD



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "provider-001",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"]
  },
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1234567893"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Smith",
    "given" : ["John"],
    "prefix" : ["Dr."],
    "suffix" : ["MD"]
  }]
}

```
