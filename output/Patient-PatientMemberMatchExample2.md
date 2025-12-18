# Patient for Member Match Example 2 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Patient for Member Match Example 2**

## Example Patient: Patient for Member Match Example 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Sarah Elizabeth Williams (official) Female, DoB: 1978-03-22 ( Member Number)

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: 555-987-6543
* 456 Oak Avenue Columbus OH 43085 (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientMemberMatchExample2",
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
      "system" : "http://example.org/provider-org/patient-ids",
      "value" : "PAT-002",
      "assigner" : {
        "display" : "Provider Organization"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Williams",
      "given" : ["Sarah", "Elizabeth"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "555-987-6543"
    }
  ],
  "gender" : "female",
  "birthDate" : "1978-03-22",
  "address" : [
    {
      "use" : "home",
      "line" : ["456 Oak Avenue"],
      "city" : "Columbus",
      "state" : "OH",
      "postalCode" : "43085"
    }
  ]
}

```
