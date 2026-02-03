// ─────────────────────────────────────────────────────────────────────────────
// Example Resources for Provider-Member-Match Operations
// These resources are referenced by the Provider-Member-Match request and response examples
// ─────────────────────────────────────────────────────────────────────────────

// ─────────────────────────────────────────────────────────────────────────────
// Patient Examples - Provider's view of the patients
// ─────────────────────────────────────────────────────────────────────────────

Instance: PatientProviderExample1
InstanceOf: $HRexPatientDemographics
Title: "Patient Provider Example 1 - Robert Johnson"
Description: "Example patient as known to the provider for Provider-Member-Match operation"
Usage: #example
* id = "patient-prov-001"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Robert Michael Johnson</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MR "Medical Record Number"
* identifier[0].system = "http://example.org/provider-emr/patient-ids"
* identifier[0].value = "MRN-12345"
* identifier[0].assigner.display = "Example Provider Organization"
* name.use = #official
* name.family = "Johnson"
* name.given[0] = "Robert"
* name.given[1] = "Michael"
* gender = #male
* birthDate = "1965-03-15"
* address.line = "123 Main Street"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "02101"


Instance: PatientProviderExample2
InstanceOf: $HRexPatientDemographics
Title: "Patient Provider Example 2 - Sarah Williams"
Description: "Example patient as known to the provider for Provider-Member-Match operation"
Usage: #example
* id = "patient-prov-002"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Sarah Elizabeth Williams</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MR "Medical Record Number"
* identifier[0].system = "http://example.org/provider-emr/patient-ids"
* identifier[0].value = "MRN-67890"
* identifier[0].assigner.display = "Example Provider Organization"
* name.use = #official
* name.family = "Williams"
* name.given[0] = "Sarah"
* name.given[1] = "Elizabeth"
* gender = #female
* birthDate = "1978-07-22"
* address.line = "456 Oak Avenue"
* address.city = "Sometown"
* address.state = "MA"
* address.postalCode = "02102"


// ─────────────────────────────────────────────────────────────────────────────
// Patient Examples - Payer's view of matched members
// ─────────────────────────────────────────────────────────────────────────────

Instance: PayerMemberExample1
InstanceOf: $HRexPatientDemographics
Title: "Payer Member Example 1 - Robert Johnson"
Description: "Example patient as known to the payer after successful member match"
Usage: #example
* id = "payer-member-001"
* meta.lastUpdated = "2024-12-16T10:30:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Robert Michael Johnson - Payer Member</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MB "Member Number"
* identifier[0].system = "http://example.org/payer/member-ids"
* identifier[0].value = "MBR-A12345678"
* identifier[0].assigner.display = "Example Payer"
* name.use = #official
* name.family = "Johnson"
* name.given[0] = "Robert"
* name.given[1] = "Michael"
* gender = #male
* birthDate = "1965-03-15"
* address.line = "123 Main Street"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "02101"


Instance: PayerMemberExample2
InstanceOf: $HRexPatientDemographics
Title: "Payer Member Example 2 - Sarah Williams"
Description: "Example patient as known to the payer after successful member match"
Usage: #example
* id = "payer-member-002"
* meta.lastUpdated = "2024-12-16T10:30:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Sarah Elizabeth Williams - Payer Member</p></div>"
* identifier[0].type = $V2IdentifierTypeCS#MB "Member Number"
* identifier[0].system = "http://example.org/payer/member-ids"
* identifier[0].value = "MBR-B98765432"
* identifier[0].assigner.display = "Example Payer"
* name.use = #official
* name.family = "Williams"
* name.given[0] = "Sarah"
* name.given[1] = "Elizabeth"
* gender = #female
* birthDate = "1978-07-22"
* address.line = "456 Oak Avenue"
* address.city = "Sometown"
* address.state = "MA"
* address.postalCode = "02102"


// ─────────────────────────────────────────────────────────────────────────────
// Practitioner Examples - Providers attesting to treatment relationships
// ─────────────────────────────────────────────────────────────────────────────

