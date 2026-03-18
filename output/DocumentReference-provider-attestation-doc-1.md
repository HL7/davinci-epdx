# Provider Attestation Document Reference - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Attestation Document Reference**

## Example DocumentReference: Provider Attestation Document Reference

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**status**: Current

**docStatus**: Final

**type**: Release of information consent

**category**: Information Disclosure

**subject**: [Patricia Ann Person](Patient-1.md)

**date**: 2024-11-14 10:30:00+0000

**author**: [Dr. Susan Smith](Practitioner-4.md)

**authenticator**: [Provider 1](Organization-ProviderOrg1.md)

**custodian**: [Provider 1](Organization-ProviderOrg1.md)

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | application/pdf | [https://example.org/provider1/attestations/2024/attestation-001.pdf](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/provider1/attestations/2024/attestation-001.pdf) | Provider Treatment Relationship Attestation Form | 2024-11-14 10:30:00+0000 |

**format**: IHE.FormatCode.codesystem: urn:ihe:iti:xds:2017:mimeTypeSufficient (urn:ihe:iti:xds:2017:mimeTypeSufficient)

### Contexts

| | | |
| :--- | :--- | :--- |
| - | **Period** | **Related** |
| * | 2024-01-15 --> (ongoing) | [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Consultation](Encounter-6.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "provider-attestation-doc-1",
  "status" : "current",
  "docStatus" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "64292-6",
      "display" : "Release of information consent"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "IDSCL",
      "display" : "Information Disclosure"
    }]
  }],
  "subject" : {
    "reference" : "Patient/1",
    "display" : "Patricia Ann Person"
  },
  "date" : "2024-11-14T10:30:00Z",
  "author" : [{
    "reference" : "Practitioner/4",
    "display" : "Dr. Susan Smith"
  }],
  "authenticator" : {
    "reference" : "Organization/ProviderOrg1",
    "display" : "Provider 1"
  },
  "custodian" : {
    "reference" : "Organization/ProviderOrg1",
    "display" : "Provider 1"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://example.org/provider1/attestations/2024/attestation-001.pdf",
      "title" : "Provider Treatment Relationship Attestation Form",
      "creation" : "2024-11-14T10:30:00Z"
    },
    "format" : {
      "system" : "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
      "code" : "urn:ihe:iti:xds:2017:mimeTypeSufficient"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2024-01-15"
    },
    "related" : [{
      "reference" : "Encounter/6"
    }]
  }
}

```
