# Opt-Out Scope - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Opt-Out Scope**

## CodeSystem: Opt-Out Scope 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-scope | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:OptOutScopeCodeSystem |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
The scope of a member's opt-out election 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OptOutScopeValueSet](ValueSet-opt-out-scope-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "opt-out-scope",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-scope",
  "version" : "2.2.0",
  "name" : "OptOutScopeCodeSystem",
  "title" : "Opt-Out Scope",
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
  "description" : "The scope of a member's opt-out election",
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
  "count" : 5,
  "concept" : [{
    "code" : "global",
    "display" : "Global Opt-Out",
    "definition" : "Member has opted out from all data sharing"
  },
  {
    "code" : "provider-specific",
    "display" : "Provider-Specific Opt-Out",
    "definition" : "Member has opted out for specific provider(s)"
  },
  {
    "code" : "purpose-specific",
    "display" : "Purpose-Specific Opt-Out",
    "definition" : "Member has opted out for specific purpose(s)"
  },
  {
    "code" : "payer-specific",
    "display" : "Payer-Specific Opt-Out",
    "definition" : "Member has opted out for specific payer(s)"
  },
  {
    "code" : "provider-category",
    "display" : "Provider Category Opt-Out",
    "definition" : "Member has opted out for specific provider category/specialty"
  }]
}

```
