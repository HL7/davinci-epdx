Profile: PDexProviderSharingConsent
Parent: Consent
Id: pdex-provider-consent
Title: "PDex Provider Access Consent Profile"
Description: "The PDex Provider Access Consent Profile enables a member to express their preference for the sharing of their healthcare information to providers through the Provider Access API. A member has to actively choose to opt-out of sharing their data. The opt-out may be exercised by the patient or by the patient's legally recognized personal representative (e.g., parent, guardian, or healthcare proxy), consistent with CMS-0057-F and HIPAA."
* ^experimental = true
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* . ^definition = "This Consent profile conveys high-level computable information about a member's preference to not share information with providers,"
* status = #active (exactly)
* status MS
* scope = $consentscope#patient-privacy
* scope MS
* category ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains
    disclosure 1..1 MS and
    apiPurpose 1..1 MS
* category[disclosure] = $v3-ActCode#IDSCL
* category[apiPurpose] = PDexConsentApiPurposeCS#provider-access
* category[apiPurpose] ^short = "Identifies this Consent as applying to the Provider Access API"
* category[apiPurpose] ^comment = "Fixed to 'provider-access'. Enables systems to locate Provider Access API Consent records for a member using a standard category search (GET /Consent?patient=X&category=provider-access) without relying on actor cross-referencing or custom extension searches."
* patient 1.. MS
* patient only Reference(USCorePatientProfile|7.0.0)

* performer 1..1 MS
* performer only Reference(USCorePatientProfile | $USCoreRelatedPerson)
* performer ^comment = "The individual who performed the opt-out. This SHALL be either the patient themselves (US Core Patient Profile) or the patient's legally recognized personal representative acting on their behalf (US Core RelatedPerson Profile), such as a parent, guardian, or healthcare proxy, consistent with CMS-0057-F and HIPAA."
* organization 1..1 MS
* organization only Reference(HRexOrganization)
* policyRule = http://terminology.hl7.org/CodeSystem/consentpolicycodes#cric "Common Rule Informed Consent"
* provision 1.. MS
* provision.type 1.. MS
* provision.type ^comment = "deny | permit. Member must actively choose to deny sharing. Absence of a record is interpreted as Permit."
* provision.period 1.. MS
* provision.period.start 1.. MS
* provision.actor ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "role"
  * ^slicing.rules = #open
* provision.actor contains
    source 1..* MS
* provision.actor[source] ^short = "Authorized or Not to disclose"
  * ^comment = "Multiple repetitions are allowed."
  * role = $provenance-participant-type#performer
  * role MS
    * ^comment = "This code isn't in the value set, but there's no code that represents the function of 'discloser' or 'performer', so need to go outside the value set.  Multiple "
  * reference only Reference(HRexOrganization)
  * reference MS
* provision.action 1..1 MS
* provision.action from http://hl7.org/fhir/ValueSet/consent-action (required)
* provision.action ^short = "Action permitted or denied - use 'disclose' with provision.type='deny' for Provider Access opt-out"
* provision.action ^comment = "To opt-out of Provider Access data sharing, set provision.type to 'deny' and provision.action to 'disclose'. The ProviderAccessUseCase extension identifies this consent as specific to the Provider Access API."
* provision.action.extension contains ProviderAccessUseCase named providerAccessUseCase 0..1 MS
* provision.action.extension[providerAccessUseCase] ^short = "Indicates this action applies to Provider Access API"
