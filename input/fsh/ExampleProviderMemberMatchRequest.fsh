// ─────────────────────────────────────────────────────────────────────────────
// Provider-Member-Match Operation Request Example
// ─────────────────────────────────────────────────────────────────────────────

Alias: $coverage-type = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $coverage-class = http://terminology.hl7.org/CodeSystem/coverage-class

Instance: ProviderMemberMatchRequestExample
InstanceOf: Parameters
Title: "Provider-Member-Match Request Example"
Description: "Example request to the Provider-Member-Match operation showing a provider submitting patient demographics, existing coverage information, and treatment attestation to match against a payer's member records. CoverageToLink is not included as providers do not issue new coverage."
Usage: #example
* id = "provider-member-match-request-001"
* meta.profile[0] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-parameters-multi-member-match-bundle-in"

// ------------------
// Member 1: Successfully matched member
// ------------------
* parameter[+].name = "MembersToMatch"

// Patient Demographics for Member 1
* parameter[=].part[+].name = "MemberPatient"
* parameter[=].part[=].resource = PatientMemberMatchExample1
* parameter[=].part[=].resource.id = "patient-prov-001"

// Coverage to match (member's previous coverage)
* parameter[=].part[+].name = "CoverageToMatch"
* parameter[=].part[=].resource = CoverageMatchExample1
* parameter[=].part[=].resource.id = "coverage-to-match-001"

// Treatment Attestation from provider
* parameter[=].part[+].name = "TreatmentAttestation"
* parameter[=].part[=].resource = TreatmentAttestationExample1
* parameter[=].part[=].resource.id = "treatment-attestation-001"

// ------------------
// Member 2: Another member to match
// ------------------
* parameter[+].name = "MembersToMatch"

// Patient Demographics for Member 2
* parameter[=].part[+].name = "MemberPatient"
* parameter[=].part[=].resource = PatientMemberMatchExample2
* parameter[=].part[=].resource.id = "patient-prov-002"

// Coverage to match
* parameter[=].part[+].name = "CoverageToMatch"
* parameter[=].part[=].resource = CoverageMatchExample2
* parameter[=].part[=].resource.id = "coverage-to-match-002"

// Treatment Attestation
* parameter[=].part[+].name = "TreatmentAttestation"
* parameter[=].part[=].resource = TreatmentAttestationExample2
* parameter[=].part[=].resource.id = "treatment-attestation-002"


// ─────────────────────────────────────────────────────────────────────────────
// Patient Examples for Request
// ─────────────────────────────────────────────────────────────────────────────

Instance: PatientMemberMatchExample1
InstanceOf: Patient
Title: "Patient for Member Match Example 1"
Description: "Patient demographics submitted by provider for member match"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Robert Michael Johnson - DOB: 1965-08-15, Male</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MB
* identifier[0].system = "http://example.org/provider-org/patient-ids"
* identifier[0].value = "PAT-001"
* identifier[0].assigner.display = "Provider Organization"

* name.use = #official
* name.family = "Johnson"
* name.given[0] = "Robert"
* name.given[1] = "Michael"

* gender = #male
* birthDate = "1965-08-15"

* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"

* address.use = #home
* address.line[0] = "123 Main Street"
* address.city = "Springfield"
* address.state = "IL"
* address.postalCode = "62701"


Instance: PatientMemberMatchExample2
InstanceOf: Patient
Title: "Patient for Member Match Example 2"
Description: "Second patient demographics submitted by provider for member match"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Sarah Elizabeth Williams - DOB: 1978-03-22, Female</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MB
* identifier[0].system = "http://example.org/provider-org/patient-ids"
* identifier[0].value = "PAT-002"
* identifier[0].assigner.display = "Provider Organization"

* name.use = #official
* name.family = "Williams"
* name.given[0] = "Sarah"
* name.given[1] = "Elizabeth"

* gender = #female
* birthDate = "1978-03-22"

* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"

* address.use = #home
* address.line[0] = "456 Oak Avenue"
* address.city = "Columbus"
* address.state = "OH"
* address.postalCode = "43085"


// ─────────────────────────────────────────────────────────────────────────────
// Coverage Examples for Request
// ─────────────────────────────────────────────────────────────────────────────

