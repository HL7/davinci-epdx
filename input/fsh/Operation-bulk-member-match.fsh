Instance: BulkMemberMatch
InstanceOf: OperationDefinition
Usage: #definition
// Id: bulk-member-match
Title: "PDex Bulk Member Match Operation"
Description: "Bulk Member Match Operation"
* experimental = true
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/bulk-member-match"
* version = "2.1.0"
* name = "BulkMemberMatch"
* status = #active
* kind     = #operation
* code     = #bulk-member-match
* system   = false
* type     = true
* instance = false
* date = "2025-05-14T21:28:59+02:00"
* publisher = "HL7 International / Financial Management"
* inputProfile  = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
* outputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"

// // **Step 1: slice parameter by name**
// * parameter ^slicing.discriminator[0].type = #value
// * parameter ^slicing.discriminator[0].path = "name"
// * parameter ^slicing.rules = #open
//
// // **Step 2: declare your slices**
// * parameter contains
//     MemberBundle 1..* and
//     MatchedMembers 0..1 and
//     NonMatchedMembers 0..1 and
//     ConsentConstrainedMembers 0..1
//
// // **Step 3: now you can assign each slice’s properties**
// * parameter[MemberBundle].name             = #MemberBundle
// * parameter[MemberBundle].use              = #in
// * parameter[MemberBundle].min              = 1
// * parameter[MemberBundle].max              = "*"
// * parameter[MemberBundle].type             = #Parameters
// * parameter[MemberBundle].targetProfile    = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
// * parameter[MemberBundle].documentation    = "Input bundle of member info"
//
// * parameter[MatchedMembers].name           = #MatchedMembers
// * parameter[MatchedMembers].use            = #out
// * parameter[MatchedMembers].type           = #Reference
// * parameter[MatchedMembers].targetProfile  = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PDexMemberMatchGroup"
//
// * parameter[NonMatchedMembers].name        = #NonMatchedMembers
// * parameter[NonMatchedMembers].use         = #out
// * parameter[NonMatchedMembers].type        = #Reference
// * parameter[NonMatchedMembers].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PDexMemberNoMatchGroup"
//
// * parameter[ConsentConstrainedMembers].name        = #ConsentConstrainedMembers
// * parameter[ConsentConstrainedMembers].use         = #out
// * parameter[ConsentConstrainedMembers].type        = #Reference
// * parameter[ConsentConstrainedMembers].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PDexMemberNoMatchGroup"
