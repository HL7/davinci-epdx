# NDH Trust Framework - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **NDH Trust Framework**

## Extension: NDH Trust Framework 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-trustFramework | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:TrustFramework |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

Trust Framework

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [mTLS Endpoint](StructureDefinition-mtls-endpoint.md)
* Examples for this Extension: [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint1.md) and [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/base-ext-trustFramework)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-base-ext-trustFramework.csv), [Excel](StructureDefinition-base-ext-trustFramework.xlsx), [Schematron](StructureDefinition-base-ext-trustFramework.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-ext-trustFramework",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-trustFramework",
  "version" : "2.2.0",
  "name" : "TrustFramework",
  "title" : "NDH Trust Framework",
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
  "description" : "Trust Framework",
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
      "short" : "NDH Trust Framework",
      "definition" : "Trust Framework"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:trustFrameworkType",
      "path" : "Extension.extension",
      "sliceName" : "trustFrameworkType",
      "short" : "Trust Framework Type",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:trustFrameworkType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:trustFrameworkType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "trustFrameworkType"
    },
    {
      "id" : "Extension.extension:trustFrameworkType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/TrustFrameworkTypeVS"
      }
    },
    {
      "id" : "Extension.extension:qualifier",
      "path" : "Extension.extension",
      "sliceName" : "qualifier",
      "short" : "Qualifier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:qualifier.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:qualifier.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "qualifier"
    },
    {
      "id" : "Extension.extension:qualifier.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:signedArtifact",
      "path" : "Extension.extension",
      "sliceName" : "signedArtifact",
      "short" : "Signed Artifact",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:signedArtifact.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:signedArtifact.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "signedArtifact"
    },
    {
      "id" : "Extension.extension:signedArtifact.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "Extension.extension:publicCertificate",
      "path" : "Extension.extension",
      "sliceName" : "publicCertificate",
      "short" : "Public Certificate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:publicCertificate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:publicCertificate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "publicCertificate"
    },
    {
      "id" : "Extension.extension:publicCertificate.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-trustFramework"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
