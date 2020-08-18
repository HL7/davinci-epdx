/*
  Extensions for Payer Data Exchange
*/

Extension: ProvenanceConversionFrom
Title: "An attribute to describe the data conversion performed"
Description: "Attributes that identify the source record format from which data in the referenced resources was derived"

* insert PdexStructureDefinitionContent

//  * extension contains
//  source 0..1

  * value[x] ^short = "Source record format from which data was derived"
//  * extension[source].url ProvenancePayerConversionSource
//  * extension[source].value[x] only CodeableConcept
//  * extension[source].valueCodeableConcept from ProvenancePayerConversionSource (extensible)
  * value[x] only CodeableConcept
  * valueCodeableConcept from ProvenancePayerConversionSource (extensible)

/*
Extension for MedicationDispense
*/

Extension: DispenseRefill
Title: "An attribute to express the refill number of a prescription"
Description: "Attribute that identifies the refill number of a prescription. e.g. 0, 1, 2, etc."

* insert PdexStructureDefinitionContent

* extension contains
refillNum 0..1

* extension[refillNum] ^short = "Refill number of this prescription"
* extension[refillNum].valueQuantity only Quantity

