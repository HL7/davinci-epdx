# NDH FHIR IG - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **NDH FHIR IG**

## Extension: NDH FHIR IG 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-fhir-ig | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:FhirIg |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

FHIR IG

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [mTLS Endpoint](StructureDefinition-mtls-endpoint.md)
* Examples for this Extension: [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint1.md) and [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/base-ext-fhir-ig)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-base-ext-fhir-ig.csv), [Excel](StructureDefinition-base-ext-fhir-ig.xlsx), [Schematron](StructureDefinition-base-ext-fhir-ig.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-ext-fhir-ig",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-fhir-ig",
  "version" : "2.2.0",
  "name" : "FhirIg",
  "title" : "NDH FHIR IG",
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
  "description" : "FHIR IG",
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
      "short" : "NDH FHIR IG",
      "definition" : "FHIR IG"
    },
    {
      "id" : "Extension.extension:ig-publication",
      "path" : "Extension.extension",
      "sliceName" : "ig-publication",
      "short" : "IG Publication",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ig-publication.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ig-publication.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ig-publication"
    },
    {
      "id" : "Extension.extension:ig-publication.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "Extension.extension:ig-name",
      "path" : "Extension.extension",
      "sliceName" : "ig-name",
      "short" : "IG Name",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ig-name.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ig-name.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ig-name"
    },
    {
      "id" : "Extension.extension:ig-name.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ig-version",
      "path" : "Extension.extension",
      "sliceName" : "ig-version",
      "short" : "IG Version",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ig-version.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ig-version.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ig-version"
    },
    {
      "id" : "Extension.extension:ig-version.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-fhir-ig"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
