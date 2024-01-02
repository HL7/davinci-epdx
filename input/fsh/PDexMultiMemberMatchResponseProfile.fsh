Profile: PDexMultiMemberMatchResponseParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-out
Title: "PDex $multi-member-match response"
Description: "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system"
// * contained 0..*
// * contained only Patient
* parameter 1..3 
* parameter MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    ResourceIdentifier 0..1 MS and
    NoMatch 0..1 MS and
    ConsentConstraint 0..1 MS
* parameter[ResourceIdentifier]    
  * name = "ResourceIdentifier" (exactly)
  * name MS
  * resource 0..1 
  * resource MS
  * resource only PDexMemberMatchGroup
* parameter[NoMatch]
  * name = "NoMatch" (exactly)
  * name MS
  * resource 0..1 
  * resource MS
  * resource only PDexMemberNoMatchGroup
* parameter[ConsentConstraint]
  * name = "ConsentConstraint" (exactly)
  * name MS
  * resource 0..1 
  * resource MS
  * resource only PDexMemberNoMatchGroup
 