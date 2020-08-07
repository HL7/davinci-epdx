/*
  Extensions for Payer Data Exchange
*/

Extension: ProvenanceConversionFrom
Title: "An attribute to describe the data conversion performed"
Description: "Attributes that identify the source record format from which data in the referenced resources was derived"
Mixins: PdexStructureDefinitionContent

  * extension contains
  source 0..1
  * extension[source] ^short = "Source record format from which data was derived"
  * extension[source].value[x] only CodeableConcept
  * extension[source].valueCodeableConcept from http://hl7.org/fhir/ValueSet/ValueSet-ProvenanceFormatConversionSourceVS (extensible)
