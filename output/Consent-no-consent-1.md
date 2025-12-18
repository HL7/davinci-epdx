# PDex Provider Access Consent Example - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Provider Access Consent Example**

## Example Consent: PDex Provider Access Consent Example

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [PDex Provider Access Consent Profile](StructureDefinition-pdex-provider-consent.md)

**status**: Active

**scope**: Privacy Consent

**category**: information disclosure

**patient**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**performer**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**organization**: [Organization Payer 1](Organization-Payer1-1.md)

**policyRule**: Common Rule Informed Consent

> **provision****type**: Opt Out**period**: 2024-06-11 --> (ongoing)

### Actors

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Reference** |
| * | Performer | My Health Plan (Identifier:[NPI](http://terminology.hl7.org/3.1.0/NamingSystem-npi.html)/0123456789) |

**action**:Disclose



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "no-consent-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-consent"
    ]
  },
  "status" : "active",
  "scope" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
        "code" : "patient-privacy"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "IDSCL"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/1"
  },
  "performer" : [
    {
      "reference" : "Patient/1"
    }
  ],
  "organization" : [
    {
      "reference" : "Organization/Payer1-1"
    }
  ],
  "policyRule" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
        "code" : "cric",
        "display" : "Common Rule Informed Consent"
      }
    ]
  },
  "provision" : {
    "type" : "deny",
    "period" : {
      "start" : "2024-06-11"
    },
    "actor" : [
      {
        "role" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
              "code" : "performer"
            }
          ]
        },
        "reference" : {
          "identifier" : {
            "system" : "http://hl7.org/fhir/sid/us-npi",
            "value" : "0123456789"
          },
          "display" : "My Health Plan"
        }
      }
    ],
    "action" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/consentaction",
            "code" : "disclose"
          }
        ]
      }
    ]
  }
}

```
