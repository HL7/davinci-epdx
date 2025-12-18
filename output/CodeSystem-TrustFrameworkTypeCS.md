# Trust FrameworkType Code System - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Trust FrameworkType Code System**

## CodeSystem: Trust FrameworkType Code System 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/TrustFrameworkTypeCS | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:TrustFrameworkTypeCS |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Trust Framework Type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TrustFrameworkTypeVS](ValueSet-TrustFrameworkTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TrustFrameworkTypeCS",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 2,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/TrustFrameworkTypeCS",
  "version" : "2.1.1",
  "name" : "TrustFrameworkTypeCS",
  "title" : "Trust FrameworkType Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-17T14:48:28-05:00",
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
  "description" : "Trust Framework Type",
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
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "DirectTrust",
      "display" : "Direct Trust",
      "definition" : "Direct Trust"
    },
    {
      "code" : "CareQuality",
      "display" : "Carequality",
      "definition" : "Carequality"
    },
    {
      "code" : "Commonwell",
      "display" : "Commonwell",
      "definition" : "Commonwell"
    },
    {
      "code" : "TEFCA",
      "display" : "TEFCA",
      "definition" : "Trusted Exchange Framework and Common Agreement"
    },
    {
      "code" : "PayerToPayer",
      "display" : "Payer to Payer Trust Network",
      "definition" : "Payer to Payer Trust Network"
    },
    {
      "code" : "Exchange",
      "display" : "Exchange Required by Federal Regulations",
      "definition" : "Exchange Required by Federal Regulations"
    },
    {
      "code" : "PCDH",
      "display" : "Patient Centered Data Home",
      "definition" : "Patient Centered Data Home"
    }
  ]
}

```
