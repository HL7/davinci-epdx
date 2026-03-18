# ExampleProvenanceSoloPractitioner - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenanceSoloPractitioner**

## Example Provenance: ExampleProvenanceSoloPractitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-07-11 17:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Patient encounter procedure](Encounter-7.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-07-11 17:26:23+0000 |

**Agents**

* **Type**: Author
  * **who**: [Practitioner Susan Smith ](Practitioner-4.md)
  * **On Behalf Of**: [Organization Provider 1](Organization-ProviderOrg1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000004",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-07-11T17:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"]
  },
  "target" : [{
    "reference" : "Encounter/7"
  }],
  "recorded" : "2020-07-11T17:26:23.217+00:00",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/4"
    },
    "onBehalfOf" : {
      "reference" : "Organization/ProviderOrg1"
    }
  }],
  "entity" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource",
          "code" : "x12837",
          "display" : "837 claim"
        }]
      }
    }],
    "role" : "source",
    "what" : {
      "display" : "No reference available"
    }
  }]
}

```
