# PDex Device - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **PDex Device**

## PDex Device

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - Coverage](coverage.md)

US Core supports the [US Core Implantable Device](http://hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html) resource. However, payers may need to record information about other non-implantable devices that are used by their members. The [PDex Device](StructureDefinition-pdex-device.md) profile is used to record this type of information.

In future versions of this IG there is a desire to ensure that all Device identification information is exchanged using the [PDex Device](StructureDefinition-pdex-device.md) or [US Core Implantable Device](http://hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [PDex Device](StructureDefinition-pdex-device.md) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Device.type | type | 1..1 | CodeableConcept |
| Device.patient | patient | 1..1 | Reference(US Core Patient Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

The PDex Device profile is available here: [StructureDefinition-pdex-device.html](StructureDefinition-pdex-device.md)

#### Example Device Resource

An example mapping of a device resource is shown below:

```

{
  "resourceType" : "Device",
  "id" : "udi-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-device"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: udi-1meta: UdiCarriers<table class=\"grid\">-CarrierHRF*(01)09504000059118(17)141120(10)7654321D(21)10987654d321</table>status: activetype: Coated femoral stem prosthesis, modular <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '468063009' = 'Coated femoral stem prosthesis, modular (physical object)', given as 'Coated femoral stem prosthesis, modular'})</span>patient: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></div>"
  },
  "udiCarrier" : [
    {
      "carrierHRF" : "(01)09504000059118(17)141120(10)7654321D(21)10987654d321"
    }
  ],
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "468063009",
        "display" : "Coated femoral stem prosthesis, modular"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  }
}

```

[Next Page - US Core DiagnosticReport for Laboratory Results Reporting](USCoreDiagnosticReportforLaboratoryResultsReporting.md)

