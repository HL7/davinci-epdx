# ExampleProvenancePayerModified - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenancePayerModified**

## Example Provenance: ExampleProvenancePayerModified

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-09-01 13:41:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Patient encounter procedure](Encounter-7.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-07-12 18:26:23+0000 |

**Agents**

* **Type**: Author
  * **who**: [Organization Payer 1](Organization-Payer1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000006",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-09-01T13:41:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
    ]
  },
  "target" : [
    {
      "reference" : "Encounter/7"
    }
  ],
  "recorded" : "2020-07-12T18:26:23.217+00:00",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code" : "author",
            "display" : "Author"
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
                "code" : "hl7ccda",
                "display" : "HL7 C-CDA"
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
