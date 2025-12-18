# NDH Contactpoint Availabletime - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **NDH Contactpoint Availabletime**

## Extension: NDH Contactpoint Availabletime 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:ContactPointAvailableTime |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

An extension representing the days and times a contact point is available

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [mTLS Endpoint](StructureDefinition-mtls-endpoint.md) and [mTLS Organization](StructureDefinition-mtls-organization.md)
* Examples for this Extension: [Acme of CT](Organization-Acme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/base-ext-contactpoint-availabletime)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-base-ext-contactpoint-availabletime.csv), [Excel](StructureDefinition-base-ext-contactpoint-availabletime.xlsx), [Schematron](StructureDefinition-base-ext-contactpoint-availabletime.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "base-ext-contactpoint-availabletime",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 2,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime",
  "version" : "2.1.1",
  "name" : "ContactPointAvailableTime",
  "title" : "NDH Contactpoint Availabletime",
  "status" : "active",
  "date" : "2025-12-17T14:48:28-05:00",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [
    {
      "name" : "HL7 International / Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        },
        {
          "system" : "email",
          "value" : "fm@lists.HL7.org"
        }
      ]
    },
    {
      "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
      "telecom" : [
        {
          "system" : "email",
          "value" : "mailto:mark.scrimshire@onyxhealth.io"
        }
      ]
    },
    {
      "name" : "HL7 International - Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        }
      ]
    }
  ],
  "description" : "An extension representing the days and times a contact point is available",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "US",
          "display" : "United States of America"
        }
      ]
    }
  ],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "fhirpath",
      "expression" : "descendants()"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "NDH Contactpoint Availabletime",
        "definition" : "An extension representing the days and times a contact point is available"
      },
      {
        "id" : "Extension.extension:daysOfWeek",
        "path" : "Extension.extension",
        "sliceName" : "daysOfWeek",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:daysOfWeek.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:daysOfWeek.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "daysOfWeek"
      },
      {
        "id" : "Extension.extension:daysOfWeek.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/days-of-week"
        }
      },
      {
        "id" : "Extension.extension:allDay",
        "path" : "Extension.extension",
        "sliceName" : "allDay",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:allDay.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:allDay.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "allDay"
      },
      {
        "id" : "Extension.extension:allDay.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:availableStartTime",
        "path" : "Extension.extension",
        "sliceName" : "availableStartTime",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:availableStartTime.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:availableStartTime.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "availableStartTime"
      },
      {
        "id" : "Extension.extension:availableStartTime.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Extension.extension:availableEndTime",
        "path" : "Extension.extension",
        "sliceName" : "availableEndTime",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:availableEndTime.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:availableEndTime.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "availableEndTime"
      },
      {
        "id" : "Extension.extension:availableEndTime.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
