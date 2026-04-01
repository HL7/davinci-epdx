# NDH Dynamic Registration - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **NDH Dynamic Registration**

## Extension: NDH Dynamic Registration 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-dynamicRegistration | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:DynamicRegistration |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

Dynamic Registration

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [mTLS Endpoint](StructureDefinition-mtls-endpoint.md)
* Examples for this Extension: [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint1.md) and [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/base-ext-dynamicRegistration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-base-ext-dynamicRegistration.csv), [Excel](StructureDefinition-base-ext-dynamicRegistration.xlsx), [Schematron](StructureDefinition-base-ext-dynamicRegistration.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-ext-dynamicRegistration",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-dynamicRegistration",
  "version" : "2.2.0",
  "name" : "DynamicRegistration",
  "title" : "NDH Dynamic Registration",
  "status" : "active",
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
  "description" : "Dynamic Registration",
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
    "expression" : "Endpoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "NDH Dynamic Registration",
      "definition" : "Dynamic Registration"
    },
    {
      "id" : "Extension.extension:trustProfile",
      "path" : "Extension.extension",
      "sliceName" : "trustProfile",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:trustProfile.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:trustProfile.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "trustProfile"
    },
    {
      "id" : "Extension.extension:trustProfile.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/ndh/ValueSet/TrustProfileVS"
      }
    },
    {
      "id" : "Extension.extension:version",
      "path" : "Extension.extension",
      "sliceName" : "version",
      "short" : "Trust Profile Version",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:version.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:version.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "version"
    },
    {
      "id" : "Extension.extension:version.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-dynamicRegistration"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
