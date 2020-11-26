Instance: ExampleDevice
InstanceOf: pdex-device
Description: "Example of a Device from a Claim"
  * id = "543210"
  * meta.versionId = "1"
  * meta.lastUpdated = "2020-09-28T09:26:23.217+00:00"
  * udiCarrier.deviceIdentifier  = "23366006"
  * status = http://hl7.org/fhir/ValueSet/device-status#active
//  * type = http://hl7.org/fhir/ValueSet/device-kind#23366006
  * type = http://snomed.info/sct#23366006
  * manufacturer = "Motorized Wheelchair Company, Inc."
  * deviceName[0].name = "MotorChairPro"
  * deviceName[0].type = http://hl7.org/fhir/ValueSet/device-nametype#user-friendly-name
  * patient.reference = "Patient/1"

