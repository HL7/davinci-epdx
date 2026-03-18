# ExampleDocRefProvenance - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleDocRefProvenance**

## Example Provenance: ExampleDocRefProvenance

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2020-10-09 15:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [DocumentReference: status = current; type = Summary of episode note; category = Clinical Note; date = 2020-10-09 15:26:23+0000](DocumentReference-123456.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-10-09 15:26:23+0000 |

**Agents**

* **Type**: Transmitter
  * **who**: [Organization Provider 1](Organization-ProviderOrg1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000016",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-10-09T15:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"]
  },
  "target" : [{
    "reference" : "DocumentReference/123456"
  }],
  "recorded" : "2020-10-09T15:26:23.217+00:00",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type",
        "code" : "transmitter",
        "display" : "Transmitter"
      }]
    },
    "who" : {
      "reference" : "Organization/ProviderOrg1"
    }
  }],
  "entity" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource",
          "code" : "unstructured"
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
