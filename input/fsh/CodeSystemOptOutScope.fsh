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
