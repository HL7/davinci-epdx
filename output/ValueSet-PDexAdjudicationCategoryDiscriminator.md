# PDex Adjudication Category Discriminator - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Adjudication Category Discriminator**

## ValueSet: PDex Adjudication Category Discriminator (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudicationCategoryDiscriminator | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexAdjudicationCategoryDiscriminator |
| **Copyright/Legal**: This Valueset is not copyrighted. | |

 
Used as the discriminator for adjudication.category and item.adjudication.category for the PDex Prior Authorization. 

 **References** 

* [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)
* [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)

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
  "id" : "PDexAdjudicationCategoryDiscriminator",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudicationCategoryDiscriminator",
  "version" : "2.2.0",
  "name" : "PDexAdjudicationCategoryDiscriminator",
  "title" : "PDex Adjudication Category Discriminator",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-19T09:51:30-04:00",
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
  "description" : "Used as the discriminator for adjudication.category and item.adjudication.category for the PDex Prior Authorization.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "This Valueset is not copyrighted.",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudication"]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexPayerBenefitPaymentStatus"]
    },
    {
      "system" : "http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication",
      "version" : "2.1.0"
    },
    {
      "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator"
    }]
  }
}

```
