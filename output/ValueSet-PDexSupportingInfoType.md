# PDex SupportingInfo Type - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex SupportingInfo Type**

## ValueSet: PDex SupportingInfo Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexSupportingInfoType | *Version*:2.1.1 |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexSupportingInfoType |
| **Copyright/Legal**: This Valueset is not copyrighted. | |

 
Used as the discriminator for the types of supporting information for the PDEX Prior Authorization. Based on the CARIN IG for Blue Button� Implementation Guide. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "PDexSupportingInfoType",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexSupportingInfoType",
  "version" : "2.1.1",
  "name" : "PDexSupportingInfoType",
  "title" : "PDex SupportingInfo Type",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Used as the discriminator for the types of supporting information for the PDEX Prior Authorization.\nBased on the CARIN IG for Blue Button� Implementation Guide.",
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
  "copyright" : "This Valueset is not copyrighted.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexSupportingInfoTypeCS"
      }
    ]
  }
}

```
