# ExampleMedicationDispenseClaim - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleMedicationDispenseClaim**

## Example MedicationDispense: ExampleMedicationDispenseClaim

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 1; Last updated: 2024-04-17 15:26:23+0000

Profile: [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.md)

**An attribute to express the refill number of a prescription**: 1

**status**: Completed

**medication**: Lisinopril, 30 TABLET in 1 BLISTER PACK (54458-872-10) (package)

**subject**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Susan Smith](Practitioner-4.md) |

**location**: [Location MyFavorite Pharmacy](Location-5.md)

**type**: Refill

**quantity**: 60

**daysSupply**: 30

**whenHandedOver**: 2024-04-15 09:00:23+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "1000001",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2024-04-17T15:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/DispenseRefill",
      "valueQuantity" : {
        "value" : 1
      }
    }
  ],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/sid/ndc",
        "code" : "54458-872-10"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/1"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/4"
      }
    }
  ],
  "location" : {
    "reference" : "Location/5"
  },
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "RF"
      }
    ]
  },
  "quantity" : {
    "value" : 60
  },
  "daysSupply" : {
    "value" : 30
  },
  "whenHandedOver" : "2024-04-15T09:00:23.217+00:00"
}

```
