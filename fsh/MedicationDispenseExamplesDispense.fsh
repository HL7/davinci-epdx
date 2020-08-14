Instance: ExampleMedicationDispenseClaim
InstanceOf: pdex-medicationdispense
Description: "Example of a MedicationDispense from a Claim"
  * id = "1000001"
  * meta.versionId = "1"
  * meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
//  * extension.refillNum.valueQuantity = 1
  * status = http://hl7.org/fhir/ValueSet/medicationdispense-status#completed
  * medicationCodeableConcept = http://hl7.org/fhir/us/carin-bb/ValueSet/FDANationalDrugCode#54458-872-10
  * subject.reference = "Patient/100123"
  * performer.actor.reference = "Practitioner/234543123"
  * location.reference = "Location/876543"
  * type = http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType#RF
  * quantity.value = 60
  * daysSupply.value = 30
