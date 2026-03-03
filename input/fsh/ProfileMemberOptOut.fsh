// ─────────────────────────────────────────────────────────────────────────────
// Member Opt-Out Group Profile
// ─────────────────────────────────────────────────────────────────────────────
// This profile represents a group of members that have opted out of data sharing.
// The Group is managed by the Payer and contains all members who have exercised
// their right to opt-out, either globally or for specific providers/purposes.

Profile: MemberOptOut
Parent: Group
Id: pdex-member-opt-out
Title: "Member Opt-Out Group"
Description: "A Group resource representing members who have opted out of data sharing. The Payer is the managing organization. The group members are the patients who have exercised their right to opt-out of sharing their health information, either broadly or for specific purposes or providers. This group is used to identify members whose data should not be shared in payer-to-payer or provider access scenarios."

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

// Identifier for the opt-out group
* identifier MS
* identifier ^short = "Unique identifier for the opt-out group"
* identifier ^definition = "Business identifier assigned by the payer to uniquely identify this opt-out group"

// Active status required
* active MS
* active = true
* active ^short = "Opt-out group is active"
* active ^definition = "Indicates whether this opt-out group is active and current"

// Type - fixed to "person" for members
* type MS
* type = #person
* type ^short = "Type of group (members)"
* type ^definition = "Fixed to 'person' to represent a collection of individual members"

// Actual must be true - represents actual members who have opted out
* actual MS
* actual = true
* actual ^short = "This is an actual collection of members"
* actual ^definition = "Indicates this is an actual group of members, not a virtual group"

// Code - classification of the group as opt-out
* code MS
* code ^short = "Kind of group (opt-out)"
* code ^definition = "Classification for this opt-out group"
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS

// Managing organization - the Payer
* managingEntity MS
* managingEntity ^short = "The Payer managing this opt-out group"
* managingEntity ^definition = "Reference to the Payer organization that is managing and maintaining this opt-out group"

// Characteristics - opt-out specifics
* characteristic MS
* characteristic ^short = "Opt-out characteristics and scope"
* characteristic ^definition = "Characteristics describing the nature and scope of the opt-out"

// Opt-out scope characteristic
* characteristic.code 1..1 MS
* characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS#consentconstraint "Consent Constraint"
* characteristic.code ^short = "Identifies this as a consent constraint group"
* characteristic.code ^definition = "Fixed code indicating this group contains members with consent constraints (opt-outs)"

// Opt-out scope value
* characteristic.value[x] 1..1 MS
* characteristic.value[x] only CodeableConcept
* characteristic.valueCodeableConcept from OptOutScopeValueSet
* characteristic.valueCodeableConcept ^short = "The type of opt-out"
* characteristic.valueCodeableConcept ^definition = "Indicates whether the opt-out is global, provider-specific, or purpose-specific"

// Exclude must be false - these are included members
* characteristic.exclude = false
* characteristic.exclude ^short = "This is an include, not an exclude"
* characteristic.exclude ^definition = "Members are included, not excluded"

// Period - when the opt-out becomes effective
* characteristic.period MS
* characteristic.period ^short = "Period during which the opt-out is effective"
* characteristic.period ^definition = "Start date when the opt-out becomes effective; optionally includes an end date"
* characteristic.period.start MS
* characteristic.period.start ^short = "Opt-out effective date"

// Optional characteristic for opt-out reason
* characteristic.extension contains OptOutReason named optOutReason 0..1
* characteristic.extension[optOutReason] ^short = "Reason for the opt-out"
* characteristic.extension[optOutReason] ^definition = "The member's stated reason for opting out"

// Group members - the members who have opted out
* member MS
* member ^short = "Members who have opted out"
* member ^definition = "List of patients/members who have opted out of data sharing"
* member.entity 1..1 MS
* member.entity only Reference(Patient)
* member.entity ^short = "Member/patient who has opted out"
* member.entity ^definition = "Reference to a Patient resource for a member who has opted out"
* member.inactive 0..1
* member.inactive ^short = "Whether the opt-out is currently active"
* member.inactive ^definition = "Set to false/not present if the opt-out is active; set to true if revoked/inactive"

