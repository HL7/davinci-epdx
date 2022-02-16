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
Description: "Attribute that identifies the refill number of a prescription. e.g., 0, 1, 2, etc."
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

Extension: LevelOfServiceCode
Id: extension-levelOfServiceCode
Description: "A code specifying the level of service being requested (UM06)"
* value[x] only CodeableConcept
* valueCodeableConcept from https://valueset.x12.org/x217/005010/request/2000E/UM/1/06/00/1338 (required)
* valueCodeableConcept ^binding.description = "Codes specifying the level of service rendered. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."


Extension: ReviewAction
Id: extension-reviewAction
Description: "The details of the review action that is necessary for the authorization."
* extension contains ReviewActionCode named code 0..1 and number 0..1 and reasonCode 0..* and secondSurgicalOpinionFlag 0..1
* extension[code] ^short = "Healthcare Services Outcome"
* extension[number].value[x] only string
* extension[number] ^short = "Item Level Review Number"
* extension[reasonCode].value[x] only CodeableConcept
* extension[reasonCode].valueCodeableConcept from X12278ReviewDecisionReasonCode (required)
* extension[reasonCode] ^short = "Explanation of the review denial or partial approval"
* extension[secondSurgicalOpinionFlag].value[x] only boolean
* extension[secondSurgicalOpinionFlag] ^short = "Whether a second surgical opinion is need for approval"

Extension: ReviewActionCode
Id: extension-reviewActionCode
Description: "The code describing the result of the review."
* value[x] only CodeableConcept
* valueCodeableConcept from https://valueset.x12.org/x217/005010/response/2000F/HCR/1/01/00/306 (required)
* valueCodeableConcept ^binding.description = "Codes indicating type of action. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."
