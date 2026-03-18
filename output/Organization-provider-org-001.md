# Organization Provider Example 1 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Organization Provider Example 1**

## Example Organization: Organization Provider Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Example Provider Organization



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "provider-org-001",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
  },
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1982947230"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Example Provider Organization",
  "telecom" : [{
    "system" : "phone",
    "value" : "555-123-4567",
    "use" : "work"
  }],
  "address" : [{
    "line" : ["100 Medical Center Drive"],
    "city" : "Anytown",
    "state" : "MA",
    "postalCode" : "02101"
  }]
}

```
