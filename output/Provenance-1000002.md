# ExampleProvenanceAuthorEncounter6 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleProvenanceAuthorEncounter6**

## Example Provenance: ExampleProvenanceAuthorEncounter6

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2019-07-14 19:26:23+0000

Profile: [PDex Provenance](StructureDefinition-pdex-provenance.md)

Provenance for [Encounter: status = finished; class = Ambulatory (ActCode#AMB); type = Consultation](Encounter-6.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2020-07-10 16:26:23+0000 |

**Agents**

* **Type**: Author
  * **who**: [Organization Provider 1](Organization-ProviderOrg1.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "1000002",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-07-14T19:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"]
  },
  "target" : [{
    "reference" : "Encounter/6"
  }],
  "recorded" : "2020-07-10T16:26:23.217+00:00",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
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
          "code" : "hl7ccda",
          "display" : "HL7 C-CDA"
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
