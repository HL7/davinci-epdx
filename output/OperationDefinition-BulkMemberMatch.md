# PDex Bulk Member Match Operation - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Bulk Member Match Operation**

## OperationDefinition: PDex Bulk Member Match Operation (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch | *Version*:2.1.1 |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:BulkMemberMatch |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Bulk Member Match Operation enables Payers to match multiple members against another Payer's records for bulk data exchange. The operation returns Group resources containing matched, non-matched, and constrained members. The matched members Group can be used with the $davinci-data-export operation to retrieve bulk FHIR data for all matched members. The $davinci-data-export operation returns a manifest file referencing bulk data files in ndjson format. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "BulkMemberMatch",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch",
  "version" : "2.1.1",
  "name" : "BulkMemberMatch",
  "title" : "PDex Bulk Member Match Operation",
  "status" : "active",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2025-05-14T21:28:59+02:00",
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
  "description" : "Bulk Member Match Operation enables Payers to match multiple members against another Payer's records for bulk data exchange. The operation returns Group resources containing matched, non-matched, and constrained members. The matched members Group can be used with the $davinci-data-export operation to retrieve bulk FHIR data for all matched members. The $davinci-data-export operation returns a manifest file referencing bulk data files in ndjson format.",
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
  "code" : "bulk-member-match",
  "comment" : "The Group resources returned by this operation can be used as input to the $davinci-data-export operation to perform bulk data export and retrieve the associated member health history in ndjson format. See BulkMemberMatchDataExport operation for details on the bulk export manifest structure.",
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in",
  "outputProfile" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out",
  "parameter" : [
    {
      "name" : "MemberBundle",
      "use" : "in",
      "min" : 1,
      "max" : "*",
      "part" : [
        {
          "name" : "MemberPatient",
          "use" : "in",
          "min" : 1,
          "max" : "1",
          "type" : "Patient",
          "targetProfile" : [
            "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"
          ]
        },
        {
          "name" : "CoverageToMatch",
          "use" : "in",
          "min" : 1,
          "max" : "1",
          "type" : "Coverage",
          "targetProfile" : [
            "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"
          ]
        },
        {
          "name" : "CoverageToLink",
          "use" : "in",
          "min" : 0,
          "max" : "1",
          "type" : "Coverage",
          "targetProfile" : [
            "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"
          ]
        },
        {
          "name" : "Consent",
          "use" : "in",
          "min" : 1,
          "max" : "1",
          "type" : "Consent",
          "targetProfile" : [
            "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-consent"
          ]
        }
      ]
    },
    {
      "name" : "MatchedMembers",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "type" : "Group",
      "targetProfile" : [
        "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group"
      ]
    },
    {
      "name" : "NonMatchedMembers",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "Group",
      "targetProfile" : [
        "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group"
      ]
    },
    {
      "name" : "ConsentConstrainedMembers",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "type" : "Group",
      "targetProfile" : [
        "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group"
      ]
    }
  ]
}

```
