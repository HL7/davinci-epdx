// Supporting DocumentReference for Provider Attestation
Instance: provider-attestation-doc-1
InstanceOf: DocumentReference
Title: "Provider Attestation Document Reference"
Description: "Example DocumentReference representing a signed provider attestation form documenting the treatment relationship."
Usage: #example
* id = "provider-attestation-doc-1"
* status = #current
* docStatus = #final

// Type of document - attestation/certification
* type = http://loinc.org#64292-6 "Release of information consent"

// Category
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#treat "Treatment"

// Subject - the patient
* subject.reference = "Patient/1"
* subject.display = "Patricia Ann Person"

// Date of attestation
* date = "2024-11-14T10:30:00Z"

// Author - the practitioner who signed the attestation
* author[0].reference = "Practitioner/4"
* author[0].display = "Dr. Susan Smith"

// Authenticator - could be practice administrator who verified
* authenticator.reference = "Organization/ProviderOrg1"
* authenticator.display = "Provider 1"

// Custodian - organization maintaining the attestation
* custodian.reference = "Organization/ProviderOrg1"
* custodian.display = "Provider 1"

// Content - reference to the actual attestation document
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://example.org/provider1/attestations/2024/attestation-001.pdf"
* content[0].attachment.title = "Provider Treatment Relationship Attestation Form"
* content[0].attachment.creation = "2024-11-14T10:30:00Z"
* content[0].format = http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem#urn:ihe:iti:xds:2017:mimeTypeSufficient

// Context - period of treatment relationship
* context.period.start = "2024-01-15"
* context.related[0].reference = "Encounter/6"
