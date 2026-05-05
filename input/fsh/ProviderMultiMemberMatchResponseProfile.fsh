// Provider Multi Member Match Response Profile
// This profile defines the response to a provider-initiated bulk member match request.
// The response structure is similar to the payer-to-payer version but contextually represents:
// - Matched members: Members successfully matched and authorized for provider access
// - Non-matched members: Members not found in payer's system
// - Consent-constrained members: Members who have opted out of Provider Access API

Profile: ProviderMultiMemberMatchResponseParameters
Parent: Parameters
Id: provider-parameters-multi-member-match-bundle-out
Title: "Provider $multi-member-match Response"
Description: "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system in response to a provider request. The response indicates which members were successfully matched and authorized for provider access, which were not found, and which have opted out of Provider Access API data sharing."
* ^experimental = true
* ^version = "2.2.0"
* ^status = #draft

// 1) Force the overall parameters count (1-3 possible response groups)
* parameter 1..3
* parameter ^short = "Provider member match response groups"
* parameter ^definition = "Response groups categorizing the results of the provider bulk member match request: matched members (authorized for access), non-matched members (not found), and consent-constrained members (opted out of Provider Access)."

// 2) Slice .parameter by name, and close it so *only* these three slices exist
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed

// 3) Define the three response slices

// Matched Members - Successfully matched and authorized for provider access
* parameter contains MatchedMembers 1..1
* parameter[MatchedMembers].name = "MatchedMembers"
* parameter[MatchedMembers].name ^short = "Successfully matched and authorized members"
* parameter[MatchedMembers].name ^definition = "Group of members who were successfully matched in the payer's system and are authorized for provider access based on the provider's treatment attestation."
* parameter[MatchedMembers].value[x] 0..0
* parameter[MatchedMembers].resource 1..1
* parameter[MatchedMembers].resource only ProviderMemberMatchGroup
* parameter[MatchedMembers].resource ^short = "Group of matched members"
* parameter[MatchedMembers].resource ^definition = "A Group resource containing references to successfully matched member records. Each member entry includes a reference to the payer's Patient resource and an extension containing the submitted member demographics from the provider."
* parameter[MatchedMembers].resource ^comment = "This group represents members for whom the payer has successfully matched the provider's submitted demographics to a member in their system, verified the treatment attestation is valid, and determined the member has not opted out of Provider Access API. The provider can now use these matched Patient IDs to request bulk data access."

// Non-Matched Members - Members not found in payer's system
* parameter contains NonMatchedMembers 0..1
* parameter[NonMatchedMembers].name = "NonMatchedMembers"
* parameter[NonMatchedMembers].name ^short = "Members not found"
* parameter[NonMatchedMembers].name ^definition = "Group of members who could not be matched in the payer's system. This may occur if the patient demographics are incorrect, the member is not currently enrolled with the payer, or the coverage information is invalid."
* parameter[NonMatchedMembers].value[x] 0..0
* parameter[NonMatchedMembers].resource 0..1
* parameter[NonMatchedMembers].resource only ProviderMemberNoMatchGroup
* parameter[NonMatchedMembers].resource ^short = "Group of non-matched members"
* parameter[NonMatchedMembers].resource ^definition = "A Group resource containing references to the submitted member demographics that could not be matched to any member in the payer's system."
* parameter[NonMatchedMembers].resource ^comment = "This group helps providers identify which member match requests failed. Providers may need to verify the patient's insurance information, confirm coverage is active, or check for data entry errors in the submitted demographics or coverage details."

// Consent-Constrained Members - Members who opted out of Provider Access
* parameter contains ConsentConstrainedMembers 0..1
* parameter[ConsentConstrainedMembers].name = "ConsentConstrainedMembers"
* parameter[ConsentConstrainedMembers].name ^short = "Members who opted out of Provider Access"
* parameter[ConsentConstrainedMembers].name ^definition = "Group of members who were successfully matched but have exercised their right to opt out of Provider Access API data sharing. These members have explicitly denied permission for providers to access their data through this API."
* parameter[ConsentConstrainedMembers].value[x] 0..0
* parameter[ConsentConstrainedMembers].resource 0..1
* parameter[ConsentConstrainedMembers].resource only MemberOptOut
* parameter[ConsentConstrainedMembers].resource ^short = "Group of members who opted out"
* parameter[ConsentConstrainedMembers].resource ^definition = "A Group resource conforming to the [Member Opt-Out Group profile](StructureDefinition-pdex-member-opt-out.html) containing references to members who have opted out of Provider Access API data sharing. The payer has successfully matched these members but cannot provide access due to the member's consent preferences."
* parameter[ConsentConstrainedMembers].resource ^comment = "Members in this group have affirmatively opted out of sharing their data with providers through the Provider Access API. This is distinct from non-matched members - these members exist in the payer's system and were matched, but have exercised their privacy rights to prevent data sharing. The Member Opt-Out Group profile preserves the type-level distinction between opt-out and no-match outcomes (which use the separate Provider Member No Match Group profile). Providers should not attempt to access data for these members through the Provider Access API and should use traditional methods (e.g., requesting records directly from the patient or other providers) if access to this information is needed for treatment."