// Extension for opt-out details
* member.entity.extension contains OptOutDetails named optOutDetails 0..1
* member.entity.extension[optOutDetails] ^short = "Details of the member's opt-out"
* member.entity.extension[optOutDetails] ^definition = "Additional details about when and why the member opted out"

// Quantity - number of members who have opted out
* quantity MS
* quantity ^short = "Number of members who have opted out"
* quantity ^definition = "The count of members in this opt-out group"


// ─────────────────────────────────────────────────────────────────────────────
// ValueSet for Opt-Out Scope
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: OptOutScopeValueSet
Id: opt-out-scope-valueset
Title: "Opt-Out Scope"
Description: "The scope of a member's opt-out election"
* ^status = #active
* ^experimental = false
* include codes from system OptOutScopeCodeSystem


// ─────────────────────────────────────────────────────────────────────────────
// Extension for Opt-Out Reason
// ─────────────────────────────────────────────────────────────────────────────

Extension: OptOutReason
Id: opt-out-reason
Title: "Opt-Out Reason"
Description: "The reason a member has chosen to opt out of data sharing"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from OptOutReasonValueSet
* valueCodeableConcept ^short = "Reason for opt-out"
* valueCodeableConcept ^definition = "The member's stated reason for opting out"


// ─────────────────────────────────────────────────────────────────────────────
// ValueSet for Opt-Out Reason
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: OptOutReasonValueSet
Id: opt-out-reason-valueset
Title: "Opt-Out Reason"
Description: "Reasons for opting out of data sharing"
* ^status = #active
* ^experimental = false
* include codes from system OptOutReasonCodeSystem


// ─────────────────────────────────────────────────────────────────────────────
// Extension for Opt-Out Details
// ─────────────────────────────────────────────────────────────────────────────

Extension: OptOutDetails
Id: opt-out-details
Title: "Opt-Out Details"
Description: "Detailed information about when and why a member opted out"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Group.member.entity"
* value[x] 1..1
* value[x] only string
* valueString ^short = "Details about the member's opt-out decision"


// ─────────────────────────────────────────────────────────────────────────────
// Example: Member Opt-Out Group
// ─────────────────────────────────────────────────────────────────────────────

Instance: ExampleMemberOptOutGroup
InstanceOf: MemberOptOut
Title: "Example Member Opt-Out Group"
Description: "Example of a Group containing members who have opted out of data sharing with providers"
Usage: #example
* id = "member-opt-out-group-001"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Member Opt-Out Group</h2><p>Members who have opted out of Provider Access data sharing</p></div>"

// Identifier for the opt-out group
* identifier[0].system = "http://example.org/payer/opt-out-groups"
* identifier[0].value = "OPT-OUT-2024-001"
* identifier[0].assigner.display = "Example Payer"

// Required elements
* active = true
* type = #person
* actual = true

// Code identifying this as a consent constraint group
* code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS#consentconstraint "Consent Constraint"

// Managing entity - the Payer
* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingEntity.identifier.value = "5555555555"
* managingEntity.display = "Example Payer Organization"

// Characteristic - opt-out scope
* characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS#consentconstraint "Consent Constraint"
* characteristic.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-scope#provider-specific "Provider-Specific Opt-Out"
* characteristic.exclude = false
* characteristic.period.start = "2024-06-01"
* characteristic.extension[optOutReason].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/opt-out-reason#privacy-concern "Privacy Concern"

// Member who has opted out
* member[0].entity.reference = "Patient/1"
* member[0].entity.display = "Jane Doe - Opted out of provider data sharing"
* member[0].entity.extension[optOutDetails].valueString = "Member requested opt-out on 2024-06-01 citing privacy concerns. Opt-out applies to all named providers."
* member[0].inactive = false

* quantity = 1
