# Treatment Attestation Example 1 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Example 1**

## Example Consent: Treatment Attestation Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Treatment Attestation by Dr. Susan Smith for Robert Johnson - Treatment relationship since 2024-01-15



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "treatment-attestation-ex1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent"]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "treatment"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "IDSCL",
      "display" : "Information Disclosure"
    }]
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "64292-6",
      "display" : "Release of information consent"
    }]
  }],
  "patient" : {
    "reference" : "Patient/patient-prov-001"
  },
  "dateTime" : "2024-12-10T14:30:00Z",
  "performer" : [{
    "reference" : "Practitioner/provider-001",
    "display" : "Dr. Susan Smith, MD"
  }],
  "organization" : [{
    "reference" : "Organization/provider-org-001",
    "display" : "Springfield Medical Center"
  }],
  "sourceReference" : {
    "reference" : "DocumentReference/treatment-attestation-form-001",
    "display" : "Provider Attestation Form"
  },
  "policy" : [{
    "authority" : "https://example.org/compliance",
    "uri" : "https://example.org/provider-attestation-policy"
  }],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2024-01-15"
    },
    "actor" : [{
      "role" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code" : "IRCP",
          "display" : "information recipient"
        }]
      },
      "reference" : {
        "reference" : "Practitioner/provider-001",
        "display" : "Dr. Susan Smith"
      }
    }],
    "purpose" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    }]
  }
}

```
