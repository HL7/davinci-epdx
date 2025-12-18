# Treatment Attestation Example 1 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Example 1**

## Example Consent: Treatment Attestation Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [Provider Attestation to Treatment Relationship](StructureDefinition-provider-treatment-relationship-consent.md)

**status**: Active

**scope**: Treatment

**category**: Treatment, Release of information consent

**patient**: [Patient/patient-prov-001](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-001)

**dateTime**: 2024-12-10 14:30:00+0000

**performer**: [Dr. Susan Smith, MD](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Practitioner/provider-001)

**organization**: [Springfield Medical Center](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Organization/provider-org-001)

**source**: [Provider Attestation Form](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/DocumentReference/treatment-attestation-form-001)

### Policies

| | | |
| :--- | :--- | :--- |
| - | **Authority** | **Uri** |
| * | [https://example.org/compliance](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/compliance) | [https://example.org/provider-attestation-policy](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/provider-attestation-policy) |

> **provision****type**: Opt In**period**: 2024-01-15 --> (ongoing)

### Actors

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Reference** |
| * | information recipient | [Dr. Susan Smith](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Practitioner/provider-001) |

**purpose**:[ActReason: TREATMENT](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActReason.html#v3-ActReason-TREATMENT)(Treatment)



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "treatment-attestation-ex1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent"
    ]
  },
  "status" : "active",
  "scope" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
        "code" : "treatment"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
          "code" : "treat",
          "display" : "Treatment"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "64292-6",
          "display" : "Release of information consent"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/patient-prov-001"
  },
  "dateTime" : "2024-12-10T14:30:00Z",
  "performer" : [
    {
      "reference" : "Practitioner/provider-001",
      "display" : "Dr. Susan Smith, MD"
    }
  ],
  "organization" : [
    {
      "reference" : "Organization/provider-org-001",
      "display" : "Springfield Medical Center"
    }
  ],
  "sourceReference" : {
    "reference" : "DocumentReference/treatment-attestation-form-001",
    "display" : "Provider Attestation Form"
  },
  "policy" : [
    {
      "authority" : "https://example.org/compliance",
      "uri" : "https://example.org/provider-attestation-policy"
    }
  ],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2024-01-15"
    },
    "actor" : [
      {
        "role" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "IRCP",
              "display" : "information recipient"
            }
          ]
        },
        "reference" : {
          "reference" : "Practitioner/provider-001",
          "display" : "Dr. Susan Smith"
        }
      }
    ],
    "purpose" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "TREATMENT",
        "display" : "Treatment"
      }
    ]
  }
}

```
