# ExampleProvenanceCustodian - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenanceCustodian**

## Example Provenance: ExampleProvenanceCustodian

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-08-09 15:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for: 

* [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Consultation](Encounter-6.md)
* [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Patient encounter procedure](Encounter-7.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-08-09 15:26:23+0000 |
| Activity | append |

**Agents**

* **Type**: Custodian
  * **who**: [Organization Payer 1](Organization-Payer1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000101",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-08-09T15:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
    ]
  },
  "target" : [
    {
      "reference" : "Encounter/6"
    },
    {
      "reference" : "Encounter/7"
    }
  ],
  "recorded" : "2020-08-09T15:26:23.217+00:00",
  "reason" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "RECORDMGT"
        }
      ]
    }
  ],
  "activity" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
        "code" : "APPEND"
      }
    ]
  },
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type",
            "code" : "transmitter"
          },
          {
            "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code" : "custodian",
            "display" : "Custodian"
          }
        ]
      },
      "who" : {
        "reference" : "Organization/Payer1"
      }
    }
  ]
}

```
