//
//  Extensions for Payer Data Exchange
//

Extension: ProvenanceSourceFrom
Title: "An attribute to describe the data source a resource was constructed from"
Description: "Attributes that identify the source record format from which data in the referenced resources was derived"

* insert PdexStructureDefinitionContent

//  * extension contains
//  source 0..1

* value[x] ^short = "Source record format from which data was derived"
//  * extension[source].url ProvenancePayerSourceFormat
//  * extension[source].value[x] only CodeableConcept
//  * extension[source].valueCodeableConcept from ProvenancePayerSourceFormat (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept from ProvenancePayerSourceFormat (extensible)

//
//Extension for MedicationDispense
//

Extension: DispenseRefill
Title: "An attribute to express the refill number of a prescription"
Description: "Attribute that identifies the refill number of a prescription. e.g. 0, 1, 2, etc."
* insert PdexStructureDefinitionContent

* value[x] ^short = "Refill number of this prescription"
* value[x] only Quantity

// * extension contains refillNum 0..1

// * extension[refillNum] ^short = "Refill number of this prescription"
// * extension[refillNum].valueSimpleQuantity only SimpleQuantity


Extension: PriorAuthorizationUtilization
Title: "An attribute to express the amount of a service or item that has been utilized"
Description: "Attribute that expresses the amount of an item or service that has been consumed under the current prior authorization."
* insert PdexStructureDefinitionContent

* value[x] ^short = "Amount/Quantity of an item or service that has been consumed/utilized"
* value[x] only Quantity or Ratio

