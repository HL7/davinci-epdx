// Example of Provider Treatment Attestation Consent for Bulk Member Match Request
Instance: Example-Provider-Treatment-Attestation-Consent
InstanceOf: ProviderTreatmentAttestation
Title: "Provider Treatment Attestation Consent Example for Bulk Member Match"
Description: "An example of a Provider Treatment Attestation Consent that would be included in a Bulk Member Match request for Provider Access. This attestation documents that Dr. Susan Smith has an active treatment relationship with the patient."
Usage: #example
* id = "provider-treatment-attestation-1"
* status = #active

// Fixed to treatment scope per profile
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment

// Category includes both treatment relationship and attestation
* category[0] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "Information Disclosure"
* category[1] = http://loinc.org#64292-6 "Release of information consent"

// Patient reference - the member for whom treatment relationship is attested
* patient.reference = "Patient/1"

// DateTime when attestation was made
* dateTime = "2024-11-14T10:30:00Z"

// Performer - the practitioner attesting to the treatment relationship
* performer[0].reference = "Practitioner/4"
* performer[0].display = "Dr. Susan Smith"

// Organization under which treatment relationship exists
* organization.reference = "Organization/ProviderOrg1"
* organization.display = "Provider 1"

// Source of attestation - could reference a signed attestation document
* sourceReference.reference = "DocumentReference/provider-attestation-doc-1"
* sourceReference.display = "Provider Attestation Form"

// Policy references
* policy[0].uri = "https://example.org/provider-attestation-policy"
* policy[0].authority = "https://example.org/health-authority"

// Provision details
* provision.type = #permit
* provision.period.start = "2024-01-15"
// No end date indicates ongoing treatment relationship

// Actor - the provider attesting to treatment relationship
* provision.actor[0].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP "information recipient"
* provision.actor[0].reference.reference = "Practitioner/4"
* provision.actor[0].reference.display = "Dr. Susan Smith"

// Organization actor
* provision.actor[1].role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV "healthcare provider"
* provision.actor[1].reference.reference = "Organization/ProviderOrg1"
* provision.actor[1].reference.display = "Provider 1"

// Purpose of use - treatment and related activities
* provision.purpose[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "treatment"
* provision.purpose[1] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT "healthcare payment"
* provision.purpose[2] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT "healthcare operations"

// Verification - attestation has been verified
* verification[0].verified = true
* verification[0].verifiedWith.reference = "Patient/1"
* verification[0].verifiedWith.display = "Patricia Ann Person"
* verification[0].verificationDate = "2024-11-14T10:30:00Z"

// NOTE: The Provider-Member-Match request example previously in this file
// (Provider-Bulk-Member-Match-Request-Example, id=provider-bulk-member-match-in)
// used the old MemberBundle/Consent parameter names and has been removed.
// The canonical example is ProviderMemberMatchRequestExample
// (id=provider-member-match-request-001) in ExampleProviderMemberMatchRequest.fsh,
// using the current MemberBundle/Consent names aligned with
// the ProviderMemberMatch OperationDefinition and BulkMemberMatch.
