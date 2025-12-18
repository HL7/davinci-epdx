# Bulk Member Match Data Export - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Bulk Member Match Data Export**

## OperationDefinition: Bulk Member Match Data Export (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatchDataExport | *Version*:2.1.1 |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:BulkMemberMatchDataExport |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
When invoked on a Group resource returned from the Provider-Member-Match or Payer-to-Payer Bulk Member Match operations, this operation exports all member health data for the members in the Group. The response includes a manifest file with references to ndjson files containing FHIR resources for each member in the group. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "BulkMemberMatchDataExport",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatchDataExport",
  "version" : "2.1.1",
  "name" : "BulkMemberMatchDataExport",
  "title" : "Bulk Member Match Data Export",
  "status" : "active",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2024-12-16T00:00:00Z",
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
  "description" : "When invoked on a Group resource returned from the Provider-Member-Match or Payer-to-Payer Bulk Member Match operations, this operation exports all member health data for the members in the Group. The response includes a manifest file with references to ndjson files containing FHIR resources for each member in the group.",
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
  "code" : "davinci-data-export",
  "comment" : "This operation is invoked on Group resources to export bulk member health data in FHIR format. The response includes a manifest file with URLs to ndjson files.",
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [
    {
      "name" : "_outputFormat",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The format for the bulk files (default: application/fhir+ndjson). Must be application/fhir+ndjson for this operation.",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "_since",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Only include resources modified since this instant (format: YYYY-MM-DDTHH:MM:SS+HH:MM)",
      "type" : "instant"
    },
    {
      "name" : "_type",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Comma-separated list of resource types to include in the bulk export (e.g., Patient,Condition,MedicationRequest). If omitted, all relevant types are included.",
      "type" : "string"
    },
    {
      "name" : "_elements",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Comma-separated list of elements to include in the bulk export (e.g., Condition.code,Condition.subject)",
      "type" : "string"
    },
    {
      "name" : "exportManifest",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "URL to the manifest file containing references to ndjson files with bulk member health data. The manifest file is accessed using the returned URL with an OAuth2 bearer token.",
      "type" : "url"
    }
  ]
}

```
