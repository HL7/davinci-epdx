# OrganizationPayer2 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **OrganizationPayer2**

## Example Organization: OrganizationPayer2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2020-12-12 09:14:11+0000; Language: en-US

Profile: [US Core Organization Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html)

**identifier**: National provider identifier/2739701805

**active**: true

**name**: Payer 2



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Payer2",
  "meta" : {
    "lastUpdated" : "2020-12-12T09:14:11+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
    ]
  },
  "language" : "en-US",
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NPI"
          }
        ]
      },
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "2739701805"
    }
  ],
  "active" : true,
  "name" : "Payer 2"
}

```
