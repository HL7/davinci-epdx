# Payer's Patient Record for Member 1001 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Payer's Patient Record for Member 1001**

## Example Patient: Payer's Patient Record for Member 1001

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Patricia Ann Person (official) Female, DoB: 1974-12-25 ( Member Number)

-------

| | |
| :--- | :--- |
| Other Id: | Medical record number/MR-1001-PLAN |
| Contact Detail | 123 Main Street Springfield IL 62701 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "payer-patient-1001",
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
      "value" : "HP-12345678",
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
      "value" : "MR-1001-PLAN",
      "assigner" : {
        "display" : "Example Health Plan"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Person",
      "given" : ["Patricia", "Ann"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1974-12-25",
  "address" : [
    {
      "line" : ["123 Main Street"],
      "city" : "Springfield",
      "state" : "IL",
      "postalCode" : "62701"
    }
  ]
}

```
