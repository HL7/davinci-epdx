# Organization Provider Example 2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Organization Provider Example 2**

## Example Organization: Organization Provider Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Second Example Provider Organization



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "provider-org-002",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
  },
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1122334455"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Second Example Provider Organization",
  "telecom" : [{
    "system" : "phone",
    "value" : "555-987-6543",
    "use" : "work"
  }],
  "address" : [{
    "line" : ["200 Healthcare Boulevard"],
    "city" : "Sometown",
    "state" : "MA",
    "postalCode" : "02102"
  }]
}

```
