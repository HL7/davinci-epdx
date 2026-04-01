# PDex Consent Action Search Parameter - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Consent Action Search Parameter**

## SearchParameter: PDex Consent Action Search Parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-action | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexConsentAction |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Search for Consent resources by the action code in the provision. Use provision-action=disclose combined with provision-type=deny to find members who have opted out of Provider Access data sharing. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "pdex-consent-action",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-action",
  "version" : "2.2.0",
  "name" : "PDexConsentAction",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Search for Consent resources by the action code in the provision. Use provision-action=disclose combined with provision-type=deny to find members who have opted out of Provider Access data sharing.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "provision-action",
  "base" : ["Consent"],
  "type" : "token",
  "expression" : "Consent.provision.action",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
