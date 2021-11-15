Profile:        PdexDevice
Parent:         Device
Id:             pdex-device
Title:          "PDex Device"
Description:    "The PDex Device profile is provided to enable payers to record information about devices used by a member that may not have a UDI number."
* insert PdexStructureDefinitionContent

* distinctIdentifier 0..1
* distinctIdentifier ^short = "The distinct identification string"
* text  0..1
* text  ^short = "Text summary of the resource, for human interpretation"
* udiCarrier  0..1 MS
* udiCarrier.deviceIdentifier  1..1 MS
* udiCarrier.deviceIdentifier  ^short = "Mandatory fixed portion of UDI"
* udiCarrier.carrierAIDC  0..1 MS
* udiCarrier.carrierAIDC  ^short = "UDI Machine Readable Barcode String"
* udiCarrier.carrierHRF	 0..1 MS
* udiCarrier.carrierHRF  ^short = "UDI Human Readable Barcode String"
* status 0..1 MS
* status from http://hl7.org/fhir/ValueSet/device-status

* distinctIdentifier  0..1 MS
* distinctIdentifier  ^short = "The distinct identification string"

* expirationDate  0..1 MS
* expirationDate  ^short = "Date and time of expiry of this device (if applicable)"
* lotNumber  0..1 MS
* serialNumber  0..1 MS
* type  1..1 MS
* type  from http://hl7.org/fhir/ValueSet/device-kind (extensible)
* patient  1..1 MS
* patient only Reference(us-core-patient)
* url  0..1 MS

// Hicpics code? as extension.
