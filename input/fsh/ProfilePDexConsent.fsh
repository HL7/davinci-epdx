// Replace HRexConsent - due to incorrect slicing in structure definition
Profile: PDexConsent
Parent: Consent
Id: pdex-consent
Title: "PDex Consent Profile"
Description: "The PDex Consent Profile defines the constraints for representing a member's consent to the sharing of their healthcare information to other organizations."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #active
* ^experimental = false
* . ^definition = "This Consent profile conveys high-level computable information about a member's consent for information sharing, along with information that allows a party depending on the consent to follow up with the consent holder to access the 'original' consent, be it in paper form, audio recording or electronic for audit purposes."
* status = #active (exactly)
* status MS
* scope = $consentscope#patient-privacy
* scope MS
* category ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains disclosure 0..* MS
* category[disclosure] = $v3-ActCode#IDSCL
* patient 1.. MS
* patient only Reference(USCorePatientProfile)
* performer 1..1 MS
* performer only Reference(USCorePatientProfile or RelatedPerson or USCorePractitionerProfile or USCorePractitionerRoleProfile or USCoreOrganizationProfile)
* source[x] 1.. MS
* source[x] only Reference(DocumentReference)
  * ^comment = "...Allows referencing the 'source of truth' for the Consent. This might be a detailed electronic consent, an audio recording of a verbal consent, or an identifier that can be used to follow up for audit."
* policy ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "uri"
  * ^slicing.rules = #open
* policy contains pdex 1..* MS
* policy[pdex].uri 1.. MS
* policy[pdex].uri from HRexConsentPolicy (required)
* provision 1.. MS
  * type 1.. MS
  * type = #permit (exactly)
  * period 1.. MS
    * start 1.. MS
    * end 1.. MS
  * actor ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "role"
    * ^slicing.rules = #open
  * actor contains
      source 1..* MS and
      recipient 1..* MS
  * actor[source] ^short = "Authorized to disclose"
    * ^comment = "Multiple repetitions are allowed.  At least one repetition SHALL refer to the target payer's organization.  If the consent is bidirectional, then the source system's organization would also be listed."
    * role = $provenance-participant-type#performer
    * role MS
      * ^comment = "This code isn't in the value set, but there's no code that represents the function of 'discloser' or 'performer', so need to go outside the value set.  Multiple "
    * reference only Reference(HRexOrganization)
    * reference MS
  * actor[recipient] ^short = "Authorized to receive information"
    * ^comment = "Multiple repetitions are allowed.  At least one repetition SHALL refer to the requesting system's organization.  If the consent is bidirectional, then the target payer's organization would also be listed."
    * role = $v3-ParticipationType#IRCP
    * role MS
      * ^comment = "...The code chosen doesn't strictly have the desired semantics, but of the ones in the value set it is closest and has the needed level of generality."
    * reference only Reference(HRexOrganization)
    * reference MS
  * action 1..1
  * action = $consentaction#disclose
  * securityLabel ..0
    * ^requirements = "Further constraining disclosure based on securityLabel is prohibited.  Consent rules are expressed solely in policy."
  * purpose ..0
    * ^requirements = "Further constraining disclosure based on purpose of use is prohibited.  Consent rules are expressed solely in policy."
  * class ..0
    * ^requirements = "Further constraining disclosure based on information class is prohibited.  Consent rules are expressed solely in policy."
  * code ..0
    * ^requirements = "Further constraining disclosure based on information type of use is prohibited.  Consent rules are expressed solely in policy."
  * dataPeriod ..0
    * ^requirements = "Further constraining disclosure based on data period is prohibited.  Consent rules are expressed solely in policy."
  * data ..0
    * ^requirements = "Further constraining disclosure based on data constraints is prohibited.  Consent rules are expressed solely in policy."
  * provision ..0
    * ^requirements = "Further constraining disclosure based on nested provisions is prohibited.  Consent rules are expressed solely in policy."