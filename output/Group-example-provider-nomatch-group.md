# Example Provider No Match Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Example Provider No Match Group**

## Example Group: Example Provider No Match Group

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

## Provider No Match Group

Members submitted by the provider that were not found in the payer system.



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "example-provider-nomatch-group",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "prov-patient-2",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
    },
    "name" : [{
      "use" : "official",
      "family" : "Smith",
      "given" : ["Jane"]
    }],
    "gender" : "female",
    "birthDate" : "1978-06-22"
  }],
  "identifier" : [{
    "system" : "http://example.org/payer/match-groups",
    "value" : "NMG-2024-12-16-001",
    "assigner" : {
      "display" : "Example Payer"
    }
  }],
  "active" : true,
  "type" : "person",
  "actual" : true,
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS",
      "code" : "nomatch",
      "display" : "Not Matched"
    }]
  },
  "managingEntity" : {
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "5555555555"
    },
    "display" : "Example Payer Organization"
  },
  "member" : [{
    "entity" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-match-parameters",
        "valueReference" : {
          "reference" : "#prov-patient-2"
        }
      }],
      "reference" : "#prov-patient-2"
    }
  }]
}

```
