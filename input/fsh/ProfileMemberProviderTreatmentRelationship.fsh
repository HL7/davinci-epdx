// ─────────────────────────────────────────────────────────────────────────────
// Member-Provider Treatment Relationship Group Profile
// ─────────────────────────────────────────────────────────────────────────────
// This profile represents a group of providers that have a treatment relationship
// with a specific member/patient. The Group is managed by the Payer and includes
// the member as a key characteristic field that holds the Patient ID. The cohort
// of subjects in the group are the providers with treatment relationship.

Profile: MemberProviderTreatmentRelationship
Parent: Group
Id: pdex-treatment-relationship
Title: "Member-Provider Treatment Relationship Group"
Description: "A Group resource representing the treatment relationship between a specific member/patient and one or more healthcare providers. The Payer is the managing organization. The member is identified through a characteristic containing the Patient ID. The group members are the providers that have an active or confirmed treatment relationship with the member."

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
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

// Identifier for the treatment relationship group
* identifier MS
* identifier ^short = "Unique identifier for the treatment relationship group"
* identifier ^definition = "Business identifier assigned by the payer to uniquely identify this treatment relationship group"

// Active status required
* active MS
* active = true
* active ^short = "Treatment relationship group is active"
* active ^definition = "Indicates whether this treatment relationship group is active and current"

// Type - fixed to "provider" for provider treatment relationships
* type MS
* type = #device
* type ^short = "Type of group (provider treatment relationship)"
* type ^definition = "Fixed to 'device' to represent a collection of providers with treatment relationships"

// Actual must be true - represents actual treatment relationships
* actual MS
* actual = true
* actual ^short = "This is an actual collection of providers"
* actual ^definition = "Indicates this is an actual group of providers, not a virtual group"

// Code - classification of the group
* code MS
* code ^short = "Kind of treatment relationship"
* code ^definition = "Classification for this treatment relationship group"
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS

// Managing organization - the Payer
* managingEntity MS
* managingEntity ^short = "The Payer managing this treatment relationship"
* managingEntity ^definition = "Reference to the Payer organization that is managing and maintaining this treatment relationship group"

// Member as a characteristic - the Patient ID is key
* characteristic MS
* characteristic ^short = "Member/Patient identifier and other characteristics"
* characteristic ^definition = "Characteristics of the group, including the member (patient) identifier"
* characteristic.code 1..1 MS
* characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS#pdex-member "PDex Member"
* characteristic.code ^short = "Identifies the member characteristic"
* characteristic.code ^definition = "Fixed code to identify the member characteristic that contains the Patient ID"
* characteristic.value[x] 1..1 MS
* characteristic.valueReference MS
* characteristic.valueReference only Reference(Patient)
* characteristic.valueReference ^short = "Reference to the member/patient"
* characteristic.valueReference ^definition = "Reference to the Patient resource for the member"
* characteristic.exclude = false
* characteristic.exclude ^short = "This is an include, not an exclude"
* characteristic.exclude ^definition = "The member is included, not excluded"

// Period - when the group was established
* characteristic.period MS
* characteristic.period ^short = "Period during which this group is valid"
* characteristic.period ^definition = "Start date when the group was created/established; optionally includes an end date"

// Group members - the providers with treatment relationships
* member MS
* member ^short = "Providers with treatment relationship to the member"
* member ^definition = "List of providers (Practitioners or PractitionerRoles) that have a treatment relationship with the member"
* member.entity 1..1 MS
* member.entity only Reference(Practitioner or PractitionerRole)
* member.entity ^short = "Provider entity"
* member.entity ^definition = "Reference to a healthcare provider (Practitioner or PractitionerRole) with treatment relationship"
* member.inactive 0..1
* member.inactive ^short = "Whether the treatment relationship is currently active"
* member.inactive ^definition = "Set to false/not present if the treatment relationship is active; set to true if inactive"

// Extension for treatment relationship details
* member.entity.extension contains TreatmentRelationshipDetails named treatmentDetails 0..1
* member.entity.extension[treatmentDetails] ^short = "Details of the treatment relationship"
* member.entity.extension[treatmentDetails] ^definition = "Additional details about the specific treatment relationship"

// Quantity - number of providers in the group
* quantity MS
* quantity ^short = "Number of providers in the group"
* quantity ^definition = "The count of providers in this treatment relationship group"


// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem for group characteristics
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PDexMemberCharacteristicCode
Id: pdex-member-characteristic-code
Title: "PDex Member Characteristic Code"
Description: "Codes for member characteristics in PDex groups"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^publisher = "HL7 International / Financial Management"
* #pdex-member "PDex Member" "Identifies the member/patient in a PDex group"


// ─────────────────────────────────────────────────────────────────────────────
// Extension for Treatment Relationship Details
// ─────────────────────────────────────────────────────────────────────────────

Extension: TreatmentRelationshipDetails
Id: treatment-relationship-details
Title: "Treatment Relationship Details"
Description: "Details about a specific treatment relationship between a member and provider"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Group.member.entity"
* value[x] 1..1
* value[x] only string
* valueString ^short = "Details of treatment relationship"


// ─────────────────────────────────────────────────────────────────────────────
// ValueSet for Treatment Relationship Types
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: TreatmentRelationshipTypeValueSet
Id: treatment-relationship-type-valueset
Title: "Treatment Relationship Type"
Description: "Types of treatment relationships between members and providers"
* ^status = #active
* ^experimental = false
* include codes from system TreatmentRelationshipTypeCodeSystem


// ─────────────────────────────────────────────────────────────────────────────
// Example Instance
// ─────────────────────────────────────────────────────────────────────────────

Instance: Example-PDex-Treatment-Relationship-Group
InstanceOf: MemberProviderTreatmentRelationship
Title: "Example Member-Provider Treatment Relationship Group"
Description: "Example of a Group resource representing the treatment relationship between a member and their providers"
Usage: #example
* id = "example-pdex-treatment-relationship-group"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Member-Provider Treatment Relationship Group</h2><p>Providers with an active treatment relationship with the member</p></div>"

// Identifier for this treatment relationship group
* identifier[0].system = "http://example.org/payer/treatment-relationship-groups"
* identifier[0].value = "TRL-2024-001"
* identifier[0].assigner.display = "Example Payer Organization"

// Required elements
* active = true
* type = #device
* actual = true

// Code - match result for this group
* code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS#match "Matched"

// Managing entity - the Payer
* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingEntity.identifier.value = "5555555555"
* managingEntity.display = "Example Payer Organization"

// Characteristic - the member/patient key
* characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS#pdex-member "PDex Member"
* characteristic.valueReference = Reference(Patient/payer-patient-1001)
* characteristic.exclude = false
* characteristic.period.start = "2024-01-01"

// Providers with treatment relationships to this member
* member[0].entity = Reference(Practitioner/provider-001) "Dr. John Smith, MD"
* member[0].entity.extension[treatmentDetails].valueString = "Primary care physician. Treatment relationship established 2024-01-15 based on office visit."
* member[0].inactive = false
* member[1].entity = Reference(Practitioner/provider-002) "Dr. Mary Jones, MD"
* member[1].entity.extension[treatmentDetails].valueString = "Specialist referral. Treatment relationship established 2024-03-01 based on specialist referral from primary care."
* member[1].inactive = false

* quantity = 2
