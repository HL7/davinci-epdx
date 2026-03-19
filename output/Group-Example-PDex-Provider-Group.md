# Example-PDex-Provider-Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Example-PDex-Provider-Group**

## Example Group: Example-PDex-Provider-Group

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2024-03-21 17:18:00+0000

Profile: [PDex Provider Group](StructureDefinition-pdex-provider-group.md)

**Attribution List Status**: final

**Members Opted-out**: 5

**identifier**: [United States National Provider Identifier](http://terminology.hl7.org/6.3.0/NamingSystem-npi.html)/1122334455, [United States Employer Identification Number](http://terminology.hl7.org/5.3.0/NamingSystem-USEIN.html)/99-12345

**active**: true

**type**: Person

**actual**: true

**code**: PDex Provider Group

**name**: Attributed List of Health Plan Members for Practitioner 1122334455.

**managingEntity**: [Organization Payer 1](Organization-Payer1.md)

### Characteristics

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Value[x]** | **Exclude** | **Period** |
| * | PDex Provider Group | Identifier:[United States National Provider Identifier](http://terminology.hl7.org/6.3.0/NamingSystem-npi.html)/0123456789 | false | 2024-03-21 --> (ongoing) |

> **member**
> **id**0
**entity**: [Patricia Ann Person (official) Female, DoB: 1974-12-25 ( Member Number)](Patient-1001.md)



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "Example-PDex-Provider-Group",
  "meta" : {
    "lastUpdated" : "2024-03-21T17:18:00.000Z",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-group"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-attributionListStatus",
    "valueCode" : "final"
  },
  {
    "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-members-opted-out",
    "valueQuantity" : {
      "value" : 5
    }
  }],
  "identifier" : [{
    "system" : "http://hl7.org/fhir/sid/us-npi",
    "value" : "1122334455"
  },
  {
    "system" : "urn:oid:2.16.840.1.113883.4.4",
    "value" : "99-12345"
  }],
  "active" : true,
  "type" : "person",
  "actual" : true,
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS",
      "code" : "pdexprovidergroup",
      "display" : "PDex Provider Group"
    }]
  },
  "name" : "Attributed List of Health Plan Members for Practitioner 1122334455.",
  "managingEntity" : {
    "reference" : "Organization/Payer1"
  },
  "characteristic" : [{
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS",
        "code" : "pdexprovidergroup",
        "display" : "PDex Provider Group"
      }]
    },
    "valueReference" : {
      "identifier" : {
        "system" : "http://hl7.org/fhir/sid/us-npi",
        "value" : "0123456789"
      }
    },
    "exclude" : false,
    "period" : {
      "start" : "2024-03-21"
    }
  }],
  "member" : [{
    "id" : "0",
    "entity" : {
      "reference" : "Patient/1001"
    }
  }]
}

```
