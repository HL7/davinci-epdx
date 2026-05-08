// Provider-Member-Match Operation
// This operation enables providers to match their patients against a payer's member records
// and identify treatment relationships for bulk data access
Instance: ProviderMemberMatch
InstanceOf: OperationDefinition
Usage: #definition
Title: "PDex Provider-Member-Match Operation"
Description: "Provider-Member-Match Operation enables providers to match patient demographics and coverage information against a payer's member records. The operation returns matched members as a Group resource that can be used with the $davinci-data-export operation for bulk data retrieval. This operation is functionally similar to the Payer-to-Payer Bulk Member Match operation but is designed for provider-initiated requests."
* experimental = true
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/ProviderMemberMatch"
* version = "2.2.0"
* name = "ProviderMemberMatch"
* status = #active
* kind = #operation
* code = #provider-member-match
* resource = #Group
* system = false
* type = true
* instance = false
* date = "2024-12-16T00:00:00Z"
* publisher = "HL7 International / Financial Management"
* comment = "The complete output structure conforms to the [Provider $multi-member-match Response](StructureDefinition-provider-parameters-multi-member-match-bundle-out.html) Parameters profile, which defines slices for MatchedMembers, NonMatchedMembers, and ConsentConstrainedMembers."

// ─── Input Parameters ────────────────────────────────────────────────────────

// MemberBundle - Contains patient demographics and coverage information
* parameter[+].name = #MemberBundle
* parameter[=].use = #in
* parameter[=].type = #Parameters
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Contains one or more members with patient demographics and coverage information to be matched against the payer's member records. Each repetition **SHALL** conform to the MemberBundle slice defined in the [Provider $multi-member-match Request](StructureDefinition-provider-parameters-multi-member-match-bundle-in.html) profile."

// MemberBundle.MemberPatient - The patient demographics for the member
* parameter[=].part[+].name = #MemberPatient
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Patient
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexPatientDemographics)
* parameter[=].part[=].documentation = "The patient demographics for a member to be matched."

// MemberBundle.CoverageToMatch - The member's coverage information to match
* parameter[=].part[+].name = #CoverageToMatch
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Coverage
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexCoverage)
* parameter[=].part[=].documentation = "The member's existing or previous coverage information to match against."

// CoverageToLink is intentionally not defined on this operation. Linking a member's
// previous coverage to a new coverage is meaningful only in the Payer-to-Payer
// member-match scenario (where the requesting payer holds the new coverage and the
// responding payer holds the previous coverage). In Provider Access the requester is
// a provider, not a payer, and is not linking coverage between plans. The PDex
// $bulk-member-match operation retains CoverageToLink for the Payer-to-Payer case.

// MemberBundle.Consent - Provider attestation to treatment relationship
* parameter[=].part[+].name = #Consent
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Consent
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical(ProviderTreatmentAttestation)
* parameter[=].part[=].documentation = "Provider's attestation of an active treatment relationship with the patient. Uses a Consent resource conforming to the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.html). The Consent parameter represents the provider's certification of a treatment relationship under HIPAA TPO provisions."

// ─── Output Parameters ────────────────────────────────────────────────────────

// MatchedMembers - Group of successfully matched members authorized for provider access.
// Cardinality is 1..1: the MatchedMembers Group is always emitted, even when no members
// in the request were matched (in which case Group.member[] is empty), so the
// matched-Group identifier is always available for the subsequent $davinci-data-export
// step. This aligns with the 1..1 cardinality on the Provider $multi-member-match
// Response Parameters profile.
* parameter[+].name = #MatchedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(ProviderMemberMatchGroup)
* parameter[=].documentation = "A Group resource containing members successfully matched in the payer's records, for whom the provider's treatment attestation has been verified, and who have not opted out of Provider Access API data sharing. The Group Id returned in this parameter is the input to the $davinci-data-export operation for bulk data retrieval. This Group is the response artifact and is distinct from the long-lived Member-Provider Treatment Relationship Group (pdex-treatment-relationship) the payer maintains for governance and audit purposes. **Cardinality 1..1** — emitted even when `Group.member[]` is empty, so the matched-Group identifier is always available for the subsequent `$davinci-data-export` step."

// NonMatchedMembers - Group of members that could not be matched or whose treatment attestation could not be verified
* parameter[+].name = #NonMatchedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(ProviderMemberNoMatchGroup)
* parameter[=].documentation = "A Group resource containing members for whom no match could be found in the payer's records OR for whom the provider's treatment attestation could not be verified or does not meet the payer's requirements. Both failure types are reported in this single Group; consumers can distinguish the specific reason via the Group's characteristic code or the per-member context if required by the payer."

// ConsentConstrainedMembers - Group of members excluded due to opt-out from Provider Access API
* parameter[+].name = #ConsentConstrainedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(MemberOptOut)
* parameter[=].documentation = "A Group resource containing members who were successfully matched in the payer's records but who have opted out of data sharing via the Provider Access API. Returned via the [Member Opt-Out Group profile](StructureDefinition-pdex-member-opt-out.html). **Privacy default — SHOULD suppress when opt-out status is sensitive.** A member who opts out of data sharing has, by definition, indicated that they do not want their data disclosed to the requesting provider via this API; the fact of opting out is itself information about that member. Where the payer determines that disclosing opt-out status to the requesting provider — i.e., distinguishing 'opted out' from 'not matched' — would itself constitute a disclosure the member did not authorize (whether under applicable state privacy law, the member's stated preference, or the payer's privacy policy), the payer **SHOULD** suppress this `ConsentConstrainedMembers` parameter and instead include the affected members in the `NonMatchedMembers` Group. This makes the response indistinguishable to the requester between a true no-match and a matched-but-opted-out outcome, protecting opt-out status from disclosure. Payers that determine no such concern applies (for example, in jurisdictions where opt-out disclosure is permitted, or where the member has not requested suppression) **MAY** continue to return this Group, which preserves the type-level distinction between opt-out and no-match outcomes for operational use by the requester."
