# Provider Treatment Attestation Consent Example for Bulk Member Match - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Treatment Attestation Consent Example for Bulk Member Match**

## Example Consent: Provider Treatment Attestation Consent Example for Bulk Member Match

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [Provider Attestation to Treatment Relationship](StructureDefinition-provider-treatment-relationship-consent.md)

**status**: Active

**scope**: Treatment

**category**: Treatment, Release of information consent

**patient**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**dateTime**: 2024-11-14 10:30:00+0000

**performer**: [Dr. Susan Smith](Practitioner-4.md)

**organization**: [Provider 1](Organization-ProviderOrg1.md)

**source**: [Provider Attestation Form](DocumentReference-provider-attestation-doc-1.md)

### Policies

| | | |
| :--- | :--- | :--- |
| - | **Authority** | **Uri** |
| * | [https://example.org/health-authority](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/health-authority) | [https://example.org/provider-attestation-policy](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/provider-attestation-policy) |

### Verifications

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Verified** | **VerifiedWith** | **VerificationDate** |
| * | true | [Provider 1](Organization-ProviderOrg1.md) | 2024-11-14 10:30:00+0000 |

> **provision****type**: Opt In**period**: 2024-01-15 --> (ongoing)
> **actor****role**:information recipient**reference**:[Dr. Susan Smith](Practitioner-4.md)

> **actor****role**:healthcare provider**reference**:[Provider 1](Organization-ProviderOrg1.md)
**purpose**:[ActReason: TREAT](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActReason.html#v3-ActReason-TREAT)(treatment),[ActReason: HPAYMT](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActReason.html#v3-ActReason-HPAYMT)(healthcare payment),[ActReason: HOPERAT](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActReason.html#v3-ActReason-HOPERAT)(healthcare operations)



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "provider-treatment-attestation-1",
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
    "reference" : "Patient/1"
  },
  "dateTime" : "2024-11-14T10:30:00Z",
  "performer" : [
    {
      "reference" : "Practitioner/4",
      "display" : "Dr. Susan Smith"
    }
  ],
  "organization" : [
    {
      "reference" : "Organization/ProviderOrg1",
      "display" : "Provider 1"
    }
  ],
  "sourceReference" : {
    "reference" : "DocumentReference/provider-attestation-doc-1",
    "display" : "Provider Attestation Form"
  },
  "policy" : [
    {
      "authority" : "https://example.org/health-authority",
      "uri" : "https://example.org/provider-attestation-policy"
    }
  ],
  "verification" : [
    {
      "verified" : true,
      "verifiedWith" : {
        "reference" : "Organization/ProviderOrg1",
        "display" : "Provider 1"
      },
      "verificationDate" : "2024-11-14T10:30:00Z"
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
          "reference" : "Practitioner/4",
          "display" : "Dr. Susan Smith"
        }
      },
      {
        "role" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
              "code" : "PROV",
              "display" : "healthcare provider"
            }
          ]
        },
        "reference" : {
          "reference" : "Organization/ProviderOrg1",
          "display" : "Provider 1"
        }
      }
    ],
    "purpose" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "TREAT",
        "display" : "treatment"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HPAYMT",
        "display" : "healthcare payment"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HOPERAT",
        "display" : "healthcare operations"
      }
    ]
  }
}

```
