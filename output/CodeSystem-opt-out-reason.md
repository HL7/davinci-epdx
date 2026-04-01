# Opt-Out Reason - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Opt-Out Reason**

## CodeSystem: Opt-Out Reason 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-reason | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:OptOutReasonCodeSystem |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Reasons for opting out of data sharing 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OptOutReasonValueSet](ValueSet-opt-out-reason-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "opt-out-reason",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-reason",
  "version" : "2.2.0",
  "name" : "OptOutReasonCodeSystem",
  "title" : "Opt-Out Reason",
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
  "description" : "Reasons for opting out of data sharing",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "privacy-concern",
    "display" : "Privacy Concern",
    "definition" : "Member is concerned about privacy"
  },
  {
    "code" : "data-security",
    "display" : "Data Security Concern",
    "definition" : "Member has concerns about data security"
  },
  {
    "code" : "unknown-use",
    "display" : "Unknown Use",
    "definition" : "Member is unsure how data will be used"
  },
  {
    "code" : "provider-relationship",
    "display" : "Provider Relationship",
    "definition" : "Member prefers not to share data with specific provider"
  },
  {
    "code" : "member-choice",
    "display" : "Member Choice",
    "definition" : "Member exercised their right to opt-out"
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Other reason not specified"
  }]
}

```
