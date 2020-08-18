Profile:        PdexDevice
Parent:         Device
Id:             pdex-device
Title:          "PDex Device"
Description:    """The PDex Device profile is provided to enable payers to record information about
devices used by a member that may not have a UDI number.
"""
* insert PdexStructureDefinitionContent

* distinctIdentifier 0..1
* distinctIdentifier ^short = "The distinct identification string"
* text  0..1
* text  ^short = "Text summary of the resource, for human interpretation"
* udiCarrier  0..1
* udiCarrier.deviceIdentifier  1..1
* udiCarrier.deviceIdentifier  ^short = "Mandatory fixed portion of UDI"
* udiCarrier.carrierAIDC  0..1
* udiCarrier.carrierAIDC  ^short = "UDI Machine Readable Barcode String"
* udiCarrier.carrierHRF	 0..1
* udiCarrier.carrierHRF  ^short = "UDI Human Readable Barcode String"
* distinctIdentifier  0..1
* distinctIdentifier  ^short = "The distinct identification string"
// * manufactureDate  0..1
// * manufactureDate  ^short = "Name of device manufacturer"
// * deviceName 1..*

* expirationDate  0..1
* expirationDate  ^short = "Date and time of expiry of this device (if applicable)"
* lotNumber  0..1
* serialNumber  0..1
* type  1..1
* type  from http://hl7.org/fhir/ValueSet/device-kind (extensible)
* patient  1..1
* patient only Reference(us-core-patient)

// Hicpics code? as extension.
