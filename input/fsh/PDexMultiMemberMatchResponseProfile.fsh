Profile: PDexMultiMemberMatchResponseParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-out
Title: "PDex $multi-member-match response"
Description: "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system"
// * contained 0..*
// * contained only Patient
* ^experimental = true
* parameter 1..3
* parameter MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
// * parameter contains
//     ResourceIdentifier 0..1 MS and
//     NoMatch 0..1 MS and
//     ConsentConstraint 0..1 MS
// * parameter[ResourceIdentifier]
//   * name = "ResourceIdentifier" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberMatchGroup
// * parameter[NoMatch]
//   * name = "NoMatch" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberNoMatchGroup
// * parameter[ConsentConstraint]
//   * name = "ConsentConstraint" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberNoMatchGroup

// Only include the actual parameters used in OperationDefinition
* parameter contains
    MatchedMembers 1..1 MS and
    NonMatchedMembers 0..1 MS and
    ConsentConstrainedMembers 0..1 MS

* parameter[MatchedMembers]
  * name = "MatchedMembers" (exactly)
  * name MS
  * resource 0..1
  * resource MS
  * resource only PDexMemberMatchGroup

* parameter[NonMatchedMembers]
  * name = "NonMatchedMembers" (exactly)
  * name MS
  * resource 0..1
  * resource MS
  * resource only PDexMemberNoMatchGroup

* parameter[ConsentConstrainedMembers]
  * name = "ConsentConstrainedMembers" (exactly)
  * name MS
  * resource 0..1
  * resource MS
  * resource only PDexMemberNoMatchGroup
