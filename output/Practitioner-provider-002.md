# Practitioner Provider Example 2 - Dr. Jones - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Practitioner Provider Example 2 - Dr. Jones**

## Example Practitioner: Practitioner Provider Example 2 - Dr. Jones

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Dr. Mary Jones, MD



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "provider-002",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"]
  },
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1497758544"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Jones",
    "given" : ["Mary"],
    "prefix" : ["Dr."],
    "suffix" : ["MD"]
  }]
}

```
