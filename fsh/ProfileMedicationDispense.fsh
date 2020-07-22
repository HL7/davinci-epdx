Profile:        PdexMedicationDispense
Parent:         MedicationDispense
Id:             pdex-medicationdispense
Title:          "PDex MedicationDispense"
Description:    "Prescription Medications dispensed by a pharmacy to a health plan member and paid for in full, or in part, by the health plan"
* subject 1..1
* subject only Reference(Patient)
* status  1..1
* status  ^short = "preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown"
* status  from http://hl7.org/fhir/ValueSet/medicationdispense-status (required)

* supportingInformation 0..*
* supportingInformation only Reference(Resource)
* supportingInformation ^short = """
                Information that supports the dispensing of the medication. Reference any US Core, HRex or PDex profile
                """

* performer 0..*
* performer only BackboneElement
* performer ^short = "Who performed the dispense event"
* performer.function 0..1
* performer.function only CodeableConcept
* performer.function ^short = "Trial fill, partial fill, emergency fill, etc."
* performer.function from http://hl7.org/fhir/ValueSet/medicationdispense-performer-function (example)
* performer.actor 1..1
* performer.actor only Reference(us-core-practitioner | us-core-practitionerrole | us-core-organization | pdex-device)
* performer.actor ^short = "Individual or device performing the dispense"

* location 0..1
* location only Reference(us-core-location)

* authorizingPrescription 0..*
* authorizingPrescription only Reference(us-core-medicationrequest)

* type 0..1
* type only CodeableConcept
* type ^short = "Trial fill, partial fill, emergency fill, etc."
* type from http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType (example)

* quantity 0..1
* quantity only SimpleQuantity
* quantity ^short = "Amount dispensed"

* daysSupply 0..1
* daysSupply only SimpleQuantity
* daysSupply ^short = "Amount of medication expressed as a timing amount"

* receiver 0..*
* receiver only Reference(us-core-patient | us-core-practitioner)
* receiver ^short = "Who collected the medication"

* note 0..*
* note only Annotation
* note ^short = "Information about the dispense"


