# mtlsorganization2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **mtlsorganization2**

## Example Organization: mtlsorganization2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2022-07-04 15:00:00+0000

Profile: [mTLS Organization](StructureDefinition-mtls-organization.md)

**active**: true

**type**: Payer

**name**: DiamondOnyxHealth

**telecom**: [https://diamond.1.onyxhealth.io](https://diamond.1.onyxhealth.io)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "DiamondOnyxHealth1",
  "meta" : {
    "lastUpdated" : "2022-07-04T15:00:00.000Z",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "pay",
      "display" : "Payer"
    }]
  }],
  "name" : "DiamondOnyxHealth",
  "telecom" : [{
    "system" : "url",
    "value" : "https://diamond.1.onyxhealth.io"
  }]
}

```
