# PDex Adjudication Discriminator - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Adjudication Discriminator**

## CodeSystem: PDex Adjudication Discriminator 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PDexAdjudicationDiscriminator |
| **Copyright/Legal**: This CodeSystem is not copyrighted. | | |

 
Used as the discriminator for the data elements in adjudication and item.adjudication 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PDexAdjudicationCategoryDiscriminator](ValueSet-PDexAdjudicationCategoryDiscriminator.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PDexAdjudicationDiscriminator",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator",
  "version" : "2.2.0",
  "name" : "PDexAdjudicationDiscriminator",
  "title" : "PDex Adjudication Discriminator",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Used as the discriminator for the data elements in adjudication and item.adjudication",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "This CodeSystem is not copyrighted.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "allowedunits",
    "display" : "allowed units",
    "definition" : "defines the adjudication slice to define allowed units"
  },
  {
    "code" : "consumedunits",
    "display" : "consumed units",
    "definition" : "defines the adjudication slice to define consumed units"
  },
  {
    "code" : "denialreason",
    "display" : "Denial Reason",
    "definition" : "defines the adjudication slice to identify the denial reason"
  }]
}

```
