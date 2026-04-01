# Treatment Relationship Details - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Treatment Relationship Details**

## Extension: Treatment Relationship Details 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/treatment-relationship-details | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:TreatmentRelationshipDetails |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

Details about a specific treatment relationship between a member and provider

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.md)
* Examples for this Extension: [Group/example-pdex-treatment-relationship-group](Group-example-pdex-treatment-relationship-group.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/treatment-relationship-details)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-treatment-relationship-details.csv), [Excel](StructureDefinition-treatment-relationship-details.xlsx), [Schematron](StructureDefinition-treatment-relationship-details.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "treatment-relationship-details",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/treatment-relationship-details",
  "version" : "2.2.0",
  "name" : "TreatmentRelationshipDetails",
  "title" : "Treatment Relationship Details",
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
  "description" : "Details about a specific treatment relationship between a member and provider",
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
    "expression" : "Group.member.entity"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Treatment Relationship Details",
      "definition" : "Details about a specific treatment relationship between a member and provider"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/treatment-relationship-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Details of treatment relationship",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