Instance: PractitionerProviderExample1
InstanceOf: us-core-practitioner
Title: "Practitioner Provider Example 1 - Dr. Smith"
Description: "Example practitioner attesting to treatment relationship for Provider-Member-Match"
Usage: #example
* id = "provider-001"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dr. John Smith, MD</p></div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1234567893"
* name.use = #official
* name.family = "Smith"
* name.given = "John"
* name.prefix = "Dr."
* name.suffix = "MD"


Instance: PractitionerProviderExample2
InstanceOf: us-core-practitioner
Title: "Practitioner Provider Example 2 - Dr. Jones"
Description: "Example practitioner attesting to treatment relationship for Provider-Member-Match"
Usage: #example
* id = "provider-002"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dr. Mary Jones, MD</p></div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1497758544"
* name.use = #official
* name.family = "Jones"
* name.given = "Mary"
* name.prefix = "Dr."
* name.suffix = "MD"


// ─────────────────────────────────────────────────────────────────────────────
// Organization Examples - Provider organizations
// ─────────────────────────────────────────────────────────────────────────────

Instance: OrganizationProviderExample1
InstanceOf: us-core-organization
Title: "Organization Provider Example 1"
Description: "Example provider organization for Provider-Member-Match operation"
Usage: #example
* id = "provider-org-001"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Example Provider Organization</p></div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1982947230"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Example Provider Organization"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #work
* address.line = "100 Medical Center Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "02101"


Instance: OrganizationProviderExample2
InstanceOf: us-core-organization
Title: "Organization Provider Example 2"
Description: "Example provider organization for Provider-Member-Match operation"
Usage: #example
* id = "provider-org-002"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Second Example Provider Organization</p></div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Second Example Provider Organization"
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* address.line = "200 Healthcare Boulevard"
* address.city = "Sometown"
* address.state = "MA"
* address.postalCode = "02102"


// ─────────────────────────────────────────────────────────────────────────────
// DocumentReference Examples - Treatment attestation forms
// ─────────────────────────────────────────────────────────────────────────────

Instance: TreatmentAttestationFormExample1
InstanceOf: DocumentReference
Title: "Treatment Attestation Form Example 1"
Description: "Example signed attestation document for treatment relationship"
Usage: #example
* id = "treatment-attestation-form-001"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Signed Treatment Relationship Attestation Form for Robert Johnson</p></div>"
* status = #current
* docStatus = #final
* type = http://loinc.org#64292-6 "Release of information consent Document"
* category = http://loinc.org#64292-6 "Release of information consent Document"
* subject = Reference(Patient/patient-prov-001) "Robert Michael Johnson"
* date = "2024-12-16T09:30:00Z"
* author = Reference(Practitioner/provider-001) "Dr. John Smith"
* custodian = Reference(Organization/provider-org-001) "Example Provider Organization"
* description = "Signed attestation form documenting active treatment relationship between Dr. Smith and patient Robert Johnson"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.language = #en-US
* content[0].attachment.title = "Treatment Relationship Attestation Form"
* content[0].attachment.creation = "2024-12-16T09:30:00Z"
* context.period.start = "2024-01-01"


Instance: TreatmentAttestationFormExample2
InstanceOf: DocumentReference
Title: "Treatment Attestation Form Example 2"
Description: "Example signed attestation document for treatment relationship"
Usage: #example
* id = "treatment-attestation-form-002"
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Signed Treatment Relationship Attestation Form for Sarah Williams</p></div>"
* status = #current
* docStatus = #final
* type = http://loinc.org#64292-6 "Release of information consent Document"
* category = http://loinc.org#64292-6 "Release of information consent Document"
* subject = Reference(Patient/patient-prov-002) "Sarah Elizabeth Williams"
* date = "2024-12-16T09:45:00Z"
* author = Reference(Practitioner/provider-002) "Dr. Mary Jones"
* custodian = Reference(Organization/provider-org-002) "Second Example Provider Organization"
* description = "Signed attestation form documenting active treatment relationship between Dr. Jones and patient Sarah Williams"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.language = #en-US
* content[0].attachment.title = "Treatment Relationship Attestation Form"
* content[0].attachment.creation = "2024-12-16T09:45:00Z"
* context.period.start = "2024-02-15"
