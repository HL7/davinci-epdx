# US Core ImplantableDevice - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core ImplantableDevice**

## US Core ImplantableDevice

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Immunization](USCoreImmunization.md)

§pdex-26: Where a Health Plan has information about devices used by the Member that information **SHALL** be published using the § [US Core 3.1.1 Implantable Device](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-implantable-device.html) or [US Core 6.1.0 Implantable Device](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-implantable-device.html) resource when the information is structured and coded.

In future versions of this IG there is a desire to ensure that all Implantable Device identification information is exchanged using the Implantable Device resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Implantable Device](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-implantable-device.html) or [US Core 6.1.0 Implantable Device](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-implantable-device.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Device.udiCarrier | udiCarrier | 0..1 | BackboneElement |
| Device.udiCarrier.deviceIdentifier | deviceIdentifier | 1..1 | string |
| Device.udiCarrier.carrierAIDC | carrierAIDC | 0..1 | base64Binary |
| Device.udiCarrier.carrierHRF | carrierHRF | 0..1 | string |
| Device.distinctIdentifier | distinctIdentifier | 0..1 | string |
| Device.manufactureDate | manufactureDate | 0..1 | dateTime |
| Device.expirationDate | expirationDate | 0..1 | dateTime |
| Device.lotNumber | lotNumber | 0..1 | string |
| Device.serialNumber | serialNumber | 0..1 | string |
| Device.type | type | 1..1 | CodeableConcept |
| Device.patient | patient | 1..1 | Reference(US Core Patient Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Implantable Device Resource

An example mapping of an implantable device resource is shown below:

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

[Next Page - US Core Laboratory Result Observation](USCoreLaboratoryResultObservation.md)

