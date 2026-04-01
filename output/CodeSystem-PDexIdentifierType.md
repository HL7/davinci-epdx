# PDex Identifier Type - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Identifier Type**

## CodeSystem: PDex Identifier Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexIdentifierType | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PDexIdentifierType |
| **Copyright/Legal**: This CodeSystem is not copyrighted. | | |

 
Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203 to define the type of identifier payers and providers assign to claims and patients 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PDexIdentifierType",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexIdentifierType",
  "version" : "2.2.0",
  "name" : "PDexIdentifierType",
  "title" : "PDex Identifier Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-31T21:00:10-04:00",
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
  "description" : "Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203 to define the type of identifier payers and providers assign to claims and patients",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "This CodeSystem is not copyrighted.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "npi",
    "display" : "National Provider Identifier",
    "definition" : "National Provider Identifier"
  },
  {
    "code" : "payerid",
    "display" : "Payer ID",
    "definition" : "Payer ID"
  },
  {
    "code" : "naiccode",
    "display" : "NAIC Code",
    "definition" : "NAIC Code"
  },
  {
    "code" : "pat",
    "display" : "Patient Account Number",
    "definition" : "Patient Account Number"
  },
  {
    "code" : "um",
    "display" : "Unique Member ID",
    "definition" : "Indicates that the patient identifier is a unique member identifier assigned by a payer across all lines of business"
  },
  {
    "code" : "uc",
    "display" : "Unique Claim ID",
    "definition" : "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
  }]
}

```
