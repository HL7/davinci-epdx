Profile: PDexProviderSharingConsent
Parent: Consent
Id: pdex-provider-consent
Title: "PDex Provider Access Consent Profile"
Description: "The PDex Provider Access Consent Profile enables a member to express their preference for the sharing of their healthcare information to providers through the Provider Access API. A member has to actively choose to opt-out of sharing their data."
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
* category contains disclosure 1..1 MS
* category[disclosure] = $v3-ActCode#IDSCL
* patient 1.. MS
* patient only Reference(USCorePatientProfile|6.1.0)

* performer 1..1 MS
* performer only Reference(USCorePatientProfile)
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
* provision.action 1..1
* provision.action = $consentaction#disclose
