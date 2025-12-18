# ExampleProvenancePayerSource - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenancePayerSource**

## Example Provenance: ExampleProvenancePayerSource

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-07-12 18:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [MedicationDispense: extension = 1; status = completed; medication[x] = Lisinopril, 30 TABLET in 1 BLISTER PACK (54458-872-10) (package); type = Refill; quantity = 60; daysSupply = 30; whenHandedOver = 2024-04-15 09:00:23+0000](MedicationDispense-1000001.md)

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
  "id" : "1000005",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-07-12T18:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
    ]
  },
  "target" : [
    {
      "reference" : "MedicationDispense/1000001"
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
                "code" : "ncpdp",
                "display" : "NCPDP Telecommunication"
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
