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

// 2) Declare the MemberBundle slice
* parameter contains MemberBundle 1..*
* parameter[MemberBundle].name = "MemberBundle"
* parameter[MemberBundle].name ^short = "Bundle of member elements to match for provider access"
* parameter[MemberBundle].name ^definition = "A bundle containing current member demographics, current coverage information, and provider treatment attestation for a single member."

// 3) Slice the .part array inside MemberBundle by part.name
* parameter[MemberBundle].part ^slicing.discriminator.type = #value
* parameter[MemberBundle].part ^slicing.discriminator.path = "name"
* parameter[MemberBundle].part ^slicing.rules = #open
* parameter[MemberBundle].part ^short = "Components of provider member match request"
* parameter[MemberBundle].part ^definition = "The individual components required for a provider to request access to member data: current patient demographics, current coverage, and provider treatment attestation."

// 4) Define each part slice - Provider-specific requirements

// Current Member Demographics (not old payer data)
* parameter[MemberBundle].part contains MemberPatient 1..1
* parameter[MemberBundle].part[MemberPatient].name = "MemberPatient"
* parameter[MemberBundle].part[MemberPatient].name ^short = "Current member demographics"
* parameter[MemberBundle].part[MemberPatient].name ^definition = "Current patient demographic information as known by the provider (from provider's EMR or patient-provided information)."
* parameter[MemberBundle].part[MemberPatient].resource 1..1
* parameter[MemberBundle].part[MemberPatient].resource only $HRexPatientDemographics
* parameter[MemberBundle].part[MemberPatient].resource ^short = "Patient demographic details"
* parameter[MemberBundle].part[MemberPatient].resource ^definition = "The patient's current demographic information including name, date of birth, gender, and identifiers from the provider's system."

// Current Coverage (member's active coverage with the payer)
* parameter[MemberBundle].part contains CoverageToMatch 1..1
* parameter[MemberBundle].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MemberBundle].part[CoverageToMatch].name ^short = "Current member coverage"
* parameter[MemberBundle].part[CoverageToMatch].name ^definition = "The member's current active coverage with the payer (typically from insurance card or eligibility verification)."
* parameter[MemberBundle].part[CoverageToMatch].resource 1..1
* parameter[MemberBundle].part[CoverageToMatch].resource only $HRexCoverage
* parameter[MemberBundle].part[CoverageToMatch].resource ^short = "Current coverage details"
* parameter[MemberBundle].part[CoverageToMatch].resource ^definition = "The member's active coverage information including member ID, subscriber ID, group number, plan details, and payer identifier."

// Provider Treatment Attestation (instead of patient consent for payer-to-payer exchange)
* parameter[MemberBundle].part contains Consent 1..1
* parameter[MemberBundle].part[Consent].name = "Consent"
* parameter[MemberBundle].part[Consent].name ^short = "Provider treatment attestation"
* parameter[MemberBundle].part[Consent].name ^definition = "Provider's attestation of an active treatment relationship with the member. This is NOT patient consent for payer-to-payer data exchange, but rather the provider's certification that they have a treatment relationship justifying access to the member's data."
* parameter[MemberBundle].part[Consent].resource 1..1
* parameter[MemberBundle].part[Consent].resource only ProviderTreatmentAttestation
* parameter[MemberBundle].part[Consent].resource ^short = "Provider attestation to treatment relationship"
* parameter[MemberBundle].part[Consent].resource ^definition = "A Consent resource conforming to the ProviderTreatmentAttestation profile, documenting that the provider has an active treatment relationship with the member and the purposes for which they are requesting access to the member's data."
* parameter[MemberBundle].part[Consent].resource ^comment = "Unlike the payer-to-payer multi-member-match which includes patient consent for data exchange between payers, the provider version includes the provider's attestation to a treatment relationship. This attestation serves as the legal basis for the payer to release data to the provider under HIPAA treatment, payment, and operations (TPO) provisions."

// CoverageToLink is NOT included for provider requests
// Providers are not linking coverage between payers, they are requesting access based on current coverage
* parameter[MemberBundle].part contains CoverageToLink 0..0
* parameter[MemberBundle].part[CoverageToLink] ^short = "Not used in provider requests"
* parameter[MemberBundle].part[CoverageToLink] ^definition = "CoverageToLink is not used in provider-initiated member match requests as providers are not linking historical coverage to new coverage. This element is only relevant for payer-to-payer member match operations."
