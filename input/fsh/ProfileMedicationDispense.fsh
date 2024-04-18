Profile: PdexMedicationDispense
Parent: USCoreMedicationDispenseProfile|6.1.0
Id: pdex-medicationdispense
Title: "PDex MedicationDispense"
Description: "Prescription Medications dispensed by a pharmacy to a health plan member and paid for in full, or in part, by the health plan"
* insert PdexStructureDefinitionContent
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* subject 1..1 MS
* subject only Reference(us-core-patient)
* subject ^short = "The patient who is prescribed the medication"

* status  1..1 MS
* status  ^short = "completed"
* status  from http://hl7.org/fhir/ValueSet/medicationdispense-status (required)

* category 0..1
* category ^short = "Type of dispense action"
* category from http://hl7.org/fhir/ValueSet/medicationdispense-category

* medicationCodeableConcept 1..1
* medicationCodeableConcept ^short = "Billing, service, product, or drug code"
* medicationCodeableConcept from http://hl7.org/fhir/us/davinci-pdex/ValueSet/FDANationalDrugCode

* supportingInformation 0..*
* supportingInformation only Reference(Resource)
* supportingInformation ^short = "Information that supports the dispensing of the medication. Reference any US Core, HRex or PDex profile."

* performer 0..*
* performer only BackboneElement
* performer ^short = "Who performed the dispense event"
//* performer.function 0..1
//* performer.function only CodeableConcept
//* performer.function ^short = "Trial fill, partial fill, emergency fill, etc."
//* performer.function from http://hl7.org/fhir/ValueSet/medicationdispense-performer-function (example)
* performer.actor 1..1
* performer.actor only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)
* performer.actor ^short = "Individual or device performing the dispense"

* location 0..1
* location only Reference(us-core-location)


* authorizingPrescription 0..*
* authorizingPrescription only Reference(us-core-medicationrequest)

* type 0..1
* type only CodeableConcept
* type ^short = "Trial fill, partial fill, emergency fill, etc."
* type from http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType

* quantity 0..1
* quantity only SimpleQuantity
* quantity ^short = "Billing, service, product, or drug code"

* daysSupply 0..1
* daysSupply only SimpleQuantity
* daysSupply ^short = "Medication expressed as a timing amount."

* extension contains DispenseRefill named refillNum 0..1
* extension[refillNum] ^short = "Refill number of this prescription"
* extension[refillNum].valueQuantity only Quantity


// * receiver 0..*
// * receiver only Reference(us-core-patient | us-core-practitioner)
// * receiver ^short = "Person collecting the medication"

* note 0..*
* note only Annotation
* note ^short = "Information about the dispense"

* substitution 0..1 MS
* substitution.wasSubstituted 1..1 MS
* substitution.wasSubstituted only boolean