// Supporting Group Profiles for Provider Responses

// ------------------------------
// Provider Successful Match Group Profile
Profile: ProviderMemberMatchGroup
Parent: Group
Id: pdex-provider-member-match
Title: "Provider Member Match Group"
Description: "A Group List created by the Payer to enable Provider Access API access by providers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters from the provider's match request."
* ^experimental = true
* ^version = "2.2.0"
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* contained 0..*
* contained ^short = "Submitted member demographics from provider"
* contained ^definition = "Contains the Patient resources submitted by the provider in the match request, allowing the payer to return both the matched Patient ID and the original submitted demographics."

* type = #person
* type ^short = "Group of persons (patients)"

* actual = true
* actual ^short = "Actual group (not definitional)"

* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* code ^short = "Match result code"
* code ^definition = "Code indicating this is a successful match group"

* managingEntity 1..1 MS
* managingEntity ^short = "Payer managing this group"
* managingEntity ^definition = "Reference to the payer organization that performed the member match and is managing access"

* identifier 0..* MS
* identifier ^short = "Provider organization identifier"
* identifier ^definition = "Identifier of the provider organization requesting access (typically NPI)"

* characteristic MS
* characteristic ^short = "Match characteristics"
* characteristic.code MS
* characteristic.code.coding from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code.coding.code = $MemberMatchResult#match
* characteristic.valueReference MS
* characteristic.valueReference ^short = "Provider organization reference"
* characteristic.valueReference ^definition = "Reference or identifier of the provider organization requesting member access"
* characteristic.exclude = false
* characteristic.exclude ^short = "Include these characteristics"
* characteristic.exclude ^comment = "Exclude is set to False to indicate these characteristics should be included in the match"
* characteristic.period MS
* characteristic.period ^short = "Period when match was performed"
* characteristic.period ^comment = "Enter date match performed (i.e., current date) as Period.start"

* member 1..* MS
* member ^short = "Matched members"
* member.entity MS
* member.entity ^short = "Reference to matched patient"
* member.entity ^definition = "Reference to the payer's Patient resource for the matched member"
* member.entity.extension contains MatchParameters named matchedMember 0..1 MS
* member.entity.extension[matchedMember] ^short = "Submitted member demographics"
* member.entity.extension[matchedMember] ^definition = "Extension containing a reference to the patient demographics submitted by the provider in the match request"
* member.entity.extension[matchedMember] ^comment = "Add the patient record from the successful member match for an individual member in the provider's match request (Patient Demographics). This allows the provider to correlate their submitted data with the payer's matched Patient ID."

// ------------------------------
// Provider No Match Group Profile
Profile: ProviderMemberNoMatchGroup
Parent: Group
Id: pdex-provider-member-no-match
Title: "Provider Member No Match Group"
Description: "A Group List created by the Payer to provide information back to a requesting provider about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics from the provider's request. The match may have failed for one of two reasons: a) No match on member (member not found in payer's system), or b) Matched but unable to comply due to member's opt-out of Provider Access API."
* ^experimental = true
* ^version = "2.2.0"
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* contained 0..*
* contained ^short = "Submitted member demographics from provider"
* contained ^definition = "Contains the Patient resources submitted by the provider that failed to match or are consent-constrained"

* type = #person
* type ^short = "Group of persons (patients)"

* actual = true
* actual ^short = "Actual group (not definitional)"

* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* code ^short = "Match result code"
* code ^definition = "Code indicating the type of match failure: nomatch or consentconstraint"

* managingEntity 1..1 MS
* managingEntity ^short = "Payer managing this group"
* managingEntity ^definition = "Reference to the payer organization that performed the member match"

* identifier 0..* MS
* identifier ^short = "Provider organization identifier"
* identifier ^definition = "Identifier of the provider organization that submitted the request (typically NPI)"

* member 1..* MS
* member ^short = "Non-matched or consent-constrained members"
* member.entity MS
* member.entity ^short = "Reference to submitted patient demographics"
* member.entity ^definition = "Reference to the patient demographics submitted by the provider (typically a contained resource)"
* member.entity ^comment = "Enter using a relative reference to the failed patient record (e.g., #patient-1)"
* member.entity.extension contains MatchParameters named nonMatchedMember 0..1 MS
* member.entity.extension[nonMatchedMember] ^short = "Submitted member demographics"
* member.entity.extension[nonMatchedMember] ^definition = "Extension containing a reference to the patient demographics submitted by the provider that failed to match or are consent-constrained"
* member.entity.extension[nonMatchedMember] ^comment = "Add the patient record from the failed member match request (Patient Demographics) to help the provider identify which submissions were unsuccessful."
