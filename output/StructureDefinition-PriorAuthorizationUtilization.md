# An attribute to express the amount of a service or item that has been utilized - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **An attribute to express the amount of a service or item that has been utilized**

## Extension: An attribute to express the amount of a service or item that has been utilized (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PriorAuthorizationUtilization |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

Attribute that expresses the amount of an item or service that has been consumed under the current prior authorization.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)
* Examples for this Extension: [ExplanationOfBenefit/PDexPriorAuth1](ExplanationOfBenefit-PDexPriorAuth1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/PriorAuthorizationUtilization)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PriorAuthorizationUtilization.csv), [Excel](StructureDefinition-PriorAuthorizationUtilization.xlsx), [Schematron](StructureDefinition-PriorAuthorizationUtilization.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PriorAuthorizationUtilization",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization",
  "version" : "2.2.0",
  "name" : "PriorAuthorizationUtilization",
  "title" : "An attribute to express the amount of a service or item that has been utilized",
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
  "description" : "Attribute that expresses the amount of an item or service that has been consumed under the current prior authorization.",
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
    "expression" : "ExplanationOfBenefit.total"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "An attribute to express the amount of a service or item that has been utilized",
      "definition" : "Attribute that expresses the amount of an item or service that has been consumed under the current prior authorization."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Amount/Quantity of an item or service that has been consumed/utilized",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "Ratio"
      }]
    }]
  }
}

```
