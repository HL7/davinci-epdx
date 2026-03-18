// ─────────────────────────────────────────────────────────────────────────────
// Standalone examples for ProviderMemberMatchGroup and ProviderMemberNoMatchGroup
// profiles. These mirror the Group resources embedded in the Parameters response
// example but are declared as top-level instances so the IG Publisher can
// register them as examples for the respective profiles.
// ─────────────────────────────────────────────────────────────────────────────

// ─── Matched Members Group ────────────────────────────────────────────────────
Instance: example-provider-matched-group
InstanceOf: ProviderMemberMatchGroup
Title: "Example Provider Matched Members Group"
Description: "Example Group of members successfully matched by the payer in response to a provider $bulk-member-match request. Members in this group have confirmed treatment relationships and are authorized for Provider Access API data retrieval."
Usage: #example
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Provider Matched Members Group</h2><p>Members with confirmed treatment relationships authorized for provider data access.</p></div>"
* contained[0] = input-prov-patient-1

* id = "example-provider-matched-group"
* identifier[0].system = "http://example.org/payer/match-groups"
* identifier[0].value = "MTG-2024-12-16-001"
* identifier[0].assigner.display = "Example Payer"
* identifier[+].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1982947230"
* identifier[=].assigner.display = "Provider Organization"

* active = true
* type = #person
* actual = true

* code = $MemberMatchResult#match "Matched"

* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingEntity.identifier.value = "5555555555"
* managingEntity.display = "Example Payer Organization"

* characteristic.code.coding = $MemberMatchResult#match "Matched"
* characteristic.valueReference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* characteristic.valueReference.identifier.value = "1982947230"
* characteristic.valueReference.display = "Provider Organization"
* characteristic.exclude = false
* characteristic.period.start = "2024-12-16"

* member[0].entity.reference = "Patient/payer-member-001"
* member[0].entity.display = "Robert Michael Johnson"
* member[0].entity.extension[matchedMember].valueReference.reference = "#prov-patient-1"
* member[0].inactive = false

* quantity = 1

// Inline submitted patient for cross-reference extension
Instance: input-prov-patient-1
InstanceOf: $HRexPatientDemographics
Usage: #inline
* id = "prov-patient-1"
* name.use = #official
* name.family = "Johnson"
* name.given[0] = "Robert"
* gender = #male
* birthDate = "1965-03-15"


// ─── No Match Group ───────────────────────────────────────────────────────────
Instance: example-provider-nomatch-group
InstanceOf: ProviderMemberNoMatchGroup
Title: "Example Provider No Match Group"
Description: "Example Group of members that could not be matched by the payer in response to a provider $bulk-member-match request. Members in this group were not found in the payer's system."
Usage: #example
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Provider No Match Group</h2><p>Members submitted by the provider that were not found in the payer system.</p></div>"
* contained[0] = input-prov-patient-2

* id = "example-provider-nomatch-group"
* identifier[0].system = "http://example.org/payer/match-groups"
* identifier[0].value = "NMG-2024-12-16-001"
* identifier[0].assigner.display = "Example Payer"

* active = true
* type = #person
* actual = true

* code = $MemberMatchResult#nomatch "Not Matched"

* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingEntity.identifier.value = "5555555555"
* managingEntity.display = "Example Payer Organization"

* member[0].entity.reference = "#prov-patient-2"
* member[0].entity.extension[nonMatchedMember].valueReference.reference = "#prov-patient-2"

// Inline submitted patient demographics that could not be matched
Instance: input-prov-patient-2
InstanceOf: $HRexPatientDemographics
Usage: #inline
* id = "prov-patient-2"
* name.use = #official
* name.family = "Smith"
* name.given[0] = "Jane"
* gender = #female
* birthDate = "1978-06-22"


// ─── Consent Constrained Group ────────────────────────────────────────────────
Instance: example-provider-consent-constrained-group
InstanceOf: ProviderMemberNoMatchGroup
Title: "Example Provider Consent Constrained Group"
Description: "Example Group of members matched but excluded because they have opted out of the Provider Access API. Members in this group were found in the payer's system but have exercised their right to deny provider access."
Usage: #example
* meta.lastUpdated = "2024-12-16T10:00:00Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Provider Consent Constrained Group</h2><p>Members matched but opted out of Provider Access API data sharing.</p></div>"
* contained[0] = input-prov-patient-3

* id = "example-provider-consent-constrained-group"
* identifier[0].system = "http://example.org/payer/match-groups"
* identifier[0].value = "CCG-2024-12-16-001"
* identifier[0].assigner.display = "Example Payer"

* active = true
* type = #person
* actual = true

* code = $MemberMatchResult#consentconstraint "Consent Constraint"

* managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingEntity.identifier.value = "5555555555"
* managingEntity.display = "Example Payer Organization"

* member[0].entity.reference = "#prov-patient-3"
* member[0].entity.extension[nonMatchedMember].valueReference.reference = "#prov-patient-3"

// Inline submitted patient demographics — matched but opted out
Instance: input-prov-patient-3
InstanceOf: $HRexPatientDemographics
Usage: #inline
* id = "prov-patient-3"
* name.use = #official
* name.family = "Williams"
* name.given[0] = "Sarah"
* gender = #female
* birthDate = "1982-11-05"
