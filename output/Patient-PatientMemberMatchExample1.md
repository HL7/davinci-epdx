# Patient for Member Match Example 1 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Patient for Member Match Example 1**

## Example Patient: Patient for Member Match Example 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Robert Michael Johnson (official) Male, DoB: 1965-08-15 ( Member Number)

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: 555-123-4567
* 123 Main Street Springfield IL 62701 (home)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientMemberMatchExample1",
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
      "value" : "PAT-001",
      "assigner" : {
        "display" : "Provider Organization"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Johnson",
      "given" : ["Robert", "Michael"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "555-123-4567"
    }
  ],
  "gender" : "male",
  "birthDate" : "1965-08-15",
  "address" : [
    {
      "use" : "home",
      "line" : ["123 Main Street"],
      "city" : "Springfield",
      "state" : "IL",
      "postalCode" : "62701"
    }
  ]
}

```
