// Provider-Member-Match Operation
// This operation enables providers to match their patients against a payer's member records
// and identify treatment relationships for bulk data access
Instance: ProviderMemberMatch
InstanceOf: OperationDefinition
Usage: #definition
Title: "PDex Provider-Member-Match Operation"
Description: "Provider-Member-Match Operation enables providers to match patient demographics and coverage information against a payer's member records. The operation returns matched members as a Group resource that can be used with the $davinci-data-export operation for bulk data retrieval. This operation aligns with the Payer-to-Payer Bulk Member Match but is designed for provider-initiated requests.\n\nThe matched members returned in the MatchedMembers Group can be used directly with the $davinci-data-export operation on the Group resource to retrieve bulk FHIR data for all matched members. The $davinci-data-export operation will return a manifest file referencing the bulk data files containing the member health information in ndjson format."
* experimental = true
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/ProviderMemberMatch"
* version = "2.1.0"
* name = "ProviderMemberMatch"
* status = #active
* kind = #operation
* code = #provider-member-match
* system = false
* type = true
* instance = false
* date = "2024-12-16T00:00:00Z"
* publisher = "HL7 International / Financial Management"
* comment = "The Group resources returned by this operation can be used as input to the $davinci-data-export operation to perform bulk member matching and retrieve the associated bulk member health history data."

// ─── Input Parameters ────────────────────────────────────────────────────────

// MembersToMatch - Contains patient demographics and coverage information
* parameter[+].name = #MembersToMatch
* parameter[=].use = #in
* parameter[=].type = #Parameters
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Contains one or more members with patient demographics and coverage information to be matched against the payer's member records."

// MembersToMatch.MemberPatient - The patient demographics for the member
* parameter[=].part[+].name = #MemberPatient
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Patient
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexPatientDemographics)
* parameter[=].part[=].documentation = "The patient demographics for a member to be matched."

// MembersToMatch.CoverageToMatch - The member's coverage information to match
* parameter[=].part[+].name = #CoverageToMatch
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Coverage
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexCoverage)
* parameter[=].part[=].documentation = "The member's existing or previous coverage information to match against."

// MembersToMatch.CoverageToLink - Optional coverage to link (for enrollment transitions)
* parameter[=].part[+].name = #CoverageToLink
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Coverage
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexCoverage)
* parameter[=].part[=].documentation = "Optional: The member's new coverage information to link to (e.g., during plan transitions)."

// MembersToMatch.TreatmentAttestation - Provider attestation to treatment relationship
* parameter[=].part[+].name = #TreatmentAttestation
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Consent
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical(ProviderTreatmentAttestation)
* parameter[=].part[=].documentation = "Provider's attestation to an active treatment relationship with the patient. This replaces the general consent with a specific treatment relationship attestation."

// ─── Output Parameters ────────────────────────────────────────────────────────

// MatchedMembers - Group of successfully matched members
* parameter[+].name = #MatchedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(MemberProviderTreatmentRelationship)
* parameter[=].documentation = "A Group resource containing members successfully matched and for whom a treatment relationship has been confirmed. This Group can be used with the $davinci-data-export operation to retrieve bulk data."

// NonMatchedMembers - Group of members that could not be matched
* parameter[+].name = #NonMatchedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(PDexMemberNoMatchGroup)
* parameter[=].documentation = "A Group resource containing members for whom no match could be found in the payer's member records."

// TreatmentAttestationConstrainedMembers - Group of members excluded due to treatment attestation constraints
* parameter[+].name = #TreatmentAttestationConstrainedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(PDexMemberNoMatchGroup)
* parameter[=].documentation = "A Group resource containing members for whom the provider's treatment attestation could not be verified or does not meet the payer's requirements."

// OptOutConstrainedMembers - Group of members excluded due to member opt-out
* parameter[+].name = #OptOutConstrainedMembers
* parameter[=].use = #out
* parameter[=].type = #Group
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].targetProfile = Canonical(MemberOptOut)
* parameter[=].documentation = "A Group resource containing members who have opted out of data sharing with providers or this specific provider."
