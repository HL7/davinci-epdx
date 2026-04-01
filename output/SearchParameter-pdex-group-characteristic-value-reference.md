# PDex Group Characteristic Value Reference Search Parameter - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Group Characteristic Value Reference Search Parameter**

## SearchParameter: PDex Group Characteristic Value Reference Search Parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-group-characteristic-value-reference | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexGroupCharacteristicValueReference |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Search for Group resources by the Reference value of a characteristic. Used to find PDex Member Match Groups and Provider Groups associated with a specific requesting payer or provider Organization (stored in characteristic.valueReference). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "pdex-group-characteristic-value-reference",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-group-characteristic-value-reference",
  "version" : "2.2.0",
  "name" : "PDexGroupCharacteristicValueReference",
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
  "description" : "Search for Group resources by the Reference value of a characteristic. Used to find PDex Member Match Groups and Provider Groups associated with a specific requesting payer or provider Organization (stored in characteristic.valueReference).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "characteristic-value-reference",
  "base" : ["Group"],
  "type" : "reference",
  "expression" : "Group.characteristic.value.ofType(Reference)",
  "xpathUsage" : "normal",
  "target" : ["Organization"],
  "multipleOr" : false,
  "multipleAnd" : true
}

```
