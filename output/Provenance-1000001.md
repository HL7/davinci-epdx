# ExampleProvenanceTransmitter - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenanceTransmitter**

## Example Provenance: ExampleProvenanceTransmitter

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-07-09 15:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [Bundle: type = searchset; timestamp = 2020-07-16 20:26:23+0000; total = 2](Bundle-2000002.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-07-09 15:26:23+0000 |

**Agents**

* **Type**: Transmitter
  * **who**: [Organization Payer 1](Organization-Payer1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000001",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-07-09T15:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
    ]
  },
  "target" : [
    {
      "reference" : "Bundle/2000002"
    }
  ],
  "recorded" : "2020-07-09T15:26:23.217+00:00",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type",
            "code" : "transmitter",
            "display" : "Transmitter"
          }
        ]
      },
      "who" : {
        "reference" : "Organization/Payer1"
      }
    }
  ],
  "entity" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource",
                "code" : "hl7v2adt",
                "display" : "HL7 v2 ADT"
              }
            ]
          }
        }
      ],
      "role" : "source",
      "what" : {
        "display" : "No reference available"
      }
    }
  ]
}

```
