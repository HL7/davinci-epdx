# Group_Code - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Group_Code**

## SearchParameter: Group_Code 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/group-code | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:Group_Code |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
The code of the Group 

#### Search By Group Code

This search parameter enables a query against the Group resource to identify the following types of groups:

* pdexprovidergroup
* match
* nomatch
* consentconstraint

The FHIR Store **MAY** only have records for **pdexprovidergroup**, as used by the [Provider Access API](provider-access-api.md), and **match**, as used by the [Payer-to-Payer Bulk API](payertopayerbulkexchange.md) for members that successfully matched.

These codes relate to the following Group Profiles:

* [PDex Provider Group](StructureDefinition-pdex-provider-group.md) for Attributed Members used in the [Provider Access API](provider-access-api.md).
* [PDex Member Match Group](StructureDefinition-pdex-member-match-group.md) for Matched Members in the [Payer-to-Payer Bulk API](payertopayerbulkexchange.md).



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "group-code",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2024-04-17T16:12:00.000+00:00"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 2,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/group-code",
  "version" : "2.1.1",
  "name" : "Group_Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-04-17T16:12:00+00:00",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [
    {
      "name" : "HL7 International / Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        },
        {
          "system" : "email",
          "value" : "fm@lists.HL7.org"
        }
      ]
    },
    {
      "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
      "telecom" : [
        {
          "system" : "email",
          "value" : "mailto:mark.scrimshire@onyxhealth.io"
        }
      ]
    },
    {
      "name" : "HL7 International - Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        }
      ]
    }
  ],
  "description" : "The code of the Group",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "US",
          "display" : "United States of America"
        }
      ]
    }
  ],
  "code" : "code",
  "base" : ["Group"],
  "type" : "token",
  "expression" : "Group.code",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  }
}

```
