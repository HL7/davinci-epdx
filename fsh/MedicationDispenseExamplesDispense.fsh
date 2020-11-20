Instance: ExampleMedicationDispenseClaim
InstanceOf: pdex-medicationdispense
Description: "Example of a MedicationDispense from a Claim"
  * id = "1000001"
  * meta.versionId = "1"
  * meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
//  * extension[refillNum].id = "1"
  * extension[refillNum].valueQuantity.value = 1
  * status = http://terminology.hl7.org/CodeSystem/medicationdispense-status#completed
  * medicationCodeableConcept = $FDANationalDrugCodeCS#54458-872-10
  * subject.reference = "Patient/1"
  * performer.actor.reference = "Practitioner/4"
  * location.reference = "Location/5"
  * type =  http://terminology.hl7.org/CodeSystem/v3-ActCode#RF
  * quantity.value = 60
  * daysSupply.value = 30


//Instance: ExampleMedicationDispenseRefill
//InstanceOf: DispenseRefill
//Description: "Example of a MedicationDispense Refill Extension"
//* id = "1"
//* url = "refillNum"
//* valueQuantity = 1
