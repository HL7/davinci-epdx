# ExamplePractitioner - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExamplePractitioner**

## Example Practitioner: ExamplePractitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2020-07-12 18:26:23+0000

Profile: [US Core Practitioner Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitioner.html)

**identifier**: Provider number/1982943213

**name**: Susan Smith 

**telecom**: ph: 4102943213

**gender**: Female

**birthDate**: 1965-11-15



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "4",
  "meta" : {
    "lastUpdated" : "2020-07-12T18:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"]
  },
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
  "name" : [{
    "family" : "Smith",
    "given" : ["Susan"],
    "suffix" : ["MD"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "4102943213"
  }],
  "gender" : "female",
  "birthDate" : "1965-11-15"
}

```
