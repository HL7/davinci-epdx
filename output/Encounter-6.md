# ExampleEncounter1 - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleEncounter1**

## Example Encounter: ExampleEncounter1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2019-07-14 19:26:23+0000

Profile: [US Core Encounter Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-encounter.html)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (Ambulatory)

**type**: Consultation

**subject**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "6",
  "meta" : {
    "lastUpdated" : "2019-07-14T19:26:23.217+00:00",
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "Ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/731000124108",
      "code" : "11429006",
      "display" : "Consultation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/1"
  }
}

```
