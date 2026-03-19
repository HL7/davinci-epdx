# PDex Bulk Member Match Operation - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Bulk Member Match Operation**

## OperationDefinition: PDex Bulk Member Match Operation (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:BulkMemberMatch |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Bulk Member Match Operation enables Payers to match multiple members against another Payer's records for bulk data exchange. 

§pdex-397: This operation **SHALL** be performed asynchronously following the FHIR Asynchronous Request Pattern. § The kick-off request (HTTP POST with Prefer: respond-async) returns HTTP 202 Accepted with a Content-Location header pointing to a status endpoint. Clients poll that endpoint until the operation completes, at which point the response contains Group resources categorizing members as matched, non-matched, or consent-constrained. The matched members Group Id is then used with the $davinci-data-export operation — also an async bulk export — to retrieve member health data in ndjson format.

§pdex-398: Input parameters **SHALL** conform to the PDex Multi-Member Match Request profile. § §pdex-399: Output parameters **SHALL** conform to the PDex Multi-Member Match Response profile. §



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "BulkMemberMatch",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch",
  "version" : "2.2.0",
  "name" : "BulkMemberMatch",
  "title" : "PDex Bulk Member Match Operation",
  "status" : "active",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2025-05-14T21:28:59+02:00",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [{
    "name" : "HL7 International / Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    },
    {
      "system" : "email",
      "value" : "fm@lists.HL7.org"
    }]
  },
  {
    "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:mark.scrimshire@onyxhealth.io"
    }]
  },
  {
    "name" : "HL7 International - Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    }]
  }],
  "description" : "Bulk Member Match Operation enables Payers to match multiple members against another Payer's records for bulk data exchange.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "bulk-member-match",
  "comment" : "The Group resources returned by this operation can be used as input to the $davinci-data-export operation (defined in the Da Vinci Member Attribution IG) to perform bulk data export and retrieve the associated member health history in ndjson format.",
  "resource" : ["Group"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "inputProfile" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in",
  "outputProfile" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out",
  "parameter" : [{
    "name" : "MemberBundle",
    "use" : "in",
    "min" : 1,
    "max" : "*",
    "part" : [{
      "name" : "MemberPatient",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "type" : "Patient",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
    },
    {
      "name" : "CoverageToMatch",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "type" : "Coverage",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
    },
    {
      "name" : "CoverageToLink",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "type" : "Coverage",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
    },
    {
      "name" : "Consent",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "type" : "Consent",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-consent"]
    }]
  },
  {
    "name" : "MatchedMembers",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Group of members successfully matched. Delivered asynchronously via the bulk data completion manifest.",
    "type" : "Group"
  },
  {
    "name" : "NonMatchedMembers",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Group of members that could not be matched. Delivered asynchronously via the bulk data completion manifest.",
    "type" : "Group"
  },
  {
    "name" : "ConsentConstrainedMembers",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Group of members matched but excluded due to consent constraints. Delivered asynchronously via the bulk data completion manifest.",
    "type" : "Group"
  }]
}

```
