# Example Provider Consent Constrained Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Example Provider Consent Constrained Group**

## Example Group: Example Provider Consent Constrained Group

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

## Provider Consent Constrained Group

Members matched but opted out of Provider Access API data sharing.



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "example-provider-consent-constrained-group",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "prov-patient-3",
    "meta" : {
      "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
    },
    "name" : [{
      "use" : "official",
      "family" : "Williams",
      "given" : ["Sarah"]
    }],
    "gender" : "female",
    "birthDate" : "1982-11-05"
  }],
  "identifier" : [{
    "system" : "http://example.org/payer/match-groups",
    "value" : "CCG-2024-12-16-001",
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
      "code" : "consentconstraint",
      "display" : "Consent Constraint"
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
          "reference" : "#prov-patient-3"
        }
      }],
      "reference" : "#prov-patient-3"
    }
  }]
}

```
