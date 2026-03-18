# Treatment Attestation Example 2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Example 2**

## Example Consent: Treatment Attestation Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Treatment Attestation by Dr. James Brown for Sarah Williams - Treatment relationship since 2024-02-01



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "treatment-attestation-ex2",
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
    "reference" : "Patient/patient-prov-002"
  },
  "dateTime" : "2024-12-09T10:15:00Z",
  "performer" : [{
    "reference" : "Practitioner/provider-002",
    "display" : "Dr. James Brown, MD"
  }],
  "organization" : [{
    "reference" : "Organization/provider-org-002",
    "display" : "Columbus Clinic"
  }],
  "sourceReference" : {
    "reference" : "DocumentReference/treatment-attestation-form-002",
    "display" : "Provider Attestation Form"
  },
  "policy" : [{
    "uri" : "https://example.org/provider-attestation-policy"
  }],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2024-02-01"
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
        "reference" : "Practitioner/provider-002",
        "display" : "Dr. James Brown"
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
