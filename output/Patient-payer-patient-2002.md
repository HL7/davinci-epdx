# Payer's Patient Record for Member 2002 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Payer's Patient Record for Member 2002**

## Example Patient: Payer's Patient Record for Member 2002

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

John Michael Doe (official) Male, DoB: 1985-06-15 ( Member Number)

-------

| | |
| :--- | :--- |
| Other Id: | Medical record number/MR-2002-PLAN |
| Contact Detail | 456 Oak Avenue Springfield IL 62702 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "payer-patient-2002",
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MB"
          }
        ]
      },
      "system" : "http://example.org/health-plan/identifiers/member",
      "value" : "HP-87654321",
      "assigner" : {
        "display" : "Example Health Plan"
      }
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }
        ]
      },
      "system" : "http://example.org/health-plan/identifiers/medical-record",
      "value" : "MR-2002-PLAN",
      "assigner" : {
        "display" : "Example Health Plan"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Doe",
      "given" : ["John", "Michael"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1985-06-15",
  "address" : [
    {
      "line" : ["456 Oak Avenue"],
      "city" : "Springfield",
      "state" : "IL",
      "postalCode" : "62702"
    }
  ]
}

```
