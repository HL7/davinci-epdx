# Prior Authorization Values - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Prior Authorization Values**

## CodeSystem: Prior Authorization Values 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PriorAuthorizationValueCodes | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PriorAuthorizationValueCodes |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Codes used to define Prior Authorization categories 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PriorAuthorizationAmounts](ValueSet-PriorAuthorizationAmounts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PriorAuthorizationValueCodes",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PriorAuthorizationValueCodes",
  "version" : "2.2.0",
  "name" : "PriorAuthorizationValueCodes",
  "title" : "Prior Authorization Values",
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
  "description" : "Codes used to define Prior Authorization categories",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "submitted",
    "display" : "Submitted",
    "definition" : "Proposed amounts of units or services"
  },
  {
    "code" : "eligible",
    "display" : "Eligible",
    "definition" : "Eligible/agreed items or services"
  },
  {
    "code" : "utilized",
    "display" : "Utilized",
    "definition" : "Amount of items or services consumed to date"
  }]
}

```
