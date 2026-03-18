# PDex Device - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Device**

## Resource Profile: PDex Device ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-device | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PdexDevice |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
The PDex Device profile is provided to enable payers to record information about devices used by a member that may not have a UDI number. FHIR-29796 PDex Device uses base resource not US Core Implantable Device Profile. Pdex-Device enables payers to record non-implantable device data. CGP Voted on variance approval: Drew Torres/Eric Haas: 9-0-0 

US Core supports the [US Core Implantable Device](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-implantable-device.html) resource. However, payers may need to record information about other non-implantable devices that are used by their members. The PDex-Device profile is used to record this type of information.

NOTE: FHIR-29796: PDex Device uses base resource not US Core Implantable Device Profile. Pdex-Device enables payers to record non-implantable device data. CGP Voted on variance approval: Drew Torres/Eric Haas: 9-0-0

In future versions of this IG there is a desire to ensure that all Device identification information is exchanged using the PDex Device or US Core Implantable Device resource.

he essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [PDex Device](StructureDefinition-pdex-device.md) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Device.type | type | 1..1 | CodeableConcept |
| Device.patient | patient | 1..1 | Reference(US Core Patient Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

**Usages:**

* Examples for this Profile: [Device/543210](Device-543210.md)
* CapabilityStatements using this Profile: [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-device.csv), [Excel](StructureDefinition-pdex-device.xlsx), [Schematron](StructureDefinition-pdex-device.sch) 

### Notes:

[Return to PdexDevice Page](PdexDevice.md)



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-device",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-device",
  "version" : "2.2.0",
  "name" : "PdexDevice",
  "title" : "PDex Device",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-17T22:49:33-04:00",
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
  "description" : "The PDex Device profile is provided to enable payers to record information about devices used by a member that may not have a UDI number. \nFHIR-29796 PDex Device uses base resource not US Core Implantable Device Profile. Pdex-Device enables payers to record non-implantable device data. CGP Voted on variance approval: Drew Torres/Eric Haas: 9-0-0",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.udiCarrier",
      "path" : "Device.udiCarrier",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier.deviceIdentifier",
      "path" : "Device.udiCarrier.deviceIdentifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier.carrierAIDC",
      "path" : "Device.udiCarrier.carrierAIDC",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier.carrierHRF",
      "path" : "Device.udiCarrier.carrierHRF",
      "mustSupport" : true
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/device-status"
      }
    },
    {
      "id" : "Device.distinctIdentifier",
      "path" : "Device.distinctIdentifier",
      "mustSupport" : true
    },
    {
      "id" : "Device.expirationDate",
      "path" : "Device.expirationDate",
      "mustSupport" : true
    },
    {
      "id" : "Device.lotNumber",
      "path" : "Device.lotNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/device-kind"
      }
    },
    {
      "id" : "Device.patient",
      "path" : "Device.patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.url",
      "path" : "Device.url",
      "mustSupport" : true
    }]
  }
}

```
