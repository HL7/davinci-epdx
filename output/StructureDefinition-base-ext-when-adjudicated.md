# When Adjudicated - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **When Adjudicated**

## Extension: When Adjudicated 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:WhenAdjudicated |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

Date and Time when Adjudication Action took place. NOTE: that this extension may be replaced by an inter-version extension after R6 version of the EOB implements this DataTime element.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)
* Examples for this Extension: [ExplanationOfBenefit/PDexPriorAuth1](ExplanationOfBenefit-PDexPriorAuth1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/base-ext-when-adjudicated)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-base-ext-when-adjudicated.csv), [Excel](StructureDefinition-base-ext-when-adjudicated.xlsx), [Schematron](StructureDefinition-base-ext-when-adjudicated.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-ext-when-adjudicated",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated",
  "version" : "2.2.0",
  "name" : "WhenAdjudicated",
  "title" : "When Adjudicated",
  "status" : "active",
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
  "description" : "Date and Time when Adjudication Action took place. NOTE: that this extension may be replaced by an inter-version extension after R6 version of the EOB implements this DataTime element.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ExplanationOfBenefit.adjudication"
  },
  {
    "type" : "element",
    "expression" : "ExplanationOfBenefit.item.adjudication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "When Adjudicated",
      "definition" : "Date and Time when Adjudication Action took place. NOTE: that this extension may be replaced by an inter-version extension after R6 version of the EOB implements this DataTime element."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "comment" : "Date or data and time when the adjudication action occured.",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
