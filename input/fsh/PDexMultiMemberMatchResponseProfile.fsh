// Profile: PDexMultiMemberMatchResponseParameters
// Parent: Parameters
// Id: pdex-parameters-multi-member-match-bundle-out
// Title: "PDex $multi-member-match response"
// Description: "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system"
// // * contained 0..*
// // * contained only Patient
// * ^experimental = true
// * parameter 1..3
// * parameter MS
//   * ^slicing.discriminator.type = #value
//   * ^slicing.discriminator.path = "name"
//   * ^slicing.rules = #closed
//
// // Only include the actual parameters used in OperationDefinition
// * parameter contains
//     MatchedMembers 1..1 MS and
//     NonMatchedMembers 0..1 MS and
//     ConsentConstrainedMembers 0..1 MS
//
// * parameter[MatchedMembers]
//   * name = "MatchedMembers" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberMatchGroup
//
// * parameter[NonMatchedMembers]
//   * name = "NonMatchedMembers" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberNoMatchGroup
//
// * parameter[ConsentConstrainedMembers]
//   * name = "ConsentConstrainedMembers" (exactly)
//   * name MS
//   * resource 0..1
//   * resource MS
//   * resource only PDexMemberNoMatchGroup

Profile: PDexMultiMemberMatchResponseParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-out
Title: "PDex $multi-member-match response"
Description: "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system"
* ^experimental = true

// 1) Force the overall parameters count
* parameter 1..3

// 2) Slice .parameter by name, and close it so *only* your three slices exist
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed

// 3) Define your three slices
* parameter contains MatchedMembers 1..1
* parameter[MatchedMembers].value[x] 0..0
* parameter[MatchedMembers].name = "MatchedMembers"
* parameter[MatchedMembers].resource only PDexMemberMatchGroup

* parameter contains NonMatchedMembers 0..1
* parameter[NonMatchedMembers].name = "NonMatchedMembers"
* parameter[NonMatchedMembers].value[x] 0..0
* parameter[NonMatchedMembers].resource only PDexMemberNoMatchGroup

* parameter contains ConsentConstrainedMembers 0..1
* parameter[ConsentConstrainedMembers].name = "ConsentConstrainedMembers"
* parameter[ConsentConstrainedMembers].value[x] 0..0
* parameter[ConsentConstrainedMembers].resource only PDexMemberNoMatchGroup

