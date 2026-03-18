# Treatment Attestation Form Example 1 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Form Example 1**

## Example DocumentReference: Treatment Attestation Form Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Signed Treatment Relationship Attestation Form for Robert Johnson



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "treatment-attestation-form-001",
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
    "reference" : "Patient/patient-prov-001",
    "display" : "Robert Michael Johnson"
  },
  "date" : "2024-12-16T09:30:00Z",
  "author" : [{
    "reference" : "Practitioner/provider-001",
    "display" : "Dr. John Smith"
  }],
  "custodian" : {
    "reference" : "Organization/provider-org-001",
    "display" : "Example Provider Organization"
  },
  "description" : "Signed attestation form documenting active treatment relationship between Dr. Smith and patient Robert Johnson",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "language" : "en-US",
      "title" : "Treatment Relationship Attestation Form",
      "creation" : "2024-12-16T09:30:00Z"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2024-01-01"
    }
  }
}

```
