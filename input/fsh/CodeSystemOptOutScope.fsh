// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem for PDex API Purpose (Consent category discriminator)
// Resolves FHIR-51377: provides a coded category to differentiate Consent
// resources that apply to different CMS-mandated APIs.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PDexConsentApiPurposeCS
Id: pdex-consent-api-purpose
Title: "PDex Consent API Purpose"
Description: "Codes identifying which CMS-mandated API a Consent resource applies to. Used as a category discriminator to allow systems to locate and distinguish Consent records for Provider Access, Payer-to-Payer, and Patient Access APIs for a given member."
* ^url = "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/pdex-consent-api-purpose"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #provider-access "Provider Access API" "Consent record applies to the CMS-mandated Provider Access API (member opt-out of sharing with providers)"
* #payer-to-payer "Payer-to-Payer API" "Consent record applies to the CMS-mandated Payer-to-Payer API (member authorization for data retrieval by requesting payer)"
* #patient-access "Patient Access API" "Consent record applies to the CMS-mandated Patient Access API (member authorization for third-party application access)"

ValueSet: PDexConsentApiPurposeVS
Id: pdex-consent-api-purpose-vs
Title: "PDex Consent API Purpose Value Set"
Description: "Value set of codes identifying which CMS-mandated API a Consent resource applies to."
* ^url = "http://hl7.org/fhir/us/davinci-pdex/ValueSet/pdex-consent-api-purpose-vs"
* ^status = #active
* ^experimental = false
* include codes from system PDexConsentApiPurposeCS

// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem for Opt-Out Scope
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: OptOutScopeCodeSystem
Id: opt-out-scope
Title: "Opt-Out Scope"
Description: "The scope of a member's opt-out election"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #global "Global Opt-Out" "Member has opted out from all data sharing"
* #provider-specific "Provider-Specific Opt-Out" "Member has opted out for specific provider(s)"
* #purpose-specific "Purpose-Specific Opt-Out" "Member has opted out for specific purpose(s)"
* #payer-specific "Payer-Specific Opt-Out" "Member has opted out for specific payer(s)"
* #provider-category "Provider Category Opt-Out" "Member has opted out for specific provider category/specialty"


// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem for Opt-Out Reason
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: OptOutReasonCodeSystem
Id: opt-out-reason
Title: "Opt-Out Reason"
Description: "Reasons for opting out of data sharing"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #privacy-concern "Privacy Concern" "Member is concerned about privacy"
* #data-security "Data Security Concern" "Member has concerns about data security"
* #unknown-use "Unknown Use" "Member is unsure how data will be used"
* #provider-relationship "Provider Relationship" "Member prefers not to share data with specific provider"
* #member-choice "Member Choice" "Member exercised their right to opt-out"
* #other "Other" "Other reason not specified"
