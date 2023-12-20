Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
* parameter 1..1 MS

  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains ResourceIdentifier 1..1 MS
* parameter[ResourceIdentifier]
  * name = "ResourceIdentifier" (exactly)
  * name MS
  * valueReference 1..1 MS
  * valueReference only Reference(Patient or Group)
    * identifier 1..1 MS
