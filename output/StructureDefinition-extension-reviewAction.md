# ReviewAction - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ReviewAction**

## Extension: ReviewAction (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ReviewAction |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

The details of the review action that is necessary for the authorization.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md)
* Examples for this Extension: [ExplanationOfBenefit/PDexPriorAuth1](ExplanationOfBenefit-PDexPriorAuth1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/extension-reviewAction)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-extension-reviewAction.csv), [Excel](StructureDefinition-extension-reviewAction.xlsx), [Schematron](StructureDefinition-extension-reviewAction.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "extension-reviewAction",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction",
  "version" : "2.2.0",
  "name" : "ReviewAction",
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
  "description" : "The details of the review action that is necessary for the authorization.",
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
    "expression" : "ExplanationOfBenefit.item.adjudication"
  },
  {
    "type" : "element",
    "expression" : "ExplanationOfBenefit.adjudication"
  },
  {
    "type" : "element",
    "expression" : "ExplanationOfBenefit.addItem.adjudication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "The details of the review action that is necessary for the authorization."
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "short" : "Healthcare Services Outcome",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewActionCode"]
      }]
    },
    {
      "id" : "Extension.extension:number",
      "path" : "Extension.extension",
      "sliceName" : "number",
      "short" : "Item Level Review Number",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:number.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:number.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "number"
    },
    {
      "id" : "Extension.extension:number.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:reasonCode",
      "path" : "Extension.extension",
      "sliceName" : "reasonCode",
      "short" : "Explanation of the pending, review denial or partial approval",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:reasonCode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reasonCode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reasonCode"
    },
    {
      "id" : "Extension.extension:reasonCode.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/X12278ReviewDecisionReasonCode"
      }
    },
    {
      "id" : "Extension.extension:secondSurgicalOpinionFlag",
      "path" : "Extension.extension",
      "sliceName" : "secondSurgicalOpinionFlag",
      "short" : "Whether a second surgical opinion is need for approval",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:secondSurgicalOpinionFlag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:secondSurgicalOpinionFlag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "secondSurgicalOpinionFlag"
    },
    {
      "id" : "Extension.extension:secondSurgicalOpinionFlag.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
