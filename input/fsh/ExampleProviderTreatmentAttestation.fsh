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


// Example of Provider-Specific Bulk Member Match Request with Treatment Attestation
Instance: Provider-Bulk-Member-Match-Request-Example
InstanceOf: ProviderMultiMemberMatchRequestParameters
Title: "Provider Bulk Member Match Request Example"
Description: "Example of a Bulk Member Match request for Provider Access, including provider treatment attestation consent. This differs from Payer-to-Payer member match by including current member demographics, current coverage, and provider attestation instead of old payer data and patient consent for data sharing between payers."
Usage: #example
* id = "provider-bulk-member-match-in"

// ------------------
// Record 1 - Provider requesting access for patient under treatment
// ------------------
* parameter[MemberBundle][0].name = "MemberBundle"

// Member Patient information
* parameter[MemberBundle][0].part[MemberPatient].name = "MemberPatient"
* parameter[MemberBundle][0].part[MemberPatient].resource.resourceType = "Patient"
* parameter[MemberBundle][0].part[MemberPatient].resource.id = "patient-provider-1"
* parameter[MemberBundle][0].part[MemberPatient].resource.text.status = #generated
* parameter[MemberBundle][0].part[MemberPatient].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient Patricia Ann Person</div>"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[+].type = $V2IdentifierTypeCS#MB
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].system = "http://example.org/provider-emr/identifiers/patient"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].value = "EMR-98765"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].assigner.display = "Provider 1 EMR System"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.use = #official
* parameter[MemberBundle][0].part[MemberPatient].resource.name.family = "Person"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.given[0] = "Patricia"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.given[1] = "Ann"
* parameter[MemberBundle][0].part[MemberPatient].resource.gender = #female
* parameter[MemberBundle][0].part[MemberPatient].resource.birthDate = "1974-12-25"

// Coverage information provided by patient to provider
* parameter[MemberBundle][0].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.resourceType = "Coverage"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.id = "coverage-provider-1"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.text.status = #generated
* parameter[MemberBundle][0].part[CoverageToMatch].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Coverage information from insurance card</div>"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].system = "http://example.org/health-plan"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].value = "HP-12345678"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.status = #active
* parameter[MemberBundle][0].part[CoverageToMatch].resource.subscriberId = "SUB-987654321"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.relationship = $CoverageRelationship#self
* parameter[MemberBundle][0].part[CoverageToMatch].resource.beneficiary.reference = "Patient/patient-provider-1"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.period.start = "2024-01-01"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.period.end = "2024-12-31"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.value = "1234567890"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].display = "Example Health Plan"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].type = $coverage-class#group
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].value = "GRP-001"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].type = $coverage-class#plan
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].value = "PLAN-GOLD"

// Provider Treatment Attestation Consent - KEY DIFFERENCE from Payer-to-Payer
* parameter[MemberBundle][0].part[Consent].name = "Consent"
* parameter[MemberBundle][0].part[Consent].resource.resourceType = "Consent"
* parameter[MemberBundle][0].part[Consent].resource.id = "consent-provider-1"
* parameter[MemberBundle][0].part[Consent].resource.text.status = #generated
* parameter[MemberBundle][0].part[Consent].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Provider attestation to treatment relationship</div>"
* parameter[MemberBundle][0].part[Consent].resource.status = #active

// Treatment scope (not patient-privacy)
* parameter[MemberBundle][0].part[Consent].resource.scope = $consentscope#treatment

// Categories indicating treatment relationship
* parameter[MemberBundle][0].part[Consent].resource.category[0] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "Information Disclosure"
* parameter[MemberBundle][0].part[Consent].resource.category[1] = http://loinc.org#64292-6 "Release of information consent"

// Patient subject of treatment relationship
* parameter[MemberBundle][0].part[Consent].resource.patient.reference = "Patient/patient-provider-1"

// Performer is the provider attesting (not the patient)
* parameter[MemberBundle][0].part[Consent].resource.performer[0].reference = "Practitioner/4"
* parameter[MemberBundle][0].part[Consent].resource.performer[0].display = "Dr. Susan Smith"

// DateTime of attestation
* parameter[MemberBundle][0].part[Consent].resource.dateTime = "2024-11-14T10:30:00Z"

// Source of attestation
* parameter[MemberBundle][0].part[Consent].resource.sourceReference.reference = "DocumentReference/provider-attestation-doc-1"

// Policy
* parameter[MemberBundle][0].part[Consent].resource.policy[0].uri = "https://example.org/provider-attestation-policy"

// Provision details
* parameter[MemberBundle][0].part[Consent].resource.provision.type = #permit
* parameter[MemberBundle][0].part[Consent].resource.provision.period.start = "2024-01-15"

// Actor - provider requesting access
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[0].role = $v3-ParticipationType#IRCP
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[0].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[0].reference.identifier.value = "1982943213"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[0].reference.display = "Dr. Susan Smith"

// Actor - provider organization
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[1].role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[1].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[1].reference.identifier.value = "1982947230"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[1].reference.display = "Provider 1"

// Purpose - treatment and related activities
* parameter[MemberBundle][0].part[Consent].resource.provision.purpose[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
* parameter[MemberBundle][0].part[Consent].resource.provision.purpose[1] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
* parameter[MemberBundle][0].part[Consent].resource.provision.purpose[2] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT

// Verification
* parameter[MemberBundle][0].part[Consent].resource.verification[0].verified = true
* parameter[MemberBundle][0].part[Consent].resource.verification[0].verifiedWith.reference = "Patient/patient-provider-1"
* parameter[MemberBundle][0].part[Consent].resource.verification[0].verificationDate = "2024-11-14T10:30:00Z"

// CoverageToLink - not typically included in Provider Access scenario as provider is not linking to new coverage
// This field would be omitted in a true Provider Access request
