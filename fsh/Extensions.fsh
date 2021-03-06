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


