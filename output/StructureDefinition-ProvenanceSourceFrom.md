# An attribute to describe the data source a resource was constructed from - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **An attribute to describe the data source a resource was constructed from**

## Extension: An attribute to describe the data source a resource was constructed from (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProvenanceSourceFrom |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

Attributes that identify the source record format from which data in the referenced resources was derived

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PDex Provenance](StructureDefinition-pdex-provenance.md)
* Examples for this Extension: [Bundle/1000000-1](Bundle-1000000-1.md), [Bundle/1000000-2](Bundle-1000000-2.md), [Bundle/1000000-3](Bundle-1000000-3.md), [Bundle/3000002](Bundle-3000002.md)... Show 8 more, [Bundle/3000003](Bundle-3000003.md), [Provenance/1000001](Provenance-1000001.md), [Provenance/1000002](Provenance-1000002.md), [Provenance/1000003](Provenance-1000003.md), [Provenance/1000004](Provenance-1000004.md), [Provenance/1000005](Provenance-1000005.md), [Provenance/1000006](Provenance-1000006.md) and [Provenance/1000016](Provenance-1000016.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/ProvenanceSourceFrom)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ProvenanceSourceFrom.csv), [Excel](StructureDefinition-ProvenanceSourceFrom.xlsx), [Schematron](StructureDefinition-ProvenanceSourceFrom.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ProvenanceSourceFrom",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom",
  "version" : "2.2.0",
  "name" : "ProvenanceSourceFrom",
  "title" : "An attribute to describe the data source a resource was constructed from",
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
  "description" : "Attributes that identify the source record format from which data in the referenced resources was derived",
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
    "expression" : "Provenance.entity"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "An attribute to describe the data source a resource was constructed from",
      "definition" : "Attributes that identify the source record format from which data in the referenced resources was derived"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Source record format from which data was derived",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerSourceFormat"
      }
    }]
  }
}

```
