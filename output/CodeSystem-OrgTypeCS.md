# Organization Type - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Organization Type**

## CodeSystem: Organization Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:OrgTypeCS |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Categories of organizations based on criteria in provider directories. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrgTypeVS](ValueSet-OrgTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "OrgTypeCS",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS",
  "version" : "2.2.0",
  "name" : "OrgTypeCS",
  "title" : "Organization Type",
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
  "description" : "Categories of organizations based on criteria in provider directories.",
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
  "count" : 6,
  "concept" : [{
    "code" : "fac",
    "display" : "Facility",
    "definition" : "A physical healthcare facility"
  },
  {
    "code" : "prvgrp",
    "display" : "Provider Group",
    "definition" : "A healthcare provider entity"
  },
  {
    "code" : "payer",
    "display" : "Payer",
    "definition" : "A healthcare payer"
  },
  {
    "code" : "atyprv",
    "display" : "Atypical Provider",
    "definition" : "Providers that do not provide healthcare"
  },
  {
    "code" : "bus",
    "display" : "Non-Healthcare Business",
    "definition" : "An organization that does not meet the definitions of a Healthcare or Atypical Provider, and is not a payer or healthcare facility"
  },
  {
    "code" : "ntwk",
    "display" : "Network",
    "definition" : "A healthcare provider insurance network"
  }]
}

```
