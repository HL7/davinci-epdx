[Previous Page - US Core ImplantableDevice](USCoreImplantableDevice.html)
 profile sets minimum expectations for the Observation resource to record, search, and fetch laboratory test results associated with a patient/member. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the LaboratoryResultObservation resource are:

{% include style_insert_table_blue.html %}

| R4 Element                          | Name                | Cardinality | Type                               |
|-------------------------------------|---------------------|:-----------:|------------------------------------|
|  Device.udiCarrier                  |  udiCarrier         |     0..1    | BackboneElement                    |
|  Device.udiCarrier.deviceIdentifier |  deviceIdentifier   |     1..1    | string                             |
|  Device.udiCarrier.carrierAIDC      |  carrierAIDC        |     0..1    | base64Binary                       |
|  Device.udiCarrier.carrierHRF       |  carrierHRF         |     0..1    | string                             |
|  Device.distinctIdentifier          |  distinctIdentifier |     0..1    | string                             |
|  Device.manufactureDate             |  manufactureDate    |     0..1    | dateTime                           |
|  Device.expirationDate              |  expirationDate     |     0..1    | dateTime                           |
|  Device.lotNumber                   |  lotNumber          |     0..1    | string                             |
|  Device.serialNumber                |  serialNumber       |     0..1    | string                             |
|  Device.deviceName.name             |  name               |     1..1    | string                             |
|  Device.deviceName.type             |  type               |     1..1    | code                               |
|  Device.type                        |  type               |     1..1    | CodeableConcept                    |
|  Device.specialization.systemType   |  systemType         |     1..1    | CodeableConcept                    |
|  Device.version.value               |  value              |     1..1    | string                             |
|  Device.property.type               |  type               |     1..1    | CodeableConcept                    |
|  Device.patient                     |  patient            |     1..1    | Reference(US Core Patient Profile) |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Laboratory Results Profile

Link to urine specific gravity laboratory result: [https://hl7.org/fhir/us/core/Observation-usg.html](https://hl7.org/fhir/us/core/Observation-usg.html)


[Next Page - US Core Location](USCoreLocation.html)
