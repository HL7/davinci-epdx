# mTLS Object Type Code - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **mTLS Object Type Code**

## CodeSystem: mTLS Object Type Code 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/MtlsObjectCodeCS | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:MtlsObjectCodeCS |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Codes for the Signed Object Types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MtlsObjectTypeVS](ValueSet-MtlsObjectTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MtlsObjectCodeCS",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/MtlsObjectCodeCS",
  "version" : "2.1.1",
  "name" : "MtlsObjectCodeCS",
  "title" : "mTLS Object Type Code",
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
  "description" : "Codes for the Signed Object Types",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "MTLS",
      "display" : "mTLS signed Object",
      "definition" : "An mTLS-signed object is a data object (like a message, request, or token) that is validated and secured using mTLS certificates."
    }
  ]
}

```
