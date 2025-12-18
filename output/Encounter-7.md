# ExampleEncounter2 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleEncounter2**

## Example Encounter: ExampleEncounter2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2019-10-15 20:26:23+0000

Profile: [US Core Encounter Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-encounter.html)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/6.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (Ambulatory)

**type**: Patient encounter procedure

**subject**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "7",
  "meta" : {
    "lastUpdated" : "2019-10-15T20:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
    ]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "Ambulatory"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/731000124108",
          "code" : "308335008",
          "display" : "Patient encounter procedure"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/1"
  }
}

```
