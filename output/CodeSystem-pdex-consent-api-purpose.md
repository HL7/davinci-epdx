# PDex Consent API Purpose - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Consent API Purpose**

## CodeSystem: PDex Consent API Purpose 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/pdex-consent-api-purpose | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PDexConsentApiPurposeCS |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Codes identifying which CMS-mandated API a Consent resource applies to. Used as a category discriminator to allow systems to locate and distinguish Consent records for Provider Access, Payer-to-Payer, and Patient Access APIs for a given member. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PDexConsentApiPurposeVS](ValueSet-pdex-consent-api-purpose-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pdex-consent-api-purpose",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/pdex-consent-api-purpose",
  "version" : "2.2.0",
  "name" : "PDexConsentApiPurposeCS",
  "title" : "PDex Consent API Purpose",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-17T22:49:33-04:00",
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
  "description" : "Codes identifying which CMS-mandated API a Consent resource applies to. Used as a category discriminator to allow systems to locate and distinguish Consent records for Provider Access, Payer-to-Payer, and Patient Access APIs for a given member.",
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
  "count" : 3,
  "concept" : [{
    "code" : "provider-access",
    "display" : "Provider Access API",
    "definition" : "Consent record applies to the CMS-mandated Provider Access API (member opt-out of sharing with providers)"
  },
  {
    "code" : "payer-to-payer",
    "display" : "Payer-to-Payer API",
    "definition" : "Consent record applies to the CMS-mandated Payer-to-Payer API (member authorization for data retrieval by requesting payer)"
  },
  {
    "code" : "patient-access",
    "display" : "Patient Access API",
    "definition" : "Consent record applies to the CMS-mandated Patient Access API (member authorization for third-party application access)"
  }]
}

```
