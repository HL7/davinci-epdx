// Consent Profile for Provider Attestation to Treatment Relationship
Profile: ProviderTreatmentAttestation
Parent: Consent
Id: provider-treatment-relationship-consent
Title: "Provider Attestation to Treatment Relationship"
Description: "Enables a practitioner, facility, or organization to attest to a treatment relationship with a patient. This profile documents that a healthcare provider has an active treatment relationship with the patient for the purposes of care delivery, coordination, and related activities. This profile is used in the Provider-Member-Match operation to enable providers to assert treatment relationships with patients for bulk data access."

* ^version = "2.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-12-16T00:00:00Z"
* ^publisher = "HL7 International / Financial Management"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^contact[0].name = "HL7 International - Financial Management"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^fhirVersion = #4.0.1

// Status - required to indicate if the consent is active
* status MS
* status ^short = "Status of the treatment relationship attestation"
* status ^definition = "Indicates whether this treatment relationship attestation is active, inactive, or has been entered in error"

// Scope - fixed to treatment for this use case
* scope MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment
* scope ^short = "Treatment relationship scope"
* scope ^definition = "Fixed to 'treatment' to indicate this consent represents a treatment relationship"

// Category - required to classify the type of consent
* category 1..* MS
* category ^short = "Classification of consent (e.g., treatment relationship, attestation)"
* category ^definition = "Classification of the type of consent. Should include codes indicating treatment relationship and attestation"
* category from http://hl7.org/fhir/ValueSet/consent-category (extensible)

// Patient - required reference to the patient
* patient 1..1 MS
* patient only Reference(Patient)
* patient ^short = "Patient who is the subject of the treatment relationship"
* patient ^definition = "Reference to the patient for whom the treatment relationship is being attested"

// DateTime - required to record when attestation was made
* dateTime 1..1 MS
* dateTime ^short = "Date/time when treatment relationship attestation was recorded"
* dateTime ^definition = "When this treatment relationship attestation was recorded or last updated"

// Performer - the practitioner, organization, or facility attesting to the relationship
* performer 1..* MS
* performer ^short = "Practitioner, facility, or organization attesting to treatment relationship"
* performer ^definition = "The healthcare provider (practitioner, organization, or facility) attesting that they have a treatment relationship with the patient"
* performer only Reference(Practitioner or Organization or PractitionerRole)

// Organization - the organization under which the treatment relationship exists
* organization 0..1 MS
* organization ^short = "Organization responsible for the treatment relationship"
* organization ^definition = "The healthcare organization under which this treatment relationship exists"

// Source - reference to the attestation document or system
* source[x] MS
* source[x] ^short = "Source of the attestation"
* source[x] ^definition = "Reference to the source document, system, or person who provided the attestation"

// Policy - references to applicable policies or regulations
* policy MS
* policy ^short = "Policies or regulations governing the treatment relationship"
* policy ^definition = "References to applicable policies, regulations, or legal frameworks governing treatment relationships"

// Provision - details about the treatment relationship scope and period
* provision MS
* provision ^short = "Details of the treatment relationship"
* provision ^definition = "Detailed provisions about the scope, purpose, and period of the treatment relationship"

// Provision.type - permit for active treatment relationship
* provision.type MS
* provision.type ^short = "Whether this is a permission (permit) or denial"
* provision.type ^definition = "For treatment relationships, this should typically be 'permit' indicating an active relationship"

// Provision.period - time period for the treatment relationship
* provision.period MS
* provision.period ^short = "Time period for the treatment relationship"
* provision.period ^definition = "The time period during which the treatment relationship is valid or was active"
* provision.period.start MS
* provision.period.start ^short = "Start date of treatment relationship"

// Provision.actor - specific actors involved in the treatment relationship
* provision.actor MS
* provision.actor ^short = "Actors involved in the treatment relationship"
* provision.actor ^definition = "Specific practitioners, organizations, or facilities involved in providing care under this treatment relationship"
* provision.actor.role MS
* provision.actor.reference MS
* provision.actor.reference only Reference(Practitioner or Organization or PractitionerRole or CareTeam)

// Provision.purpose - purpose codes for the treatment relationship
* provision.purpose MS
* provision.purpose ^short = "Purpose of accessing patient information"
* provision.purpose ^definition = "The purpose(s) for which the treatment relationship allows access to patient information (e.g., treatment, care coordination, quality improvement)"
* provision.purpose from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse (extensible)

// Verification - attestation verification details
* verification MS
* verification ^short = "Verification of the treatment relationship attestation"
* verification ^definition = "Information about verification of the treatment relationship attestation"
* verification.verified MS
* verification.verified ^short = "Whether the attestation has been verified"
* verification.verifiedWith MS
* verification.verifiedWith ^short = "Who verified the attestation"
* verification.verificationDate MS
* verification.verificationDate ^short = "When the attestation was verified"

// Status restrictions - only active or entered-in-error allowed for treatment attestation
* status from AttestationStatusValueSet (required)

// Restrictions on provision type - should be permit for active treatment relationships
* provision.type from AttestationProvisionTypeValueSet (required)

// ValueSet for valid statuses
ValueSet: AttestationStatusValueSet
Id: attestation-status-valueset
Title: "Treatment Attestation Status"
Description: "Allowed statuses for treatment relationship attestations"
* ^status = #active
* ^experimental = false
* http://hl7.org/fhir/consent-state-codes#active "Active"
* http://hl7.org/fhir/consent-state-codes#entered-in-error "Entered in Error"

// ValueSet for valid provision types
ValueSet: AttestationProvisionTypeValueSet
Id: attestation-provision-type-valueset
Title: "Treatment Attestation Provision Type"
Description: "Allowed provision types for treatment relationship attestations"
* ^status = #active
* ^experimental = false
* http://hl7.org/fhir/consent-provision-type#permit "Permit"
