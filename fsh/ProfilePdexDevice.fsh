Profile:        PdexDevice
Parent:         us-core-implantable-device
Id:             pdex-device
Title:          "PDex Device"
Description:    """ The PDex Device profile is provided to enable payers to record information about
devices used by a member that may not have a UDI number.
"""
* status  0..1
* status  ^short = "active | inactive | entered-in-error | unknown"
* status  from http://hl7.org/fhir/ValueSet/device-status (required)
* distinctIdentifier 0..1
* distinctIdentifier ^short = "The distinct identification string"
* udiCarrier  0..1
* udiCarrier.deviceIdentifier  1..1
* udiCarrier.carrierAIDC  0..1
* udiCarrier.carrierHRF	 0..1
* distinctIdentifier  0..1
* manufactureDate  0..1
* expirationDate  0..1
* lotNumber  0..1
* serialNumber  0..1
* type  1..1
* type  from http://hl7.org/fhir/ValueSet/device-kind (extensible)
* patient  1..1
* patient only Reference(us-core-patient)
