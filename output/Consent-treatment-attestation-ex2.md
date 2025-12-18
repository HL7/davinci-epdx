# Treatment Attestation Example 2 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Attestation Example 2**

## Example Consent: Treatment Attestation Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [Provider Attestation to Treatment Relationship](StructureDefinition-provider-treatment-relationship-consent.md)

**status**: Active

**scope**: Treatment

**category**: Treatment, Release of information consent

**patient**: [Patient/patient-prov-002](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Patient/patient-prov-002)

**dateTime**: 2024-12-09 10:15:00+0000

**performer**: [Dr. James Brown, MD](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Practitioner/provider-002)

**organization**: [Columbus Clinic](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Organization/provider-org-002)

**source**: [Provider Attestation Form](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/DocumentReference/treatment-attestation-form-002)

### Policies

| | |
| :--- | :--- |
| - | **Uri** |
| * | [https://example.org/provider-attestation-policy](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=https://example.org/provider-attestation-policy) |

> **provision****type**: Opt In**period**: 2024-02-01 --> (ongoing)

### Actors

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Reference** |
| * | information recipient | [Dr. James Brown](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core/Practitioner/provider-002) |

**purpose**:[ActReason: TREATMENT](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActReason.html#v3-ActReason-TREATMENT)(Treatment)



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "treatment-attestation-ex2",
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
    "reference" : "Patient/patient-prov-002"
  },
  "dateTime" : "2024-12-09T10:15:00Z",
  "performer" : [
    {
      "reference" : "Practitioner/provider-002",
      "display" : "Dr. James Brown, MD"
    }
  ],
  "organization" : [
    {
      "reference" : "Organization/provider-org-002",
      "display" : "Columbus Clinic"
    }
  ],
  "sourceReference" : {
    "reference" : "DocumentReference/treatment-attestation-form-002",
    "display" : "Provider Attestation Form"
  },
  "policy" : [
    {
      "uri" : "https://example.org/provider-attestation-policy"
    }
  ],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2024-02-01"
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
          "reference" : "Practitioner/provider-002",
          "display" : "Dr. James Brown"
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
