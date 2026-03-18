# PDex Consent Provider Access Use Case Search Parameter - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Consent Provider Access Use Case Search Parameter**

## SearchParameter: PDex Consent Provider Access Use Case Search Parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-provider-access | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexConsentProviderAccess |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Search for Consent resources that have the Provider Access Use Case extension set to true. This identifies consent records specific to the Provider Access API. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "pdex-consent-provider-access",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-provider-access",
  "version" : "2.2.0",
  "name" : "PDexConsentProviderAccess",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Search for Consent resources that have the Provider Access Use Case extension set to true. This identifies consent records specific to the Provider Access API.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "provider-access",
  "base" : ["Consent"],
  "type" : "token",
  "expression" : "Consent.provision.action.extension.where(url='http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-access-use-case').value",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
