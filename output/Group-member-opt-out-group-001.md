# Example Member Opt-Out Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Example Member Opt-Out Group**

## Example Group: Example Member Opt-Out Group

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

## Member Opt-Out Group

Members who have opted out of Provider Access data sharing



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "member-opt-out-group-001",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-opt-out"]
  },
  "identifier" : [{
    "system" : "http://example.org/payer/opt-out-groups",
    "value" : "OPT-OUT-2024-001",
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
  "quantity" : 1,
  "managingEntity" : {
    "identifier" : {
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "5555555555"
    },
    "display" : "Example Payer Organization"
  },
  "characteristic" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/opt-out-reason",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-reason",
          "code" : "privacy-concern",
          "display" : "Privacy Concern"
        }]
      }
    }],
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS",
        "code" : "consentconstraint",
        "display" : "Consent Constraint"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-scope",
        "code" : "provider-specific",
        "display" : "Provider-Specific Opt-Out"
      }]
    },
    "exclude" : false,
    "period" : {
      "start" : "2024-06-01"
    }
  }],
  "member" : [{
    "entity" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/opt-out-details",
        "valueString" : "Member requested opt-out on 2024-06-01 citing privacy concerns. Opt-out applies to all named providers."
      }],
      "reference" : "Patient/1",
      "display" : "Jane Doe - Opted out of provider data sharing"
    },
    "inactive" : false
  }]
}

```
