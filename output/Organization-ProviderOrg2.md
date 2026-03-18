# OrganizationProvider2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **OrganizationProvider2**

## Example Organization: OrganizationProvider2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2019-12-12 09:14:11+0000; Language: en-US

Profile: [US Core Organization Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html)

**identifier**: Provider number/1982943213

**active**: true

**name**: Provider 2



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ProviderOrg2",
  "meta" : {
    "lastUpdated" : "2019-12-12T09:14:11+00:00",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
  },
  "language" : "en-US",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1982943213"
  }],
  "active" : true,
  "name" : "Provider 2"
}

```
