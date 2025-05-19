// Instance: bulk-member-match
// InstanceOf: OperationDefinition
// Title: "PDex Bulk Member Match Operation"
// Usage: #definition
// * url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/bulk-member-match"
// * name = "BulkMemberMatch"
// * title = "PDex Bulk Member Match Operation"
// * status = #active
// * kind = #operation
// * description = "The **$bulk-member-match** operation that can be invoked by either a payer or an EHR or other system, allows one health plan to retrieve a unique identifier for a group resource containing matched members from another health plan using a member's demographic, coverage information with an accompanying consent record.  This identifier can then be used to perform subsequent queries and operations. Health Plans implementing a deterministic match will require a match on member id or subscriber id at a minimum (i.e. A pure demographic match will not be supported by such implementations.)."
// * affectsState = true
// * code = #bulk-member-match
// * resource = #Group
// // * resource[0] = "Group"
// * system = false
// * type = true
// * instance = false
// * inputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
// * outputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
// * parameter[0]
// //  * insert parameter(#MemberBundle, #in, 1, "1", #Reference, "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in", "Member Bundle includes Patient, Coverage to Match, optional Coverage, and Consent.")
// // # * insert parameter(#MemberPatient, #in, 1, "1", #Resource, "Parameter submitted by the new plan **SHALL** contain US Core Patient containing member demographics.")
// // * parameter[0].name = #MatchRequest
// * parameter[0].name = #MemberBundle
// * parameter[0].use = #in
// * parameter[0].min = 1
// * parameter[0].max = "1"
// * parameter[0].type = #Reference
// * parameter[0].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
// * parameter[0].documentation = "Bundle of Member information. Repeat bundle for each member to be submitted to bulk member-match, as defined in PDex $multi-member-match request."
// // //  * insert parameter(#MemberBundle, #in, 1,"1", #Resource, "Bundle of Member information. Repeat bundle for each member to be submitted to bulk member-match, as defined in pdex-parameters-multi-member-match-bundle-in.")
// // * parameter[0].part[0]
// //   * insert parameter(#MemberPatient, #in, 1, "1", #Resource, "Parameter submitted by the new plan **SHALL** contain US Core Patient containing member demographics.")
// //   * referencedFrom[0]
// //     * source = "CoverageToMatch"
// //     * sourceId = "beneficiary"
// //   * referencedFrom[+]
// //     * source = "CoverageToLink"
// //     * sourceId = "beneficiary"
// // * parameter[+].part[+]
// //   * insert parameter(#Consent, #in, 1, "1", #Resource, "Consent held by the system seeking the match that grants permission to access the patient information information on the system for whom a patient is sought.")
// // * parameter[=].part[+]
// //   * insert parameter(#CoverageToMatch, #in, 1, "1", #Resource, "Parameter that identifies the coverage to be matched by the receiving payer.  It contains the coverage details of health plan coverage provided by the member\, typically from their health plan coverage card.")
// // * parameter[=].part[+]
// //   * insert parameter(#CoverageToLink, #in, 0, "1", #Resource, "Parameter that identifies the coverage information of the member as they are known by the requesting payer.  This information allows the matching payer to link their member coverage information to that of the requesting payer to ease subsequent exchanges\, including evaluating authorization to share information in subsequent queries.  This parameter is optional as this operation may be invoked by non-payer systems.  However\, it is considered 'mustSupport'.  If the client invoking the operation is a payer\, they SHALL include their coverage information for the member when invoking the operation.")
// // * parameter[=].part[+]
// //   * insert parameter(#MemberIdentifier, #out, 1, "1", #Identifier, "This is the member identifier information for the patient as known by the server that is the target of the operation.")
//
// * parameter[1]
// //  * insert parameter(#ResourceIDentifier , #out , 0 , "1", #Parameters, "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out", "Bundle of Groups returned from Member Match Operation. There can be up to three groups, Matched and Not-Matched and ConsentConstrained.")
// // * parameter[=].name = #MatchResponse
// * parameter[=].name = #ResourceIdentifier
// * parameter[=].use = #out
// * parameter[=].min = 1
// * parameter[=].max = "1"
// * parameter[=].type = #Parameters
// * parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
// * parameter[=].documentation = "Bundle of Groups returned from Member Match Operation. There can be up to three (3) groups: Matched, Not-Matched and ConsentConstrained."
// // * parameter[=].name = #ResourceIdentifier
// //  parameter[=].resource = PDexMemberMatchGroup
// // * parameter[=].use = #out
// // * parameter[=].min = 0
// // * parameter[=].max = "1"
// // * parameter[=].type = #Parameters
// // * parameter[=].documentation = "A group resource representing matched members."
// // * parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
// // * parameter[=].documentation = "Bundle of Groups returned from Member Match Operation. There can be up to three (3) groups: Matched, Not-Matched and ConsentConstrained."
//
// * parameter[+]
// //	* insert parameter(#ResourceIdentifier, #out, 0, "1", #Parameters, "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out", "Bundle of Groups returned from Member Match Operation. There can be up to three groups, Matched, Not-Matched and ConsentConstrained.")
// // * parameter[=].name = #NoMatch
// * parameter[=].name = #ResourceIdentifier
// // * parameter[=].resource = PDexMemberNoMatchGroup
// * parameter[=].use = #out
// * parameter[=].min = 0
// * parameter[=].max = "1"
// * parameter[=].type = #Parameters
// * parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
// * parameter[=].documentation = "A group resource representing Non-Matched members."
//
// * parameter[+]
// //	* insert parameter(#PDexMemberNoMatchGroup, #out, 0, "1", #Parameters, "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out", "A group resource representing members that may have matched but Payer is unable to comply with Consent conditions.")
// * parameter[=].name = #PDexMemberNoMatchGroup
// //  * parameter[=].name = #ConsentConstraint
// // * parameter[=].resource = PDexMemberNoMatchGroup
// * parameter[=].use = #out
// * parameter[=].min = 0
// * parameter[=].max = "1"
// * parameter[=].type = #Parameters
// * parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
// * parameter[=].documentation = "A group resource representing members that may have matched but Payer is unable to comply with Consent conditions."
//

