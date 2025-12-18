# Patient100 - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Patient100**

## Example Patient: Patient100

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2020-07-07 13:26:22+0000; Language: en-US

Profile: [US Core Patient Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-patient.html)

Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Marital Status: | unknown |
| Other Ids: | * Medical record number/1234-234-1243-12345678901m
* Health Plan Identifier/1234-234-1243-12345678901u
* Patient external identifier/1234-234-1243-12345678901a
 | | |
| Contact Detail | * ph: (443)555-1212
* ph: (410)678-2323
* 123 Main Street Pittsburgh PA 12519 
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "100",
  "meta" : {
    "lastUpdated" : "2020-07-07T13:26:22.0314215+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
    ]
  },
  "language" : "en-US",
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
      "system" : "https://www.xxxhealthplan.com/fhir/memberidentifier",
      "value" : "https://www.xxxhealthplan.com/fhir/memberidentifier#1234-234-1243-12345678901"
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
      "system" : "https://www.xxxhealthplan.com/fhir/medicalrecordnumber",
      "value" : "1234-234-1243-12345678901m"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "XV"
          }
        ]
      },
      "system" : "https://www.xxxhealthplan.com/fhir/uniquememberidentifier",
      "value" : "1234-234-1243-12345678901u"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PT"
          }
        ]
      },
      "system" : "https://www.xxxhealthplan.com/fhir/patacctnum",
      "value" : "1234-234-1243-12345678901a"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Appleseed",
      "given" : ["Johnny"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(443)555-1212",
      "rank" : 1
    },
    {
      "system" : "phone",
      "value" : "(410)678-2323",
      "rank" : 2
    }
  ],
  "gender" : "male",
  "birthDate" : "1986-01-01",
  "address" : [
    {
      "type" : "physical",
      "line" : ["123 Main Street"],
      "city" : "Pittsburgh",
      "state" : "PA",
      "postalCode" : "12519"
    }
  ],
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
        "code" : "UNK"
      }
    ]
  }
}

```
