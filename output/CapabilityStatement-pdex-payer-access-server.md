# PDex Payer-Access Server CapabilityStatement - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Payer-Access Server CapabilityStatement**

## CapabilityStatement: PDex Payer-Access Server CapabilityStatement 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CapabilityStatement/pdex-payer-access-server | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PdexPayerAccessServerCapabilityStatement |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
This Section describes the expected capabilities of the PDex Payer Access Server actor which is responsible for providing responses to the queries submitted by the PDex Payer Access Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Payer Access Servers are defined. PDex Payer Access Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements. 

This capability statement is for use with the Payer-to-Payer Bulk Access API. It makes the $bulk-member-match and $davinci-data-export operations available to other payers that have the appropriate credentials to access the secured APIs.

The $davinci-data-export operation should support the export of Profiles supporting US Core 3.1.1 or US Core 6.1.0. Other profiles that can be included in the export are:

* CARIN Blue Button non-Financial Profiles.
* PDex Prior Authorization Profile.

 [Raw OpenAPI-Swagger Definition file](pdex-payer-access-server.openapi.json) | [Download](pdex-payer-access-server.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "pdex-payer-access-server",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2,
    "_valueInteger" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CapabilityStatement/pdex-payer-access-server",
  "version" : "2.2.0",
  "name" : "PdexPayerAccessServerCapabilityStatement",
  "title" : "PDex Payer Access Server CapabilityStatement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-05-02",
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
  "description" : "This Section describes the expected capabilities of the PDex Payer Access Server actor which is responsible for providing responses to the queries submitted by the PDex Payer Access Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Payer Access Servers are defined. PDex Payer Access Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "patchFormat" : ["application/json-patch+json"],
  "implementationGuide" : ["http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex|2.1.0"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "The PDex Payer Access Server **SHALL**: \n1. Support the US Core 3.1.1 or US Core 6.1.0 resources accessed via the Group resource.\n2. Implement the RESTful behavior according to the FHIR specification for bulk asynchronous access.\n3. Support json source formats for all US Core and PDex interactions. \n4. Return the following response classes:\n  - (Status 400): invalid parameter\n  - (Status 401/4xx): unauthorized request\n  - (Status 403): insufficient scope \n  - (Status 404): unknown resource \n  - (Status 410): deleted resource.\n\nThe PDex Payer Access Server **SHOULD**: \n1. Identify the US Core profiles supported as part of the FHIR `meta.profile` attribute for each instance.",
    "security" : {
      "description" : "1. See the [US Core Security Considerations](http://hl7.org/fhir/us/core/security.html) section for requirements and recommendations. 2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
    },
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Group",
      "supportedProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type",
        "documentation" : "Allows discovery of existing groups. SHOULD be limited to groups a requestor is permitted to access."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read",
        "documentation" : "Allows retrieval of a specific Group Resource."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "vread",
        "documentation" : "Allows retrieval of a historical version of a Group Resource."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "history-instance",
        "documentation" : "Allows review of changes to a Group Resource over time."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "history-type",
        "documentation" : "Retrieve the change history fora Group Resource."
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Group-identifier",
        "type" : "token",
        "documentation" : "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "characteristic",
        "definition" : "http://hl7.org/fhir/SearchParameter/Group-characteristic",
        "type" : "token",
        "documentation" : "A common characteristic of all members of a group."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "characteristic-value-reference",
        "definition" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-group-characteristic-value-reference",
        "type" : "reference",
        "documentation" : "Search for Group resources by the Reference value of a characteristic. Used to find PDex Member Match Groups and Provider Groups associated with a specific requesting payer or provider Organization."
      }],
      "operation" : [{
        "name" : "bulk-member-match",
        "definition" : "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch",
        "documentation" : "Client will submit multi-member-match-request bundle. Server will respond with a multi-member-match-response and instantiate a Group resource conforming to the PDexMemberMatchGroup that contains a set of matched members that the Server identified."
      },
      {
        "name" : "davinci-data-export",
        "definition" : "http://hl7.org/fhir/us/davinci-atr/OperationDefinition/davinci-data-export",
        "documentation" : "Each DaVinci use case as part of its implementation guide can define the exportType parameter and the behavior expected."
      }]
    }]
  }]
}

```
