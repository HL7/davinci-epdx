// ─────────────────────────────────────────────────────────────────────────────
// Provider-Member-Match Operation Response Examples
// ─────────────────────────────────────────────────────────────────────────────

Instance: ProviderMemberMatchResponseExample
InstanceOf: Parameters
Title: "Provider-Member-Match Response Example"
Description: "Example response to a Provider-Member-Match operation showing matched members with treatment relationships confirmed, non-matched members, treatment attestation constraints, and opt-out constraints."
Usage: #example
* id = "provider-member-match-response-001"

// ------------------
// Matched Members - Members with confirmed treatment relationships
// ------------------
* parameter[+].name = "MatchedMembers"
* parameter[=].resource
  * resourceType = "Group"
  * id = "matched-treatment-relationship-group-001"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Matched Members with Treatment Relationships</h2><p>Members with confirmed treatment relationships who are authorized for provider data access</p></div>"

  // Identifiers
  * identifier[0].system = "http://example.org/payer/match-groups"
  * identifier[0].value = "MTG-2024-12-16-001"
  * identifier[0].assigner.display = "Example Payer"

  * identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
  * identifier[1].value = "1982947230"
  * identifier[1].assigner.display = "Provider Organization"

  // Active and actual group
  * active = true
  * type = #person
  * actual = true
  * code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#match "Matched"

  // Managing entity - the Payer
  * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
  * managingEntity.identifier.value = "5555555555"
  * managingEntity.display = "Current Payer"

  // Characteristics - match result info
  * characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#match "Matched"
  * characteristic.valueReference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
  * characteristic.valueReference.identifier.value = "1982947230"
  * characteristic.valueReference.display = "Provider Organization"
  * characteristic.exclude = false
  * characteristic.period.start = "2024-12-16"

  // Member 1 - Successfully matched with treatment relationship
  * member[0]
    * entity.reference = "Patient/payer-member-001"
    * entity.display = "Robert Michael Johnson - Payer Member"
    * inactive = false

  // Member 2 - Successfully matched with treatment relationship
  * member[+]
    * entity.reference = "Patient/payer-member-002"
    * entity.display = "Sarah Elizabeth Williams - Payer Member"
    * inactive = false

  * quantity = 2


// ------------------
// Non-Matched Members - Members not found in payer system
// ------------------
* parameter[+].name = "NonMatchedMembers"
* parameter[=].resource
  * resourceType = "Group"
  * id = "nomatch-group-001"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Non-Matched Members</h2><p>Members submitted by provider that were not found in payer system</p></div>"

  * identifier[0].system = "http://example.org/payer/match-groups"
  * identifier[0].value = "NMG-2024-12-16-001"
  * identifier[0].assigner.display = "Example Payer"

  * identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
  * identifier[1].value = "1982947230"
  * identifier[1].assigner.display = "Provider Organization"

  * active = true
  * type = #person
  * actual = true
  * code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"

  * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
  * managingEntity.identifier.value = "5555555555"
  * managingEntity.display = "Current Payer"

  * characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"
  * characteristic.exclude = false
  * characteristic.period.start = "2024-12-16"

  // Note: This group would be empty if all members matched successfully
  * quantity = 0


// ------------------
// Treatment Attestation Constrained Members - Attestation could not be verified
// ------------------
* parameter[+].name = "TreatmentAttestationConstrainedMembers"
* parameter[=].resource
  * resourceType = "Group"
  * id = "attestation-constrained-group-001"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Treatment Attestation Constrained</h2><p>Members for whom treatment attestation could not be verified or does not meet payer requirements</p></div>"

  * identifier[0].system = "http://example.org/payer/match-groups"
  * identifier[0].value = "ACG-2024-12-16-001"
  * identifier[0].assigner.display = "Example Payer"

  * identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
  * identifier[1].value = "1982947230"
  * identifier[1].assigner.display = "Provider Organization"

  * active = true
  * type = #person
  * actual = true
  * code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"

  * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
  * managingEntity.identifier.value = "5555555555"
  * managingEntity.display = "Current Payer"

  * characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"
  * characteristic.exclude = false
  * characteristic.period.start = "2024-12-16"

  * quantity = 0


// ------------------
// Opt-Out Constrained Members - Members who have opted out
// ------------------
* parameter[+].name = "OptOutConstrainedMembers"
* parameter[=].resource
  * resourceType = "Group"
  * id = "optout-constrained-group-001"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Members who have Opted-Out</h2><p>Members found but who have exercised opt-out rights</p></div>"

  * identifier[0].system = "http://example.org/payer/match-groups"
  * identifier[0].value = "OOG-2024-12-16-001"
  * identifier[0].assigner.display = "Example Payer"

  * identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
  * identifier[1].value = "1982947230"
  * identifier[1].assigner.display = "Provider Organization"

  * active = true
  * type = #person
  * actual = true
  * code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"

  * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
  * managingEntity.identifier.value = "5555555555"
  * managingEntity.display = "Current Payer"

  * characteristic.code = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexMultiMemberMatchResultCS#nomatch "Not Matched"
  * characteristic.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OptOutScopeCS#provider-specific "Provider-Specific Opt-Out"
  * characteristic.exclude = false
  * characteristic.period.start = "2024-12-16"

  * quantity = 0
