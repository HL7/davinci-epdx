# An attribute to express the refill number of a prescription - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **An attribute to express the refill number of a prescription**

## Extension: An attribute to express the refill number of a prescription (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/DispenseRefill | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:DispenseRefill |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

Attribute that identifies the refill number of a prescription. e.g., 0, 1, 2, etc.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.md)
* Examples for this Extension: [MedicationDispense/1000001](MedicationDispense-1000001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/DispenseRefill)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DispenseRefill.csv), [Excel](StructureDefinition-DispenseRefill.xlsx), [Schematron](StructureDefinition-DispenseRefill.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DispenseRefill",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/DispenseRefill",
  "version" : "2.2.0",
  "name" : "DispenseRefill",
  "title" : "An attribute to express the refill number of a prescription",
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
  "description" : "Attribute that identifies the refill number of a prescription. e.g., 0, 1, 2, etc.",
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
    "expression" : "MedicationDispense"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "An attribute to express the refill number of a prescription",
      "definition" : "Attribute that identifies the refill number of a prescription. e.g., 0, 1, 2, etc."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/DispenseRefill"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Refill number of this prescription",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