Instance: CoverageMatchExample1
InstanceOf: http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage
Title: "Coverage to Match Example 1"
Description: "Member's previous coverage information to match"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Coverage for Robert Johnson - Subscriber ID: 12345678, Previous Health Plan, PPO-GOLD</p></div>"
* status = #draft
* type = $coverage-type#HIP "health insurance plan policy"
* subscriber.reference = "Patient/patient-prov-001"
* subscriberId = "12345678"
* relationship = $CoverageRelationship#self
* beneficiary.reference = "Patient/patient-prov-001"
* period.start = "2023-01-01"
* period.end = "2023-12-31"
* payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* payor[0].identifier.value = "9876543210"
* payor[0].display = "Previous Health Plan"
* class[group].type = $coverage-class#group
* class[group].value = "EMPLOY-12345"
* class[plan].type = $coverage-class#plan
* class[plan].value = "PPO-GOLD"


Instance: CoverageMatchExample2
InstanceOf: http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage
Title: "Coverage to Match Example 2"
Description: "Second member's previous coverage information"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Coverage for Sarah Williams - Subscriber ID: 87654321, Another Health Plan, HMO-BASIC</p></div>"
* status = #draft
* type = $coverage-type#HIP "health insurance plan policy"
* subscriber.reference = "Patient/patient-prov-002"
* subscriberId = "87654321"
* relationship = $CoverageRelationship#self
* beneficiary.reference = "Patient/patient-prov-002"
* period.start = "2023-06-01"
* period.end = "2024-05-31"
* payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* payor[0].identifier.value = "1111111111"
* payor[0].display = "Another Health Plan"
* class[group].type = $coverage-class#group
* class[group].value = "EMPLOY-67890"
* class[plan].type = $coverage-class#plan
* class[plan].value = "HMO-BASIC"


// ─────────────────────────────────────────────────────────────────────────────
// Treatment Attestation Examples for Request
// ─────────────────────────────────────────────────────────────────────────────

Instance: TreatmentAttestationExample1
InstanceOf: ProviderTreatmentAttestation
Title: "Treatment Attestation Example 1"
Description: "Provider's attestation to active treatment relationship with patient"
Usage: #example
* id = "treatment-attestation-ex1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Treatment Attestation by Dr. Susan Smith for Robert Johnson - Treatment relationship since 2024-01-15</p></div>"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment
* category[0] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "Information Disclosure"
* category[1] = http://loinc.org#64292-6 "Release of information consent"
* patient.reference = "Patient/patient-prov-001"
* dateTime = "2024-12-10T14:30:00Z"
* performer[0].reference = "Practitioner/provider-001"
* performer[0].display = "Dr. Susan Smith, MD"
* organization.reference = "Organization/provider-org-001"
* organization.display = "Springfield Medical Center"
* sourceReference.reference = "DocumentReference/treatment-attestation-form-001"
* sourceReference.display = "Provider Attestation Form"
* policy[0].uri = "https://example.org/provider-attestation-policy"
* policy[0].authority = "https://example.org/compliance"
* provision.type = #permit
* provision.period.start = "2024-01-15"
* provision.actor[0].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP "information recipient"
* provision.actor[0].reference.reference = "Practitioner/provider-001"
* provision.actor[0].reference.display = "Dr. Susan Smith"
* provision.purpose[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "treatment"


Instance: TreatmentAttestationExample2
InstanceOf: ProviderTreatmentAttestation
Title: "Treatment Attestation Example 2"
Description: "Second provider's attestation to treatment relationship"
Usage: #example
* id = "treatment-attestation-ex2"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Treatment Attestation by Dr. James Brown for Sarah Williams - Treatment relationship since 2024-02-01</p></div>"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment
* category[0] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "Information Disclosure"
* category[1] = http://loinc.org#64292-6 "Release of information consent"
* patient.reference = "Patient/patient-prov-002"
* dateTime = "2024-12-09T10:15:00Z"
* performer[0].reference = "Practitioner/provider-002"
* performer[0].display = "Dr. James Brown, MD"
* organization.reference = "Organization/provider-org-002"
* organization.display = "Columbus Clinic"
* sourceReference.reference = "DocumentReference/treatment-attestation-form-002"
* sourceReference.display = "Provider Attestation Form"
* policy[0].uri = "https://example.org/provider-attestation-policy"
* provision.type = #permit
* provision.period.start = "2024-02-01"
* provision.actor[0].role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP "information recipient"
* provision.actor[0].reference.reference = "Practitioner/provider-002"
* provision.actor[0].reference.display = "Dr. James Brown"
* provision.purpose[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "treatment"
