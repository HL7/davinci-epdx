# Treatment Attestation Form Example 2 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Form Example 2**

## Example DocumentReference: Treatment Attestation Form Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Signed Treatment Relationship Attestation Form for Sarah Williams



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "treatment-attestation-form-002",
  "meta" : {
    "lastUpdated" : "2024-12-16T10:00:00Z"
  },
  "status" : "current",
  "docStatus" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "64292-6",
      "display" : "Release of information consent Document"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "64292-6",
      "display" : "Release of information consent Document"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-prov-002",
    "display" : "Sarah Elizabeth Williams"
  },
  "date" : "2024-12-16T09:45:00Z",
  "author" : [{
    "reference" : "Practitioner/provider-002",
    "display" : "Dr. Mary Jones"
  }],
  "custodian" : {
    "reference" : "Organization/provider-org-002",
    "display" : "Second Example Provider Organization"
  },
  "description" : "Signed attestation form documenting active treatment relationship between Dr. Jones and patient Sarah Williams",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "language" : "en-US",
      "title" : "Treatment Relationship Attestation Form",
      "creation" : "2024-12-16T09:45:00Z"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2024-02-15"
    }
  }
}

```
