# consentin2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **consentin2**

## Example Consent: consentin2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Default Generated text for resource.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "consent-2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-consent"]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "patient-privacy"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "IDSCL"
    }]
  }],
  "patient" : {
    "reference" : "Patient/2"
  },
  "performer" : [{
    "reference" : "Patient/2"
  }],
  "sourceReference" : {
    "reference" : "http://example.org/DocumentReference/someconsent-2"
  },
  "policy" : [{
    "uri" : "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
  }],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2023-12-01",
      "end" : "2024-03-31"
    },
    "actor" : [{
      "role" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "performer"
        }]
      },
      "reference" : {
        "identifier" : {
          "system" : "http://hl7.org/fhir/sid/us-npi",
          "value" : "9876543210"
        },
        "display" : "Old Health Plan"
      }
    },
    {
      "role" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code" : "IRCP"
        }]
      },
      "reference" : {
        "identifier" : {
          "system" : "http://hl7.org/fhir/sid/us-npi",
          "value" : "0123456789"
        },
        "display" : "New Health Plan"
      }
    }],
    "action" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/consentaction",
        "code" : "disclose"
      }]
    }]
  }
}

```
