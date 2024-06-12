Profile: PDexProviderSharingConsent
Parent: Consent
Id: pdex-provider-consent
Title: "PDex Provider Access Consent Profile"
Description: "The PDex Provider Access Consent Profile enables a member to express their preference for the sharing of their healthcare information to providers through the Provider Access API. A member has to actively choose to opt-out of sharing their data."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* . ^definition = "This Consent profile conveys high-level computable information about a member's preference to not share information with providers,"
* status = #active (exactly)
* status MS
* scope = $consentscope#patient-privacy
* scope MS

* patient 1.. MS
* patient only Reference(USCorePatientProfile|6.1.0)

* performer 1..1 MS
* performer only Reference(HRexOrganization)
* organization 1..1 MS
* organization only Reference(HRexOrganization)

* provision 1.. MS
* provision.type 1.. MS
* provision.type ^comment = "deny | permit. Member must actively choose to deny sharing. Absence of a record is interpreted as Permit."
* provision.period 1.. MS
* provision.period.start 1.. MS
* provision.action 1..1
* provision.action = $consentaction#disclose