# Acme - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Acme**

## Example Organization: Acme

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2020-07-07 13:26:22+0000; Language: en-US

Profile: [mTLS Organization](StructureDefinition-mtls-organization.md)

**identifier**: [NPI](http://terminology.hl7.org/3.1.0/NamingSystem-npi.html)/1356362586

**active**: true

**type**: Payer

**name**: Acme of CT

**telecom**: 

**address**: 456 Main Street Norwalk CT 00014-1234 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Acme",
  "meta" : {
    "lastUpdated" : "2020-07-07T13:26:22.0314215+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization"
    ]
  },
  "language" : "en-US",
  "identifier" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-identifier-status",
          "valueCode" : "active"
        }
      ],
      "system" : "http://hl7.org/fhir/sid/us-npi",
      "value" : "1356362586"
    }
  ],
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS",
          "code" : "payer",
          "display" : "Payer"
        }
      ]
    }
  ],
  "name" : "Acme of CT",
  "telecom" : [
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "daysOfWeek",
              "valueCode" : "mon"
            },
            {
              "url" : "daysOfWeek",
              "valueCode" : "tue"
            },
            {
              "url" : "daysOfWeek",
              "valueCode" : "wed"
            },
            {
              "url" : "daysOfWeek",
              "valueCode" : "thu"
            },
            {
              "url" : "daysOfWeek",
              "valueCode" : "fri"
            },
            {
              "url" : "availableStartTime",
              "valueTime" : "08:00:00"
            },
            {
              "url" : "availableEndTime",
              "valueTime" : "17:00:00"
            }
          ],
          "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime"
        }
      ],
      "system" : "url"
    }
  ],
  "address" : [
    {
      "line" : ["456 Main Street"],
      "city" : "Norwalk",
      "state" : "CT",
      "postalCode" : "00014-1234"
    }
  ]
}

```
