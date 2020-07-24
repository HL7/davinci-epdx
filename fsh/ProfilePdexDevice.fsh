Profile:        PdexDevice
Parent:         Device
Id:             pdex-device
Title:          "PDex Device"
Description:    """ The PDex Device profile is provided to enable payers to record information about
non-implantable devices used by a member. A wheelchair or walking stick are examples of non-implantable devices.
"""
* status  0..1
* status  ^short = "active | inactive | entered-in-error | unknown"
* status  from http://hl7.org/fhir/ValueSet/device-status (required)
* distinctIdentifier 0..1
* distinctIdentifier ^short = "The distinct identification string"
