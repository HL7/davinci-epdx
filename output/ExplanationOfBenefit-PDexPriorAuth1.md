# PdexPriorAuth - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PdexPriorAuth**

## Example ExplanationOfBenefit: PdexPriorAuth

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2024-02-06 09:14:11+0000; Language: en-US

Profile: [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)

**LevelOfServiceCode**: Urgent

**identifier**: `https://www.exampleplan.com/fhir/EOBIdentifier`/PA123412341234123412341234

**status**: Active

**type**: Institutional

**use**: Preauthorization

**patient**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**billablePeriod**: 2021-10-01 --> 2021-10-31

**created**: 2021-09-20 00:00:00+0000

**insurer**: [Example Health Plan](Organization-Payer1.md)

**provider**: [Another Example Health Plan](Organization-Payer2.md)

**priority**: Normal

**fundsReserveRequested**: Provider

**fundsReserve**: None

### Relateds

| | | |
| :--- | :--- | :--- |
| - | **Relationship** | **Reference** |
| * | Associated Claim | XCLM1001 |

**outcome**: Queued

**preAuthRefPeriod**: 2021-10-01 --> 2021-10-31

### CareTeams

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** |
| * | 1 | [Organization Payer 1](Organization-Payer1.md) | true |

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** | **Type** |
| * | 1 | Chronic pain syndrome | Principal Diagnosis |

### Insurances

| | | |
| :--- | :--- | :--- |
| - | **Focal** | **Coverage** |
| * | true | [Coverage: identifier = Member Number; status = active; subscriberId = 93542106; relationship = Self](Coverage-Coverage1.md) |

> **item****sequence**: 1**category**: Consultation**productOrService**: Behavior Only, ADL Index 6 - 10/Medicare 5 day assessment (Full)
> **adjudication**
> **id**1

> **ReviewAction**
* number: AUTH0001
* http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewActionCode: Certified in total

**When Adjudicated**: 2024-07-23 17:26:23+0000**category**: Submitted Amount

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 300.99 | United States dollar |



> **total****An attribute to express the amount of a service or item that has been utilized**: 1**category**: Eligible

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 100 | United States dollar |




## Resource Content

```json
{
  "resourceType" : "ExplanationOfBenefit",
  "id" : "PDexPriorAuth1",
  "meta" : {
    "lastUpdated" : "2024-02-06T09:14:11+00:00",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization"]
  },
  "language" : "en-US",
  "extension" : [{
    "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-levelOfServiceCode",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://codesystem.x12.org/005010/1338",
        "code" : "U",
        "display" : "Urgent"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://www.exampleplan.com/fhir/EOBIdentifier",
    "value" : "PA123412341234123412341234"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "institutional"
    }],
    "text" : "Institutional"
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/1"
  },
  "billablePeriod" : {
    "start" : "2021-10-01",
    "end" : "2021-10-31"
  },
  "created" : "2021-09-20T00:00:00+00:00",
  "insurer" : {
    "reference" : "Organization/Payer1",
    "display" : "Example Health Plan"
  },
  "provider" : {
    "reference" : "Organization/Payer2",
    "display" : "Another Example Health Plan"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal",
      "display" : "Normal"
    }]
  },
  "fundsReserveRequested" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/fundsreserve",
      "code" : "provider",
      "display" : "Provider"
    }]
  },
  "fundsReserve" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/fundsreserve",
      "code" : "none",
      "display" : "None"
    }]
  },
  "related" : [{
    "relationship" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship",
        "code" : "associated",
        "display" : "Associated Claim"
      }]
    },
    "reference" : {
      "value" : "XCLM1001"
    }
  }],
  "outcome" : "queued",
  "preAuthRefPeriod" : [{
    "start" : "2021-10-01",
    "end" : "2021-10-31"
  }],
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Organization/Payer1"
    },
    "responsible" : true
  }],
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10-cm",
        "code" : "G89.4"
      }]
    },
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosistype",
        "code" : "principal"
      }]
    }]
  }],
  "insurance" : [{
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/Coverage1"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "https://x12.org/codes/service-type-codes",
        "code" : "3",
        "display" : "Consultation"
      }]
    },
    "productOrService" : {
      "coding" : [{
        "system" : "https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes",
        "code" : "BB201",
        "display" : "Behavior Only, ADL Index 6 - 10/Medicare 5 day assessment (Full)"
      }]
    },
    "adjudication" : [{
      "id" : "1",
      "extension" : [{
        "extension" : [{
          "url" : "number",
          "valueString" : "AUTH0001"
        },
        {
          "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewActionCode",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://codesystem.x12.org/005010/306",
              "code" : "A1",
              "display" : "Certified in total"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction"
      },
      {
        "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated",
        "valueDateTime" : "2024-07-23T17:26:23.217+00:00"
      }],
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/adjudication",
          "code" : "submitted",
          "display" : "Submitted Amount"
        }]
      },
      "amount" : {
        "value" : 300.99,
        "currency" : "USD"
      }
    }]
  }],
  "total" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization",
      "valueQuantity" : {
        "value" : 1
      }
    }],
    "category" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PriorAuthorizationValueCodes",
        "code" : "eligible",
        "display" : "Eligible"
      }]
    },
    "amount" : {
      "value" : 100,
      "currency" : "USD"
    }
  }]
}

```
