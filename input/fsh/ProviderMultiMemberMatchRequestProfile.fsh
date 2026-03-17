// Provider Multi Member Match Request Profile
// This profile differs from the Payer-to-Payer version by:
// 1. Including current member demographics (not old payer data)
// 2. Including current coverage information
// 3. Using Provider Treatment Attestation instead of patient consent for payer-to-payer exchange
// 4. Not requiring CoverageToLink (providers are not linking to new coverage)

Profile: ProviderMultiMemberMatchRequestParameters
Parent: Parameters
Id: provider-parameters-multi-member-match-bundle-in
Title: "Provider $multi-member-match Request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system in response to a provider request. This differs from the payer-to-payer multi-member-match by including current member demographics, current coverage, and provider treatment attestation rather than patient consent for payer-to-payer data exchange."
* ^experimental = true
* ^version = "2.2.0"
* ^status = #draft

// 1) Slice the top-level .parameter by its 'name' element
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^short = "Provider member match request parameters"
* parameter ^definition = "Parameters for a provider-initiated bulk member match request containing current member demographics, current coverage, and provider treatment attestation."

// 2) Declare the MembersToMatch slice - name aligned with OperationDefinition-ProviderMemberMatch
* parameter contains MembersToMatch 1..*
* parameter[MembersToMatch].name = "MembersToMatch"
* parameter[MembersToMatch].name ^short = "Member elements to match for provider access"
* parameter[MembersToMatch].name ^definition = "A repeating parameter containing current member demographics, current coverage information, and provider treatment attestation for a single member. The name aligns with the ProviderMemberMatch OperationDefinition."

// 3) Slice the .part array inside MembersToMatch by part.name
* parameter[MembersToMatch].part ^slicing.discriminator.type = #value
* parameter[MembersToMatch].part ^slicing.discriminator.path = "name"
* parameter[MembersToMatch].part ^slicing.rules = #open
* parameter[MembersToMatch].part ^short = "Components of provider member match request"
* parameter[MembersToMatch].part ^definition = "The individual components required for a provider to request access to member data: current patient demographics, current coverage, and provider treatment attestation."

// 4) Define each part slice - Provider-specific requirements

// Current Member Demographics (not old payer data)
* parameter[MembersToMatch].part contains MemberPatient 1..1
* parameter[MembersToMatch].part[MemberPatient].name = "MemberPatient"
* parameter[MembersToMatch].part[MemberPatient].name ^short = "Current member demographics"
* parameter[MembersToMatch].part[MemberPatient].name ^definition = "Current patient demographic information as known by the provider (from provider's EMR or patient-provided information)."
* parameter[MembersToMatch].part[MemberPatient].resource 1..1
* parameter[MembersToMatch].part[MemberPatient].resource only $HRexPatientDemographics
* parameter[MembersToMatch].part[MemberPatient].resource ^short = "Patient demographic details"
* parameter[MembersToMatch].part[MemberPatient].resource ^definition = "The patient's current demographic information including name, date of birth, gender, and identifiers from the provider's system."

// Current Coverage (member's active coverage with the payer)
* parameter[MembersToMatch].part contains CoverageToMatch 1..1
* parameter[MembersToMatch].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MembersToMatch].part[CoverageToMatch].name ^short = "Current member coverage"
* parameter[MembersToMatch].part[CoverageToMatch].name ^definition = "The member's current active coverage with the payer (typically from insurance card or eligibility verification)."
* parameter[MembersToMatch].part[CoverageToMatch].resource 1..1
* parameter[MembersToMatch].part[CoverageToMatch].resource only $HRexCoverage
* parameter[MembersToMatch].part[CoverageToMatch].resource ^short = "Current coverage details"
* parameter[MembersToMatch].part[CoverageToMatch].resource ^definition = "The member's active coverage information including member ID, subscriber ID, group number, plan details, and payer identifier."

// Provider Treatment Attestation - name aligned with OperationDefinition-ProviderMemberMatch
// This is NOT patient consent for payer-to-payer data exchange; it is the provider's certification
// of a treatment relationship justifying access under HIPAA TPO provisions.
* parameter[MembersToMatch].part contains TreatmentAttestation 1..1
* parameter[MembersToMatch].part[TreatmentAttestation].name = "TreatmentAttestation"
* parameter[MembersToMatch].part[TreatmentAttestation].name ^short = "Provider treatment attestation"
* parameter[MembersToMatch].part[TreatmentAttestation].name ^definition = "Provider's attestation of an active treatment relationship with the member. This is NOT patient consent for payer-to-payer data exchange, but rather the provider's certification that they have a treatment relationship justifying access to the member's data."
* parameter[MembersToMatch].part[TreatmentAttestation].resource 1..1
* parameter[MembersToMatch].part[TreatmentAttestation].resource only ProviderTreatmentAttestation
* parameter[MembersToMatch].part[TreatmentAttestation].resource ^short = "Provider attestation to treatment relationship"
* parameter[MembersToMatch].part[TreatmentAttestation].resource ^definition = "A Consent resource conforming to the ProviderTreatmentAttestation profile, documenting that the provider has an active treatment relationship with the member and the purposes for which they are requesting access to the member's data."
* parameter[MembersToMatch].part[TreatmentAttestation].resource ^comment = "Unlike the payer-to-payer multi-member-match which includes patient consent for data exchange between payers, the provider version includes the provider's attestation to a treatment relationship. This attestation serves as the legal basis for the payer to release data to the provider under HIPAA treatment, payment, and operations (TPO) provisions."

// CoverageToLink is optional for provider requests (typically not used)
// Providers are not linking coverage between payers, they are requesting access based on current coverage
* parameter[MembersToMatch].part contains CoverageToLink 0..1
* parameter[MembersToMatch].part[CoverageToLink].name = "CoverageToLink"
* parameter[MembersToMatch].part[CoverageToLink].name ^short = "Optional coverage to link (typically not used)"
* parameter[MembersToMatch].part[CoverageToLink].name ^definition = "CoverageToLink is typically not used in provider-initiated member match requests as providers are not linking historical coverage to new coverage. This element is only relevant for payer-to-payer member match operations."
* parameter[MembersToMatch].part[CoverageToLink].resource 0..1
* parameter[MembersToMatch].part[CoverageToLink].resource only $HRexCoverage
