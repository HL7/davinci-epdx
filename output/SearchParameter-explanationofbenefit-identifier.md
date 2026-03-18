# ExplanationOfBenefit_Identifier - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExplanationOfBenefit_Identifier**

## SearchParameter: ExplanationOfBenefit_Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-identifier | *Version*:2.2.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:ExplanationOfBenefit_Identifier |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
The business/claim identifier of the Explanation of Benefit 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "explanationofbenefit-identifier",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-03-31T06:41:13.000+00:00"
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
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
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-identifier",
  "version" : "2.2.0",
  "name" : "ExplanationOfBenefit_Identifier",
  "derivedFrom" : "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-identifier",
  "status" : "draft",
  "experimental" : false,
  "date" : "2020-03-31T19:48:45+10:00",
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
  "description" : "The business/claim identifier of the Explanation of Benefit",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "identifier",
  "base" : ["ExplanationOfBenefit"],
  "type" : "token",
  "expression" : "ExplanationOfBenefit.identifier",
  "xpathUsage" : "normal"
}

```
