[Previous Page - Coverage](Coverage.html)

US Core supports the [US Core Implantable Device](http://hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html) resource. However, 
 payers may need to record information about other non-implantable devices
 that are used by their members. The PDex-Device profile is used to record this type of information. 

In future versions of this IG there is a desire to ensure that all Device identification information is exchanged using the PDex Device or US Core Implantable Device resource.  

The essential fields to be provided in the PDex Device resource are:

| R4 Hierarchical Name             | R4 Name    | Flags | Card. | Type                               |
|----------------------------------|------------|-------|-------|------------------------------------|
| Device                           | Device     | I     | 0..*  |                                    |
| Device.id                        | id         |      | 0..1  | id                                 |
| Device.udiCarrier                | udiCarrier | SI   | 1..1  | BackboneElement                    |
| Device.deviceName.name           | name       |       | 1..1  | string                             |
| Device.deviceName.type           | type       |       | 1..1  | code                               |
| Device.type                      | type       | S     | 1..1  | CodeableConcept                    |
| Device.specialization.systemType | systemType |       | 1..1  | CodeableConcept                    |
| Device.version.value             | value      |       | 1..1  | string                             |
| Device.property.type             | type       |       | 1..1  | CodeableConcept                    |
| Device.patient                   | patient    | S     | 1..1  | Reference(US Core Patient Profile) |


#### Example Device Resource

An example mapping of a device resource is shown below:

<pre>
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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: udi-1</p><p><b>meta</b>: </p><h3>UdiCarriers</h3><table class=\"grid\"><tr><td>-</td><td><b>CarrierHRF</b></td></tr><tr><td>*</td><td>(01)09504000059118(17)141120(10)7654321D(21)10987654d321</td></tr></table><p><b>status</b>: active</p><p><b>type</b>: Coated femoral stem prosthesis, modular <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '468063009' = 'Coated femoral stem prosthesis, modular (physical object)', given as 'Coated femoral stem prosthesis, modular'})</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p></div>"
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
</pre>



[Next Page - US Core DiagnosticReport for Laboratory Results Reporting](USCoreDiagnosticReportforLaboratoryResultsReporting.html)