Instance: bulk-member-match
InstanceOf: OperationDefinition
Title: "PDex Bulk Member Match Operation"
Usage: #definition
Description: """
The **$bulk-member-match** operation that can be invoked by either a payer or an EHR or other system, allows one health plan to retrieve a unique identifier for a group resource containing matched members from another health plan using a member's demographic, coverage information with an accompanying consent record. This identifier can then be used to perform subsequent queries and operations. Health Plans implementing a deterministic match will require a match on member id or subscriber id at a minimum (i.e. A pure demographic match will not be supported by such implementations.).
"""
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/bulk-member-match"
* version = "2.1.0"
* name = "BulkMemberMatch"
* status = #active
* kind = #operation
* date = "2025-05-14T21:28:59+02:00"
* publisher = "HL7 International / Financial Management"
* contact[+].name = "HL7 International / Financial Management"
* contact[=].telecom[0].system = #url
* contact[=].telecom[0].value = "http://www.hl7.org/Special/committees/fm"
* contact[=].telecom[1].system = #email
* contact[=].telecom[1].value = "fm@lists.HL7.org"
* contact[+].name = "Mark Scrimshire (mark.scrimshire@onyxhealth.io)"
* contact[=].telecom[0].system = #email
* contact[=].telecom[0].value = "mailto:mark.scrimshire@onyxhealth.io"
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #US
* jurisdiction[0].coding[0].display = "United States of America"
* affectsState = true
* code = #bulk-member-match
* resource[0] = #Group
* system = false
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
* outputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"

* parameter[+].name = #MemberBundle
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Parameters conforming to PDex $multi-member-match request"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"

* parameter[+].name = #MatchedMembers
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle of Groups for matched members"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"

* parameter[+].name = #NonMatchedMembers
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle of Groups for non-matched members"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"

* parameter[+].name = #ConsentConstrainedMembers
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle of Groups for consent-constrained matches"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"
