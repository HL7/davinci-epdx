// Example Provider Multi Member Match Response
Instance: Provider-Bulk-Member-Match-Response-Example
InstanceOf: ProviderMultiMemberMatchResponseParameters
Title: "Provider Bulk Member Match Response Example"
Description: "Example response to a Provider Bulk Member Match request showing matched members (authorized for provider access), non-matched members (not found in payer system), and consent-constrained members (opted out of Provider Access API)."
Usage: #example
* id = "provider-bulk-member-match-out"

// ------------------
// Matched Members - Successfully matched and authorized for provider access
// ------------------
* parameter[MatchedMembers]
  * name = "MatchedMembers"
  * resource
    * resourceType = "Group"
    * id = "provider-matched-group-001"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Matched members group - members authorized for provider access</div>"

    // Contained resources - original submitted demographics from provider
    * contained[0] = provider-submitted-patient-1
    * contained[+] = provider-submitted-patient-2

    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#match "Matched"

    // Managing entity - the payer
    * managingEntity
      * identifier.system = "http://hl7.org/fhir/sid/us-npi"
      * identifier.value = "1234567890"
      * display = "Example Health Plan"

    // Identifier of requesting provider
    * identifier
      * system = "http://hl7.org/fhir/sid/us-npi"
      * value = "1982947230"
      * assigner.display = "Provider 1"

    // Characteristics
    * characteristic.code = $MemberMatchResult#match "Matched"
    * characteristic.valueReference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * characteristic.valueReference.identifier.value = "1982947230"
    * characteristic.valueReference.display = "Provider 1"
    * characteristic.exclude = false
    * characteristic.period.start = "2024-11-14"

    // Member 1 - Successfully matched
    * member[0]
      * entity.reference = "Patient/payer-patient-1001"
      * entity.display = "Patricia Ann Person - Payer Record"
      * entity.extension[matchedMember].valueReference.reference = "#provider-submitted-patient-1"

    // Member 2 - Successfully matched
    * member[+]
      * entity.reference = "Patient/payer-patient-2002"
      * entity.display = "John Michael Doe - Payer Record"
      * entity.extension[matchedMember].valueReference.reference = "#provider-submitted-patient-2"

// ------------------
// Non-Matched Members - Members not found in payer's system
// ------------------
* parameter[NonMatchedMembers]
  * name = "NonMatchedMembers"
  * resource
    * resourceType = "Group"
    * id = "provider-nomatch-group-001"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Non-matched members group - members not found in payer system</div>"

    // Contained resources - submitted demographics that didn't match
    * contained[0] = provider-submitted-patient-3

    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#nomatch "Not Matched"

    // Managing entity - the payer
    * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * managingEntity.identifier.value = "1234567890"
    * managingEntity.display = "Example Health Plan"

    // Identifier of requesting provider
    * identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * identifier.value = "1982947230"
    * identifier.assigner.display = "Provider 1"

    // Member that couldn't be matched
    * member[0]
      * entity.reference = "#provider-submitted-patient-3"
      * entity.display = "Jane Marie Smith - Not Found"
      * entity.extension[nonMatchedMember].valueReference.reference = "#provider-submitted-patient-3"

// ------------------
// Consent-Constrained Members - Members who opted out of Provider Access
// ------------------
* parameter[ConsentConstrainedMembers]
  * name = "ConsentConstrainedMembers"
  * resource
    * resourceType = "Group"
    * id = "provider-consent-constraint-group-001"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consent-constrained members group - members who opted out of Provider Access API</div>"

    // Contained resources - submitted demographics for opted-out members
    * contained[0] = provider-submitted-patient-4

    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#consentconstraint "Consent Constraint"

    // Managing entity - the payer
    * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * managingEntity.identifier.value = "1234567890"
    * managingEntity.display = "Example Health Plan"

    // Identifier of requesting provider
    * identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * identifier.value = "1982947230"
    * identifier.assigner.display = "Provider 1"

    // Member who opted out
    * member[0]
      * entity.reference = "#provider-submitted-patient-4"
      * entity.display = "Robert James Wilson - Opted Out"
      * entity.extension[nonMatchedMember].valueReference.reference = "#provider-submitted-patient-4"


// ------------------
// Supporting Patient Instances (inline/contained)
// ------------------

// Submitted Patient 1 - Successfully matched
Instance: provider-submitted-patient-1
InstanceOf: Patient
Usage: #inline
* id = "provider-submitted-patient-1"
* identifier
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/provider-emr/identifiers/patient"
  * value = "EMR-98765"
  * assigner.display = "Provider 1 EMR System"
* name
  * use = #official
  * family = "Person"
  * given[0] = "Patricia"
  * given[+] = "Ann"
* gender = #female
* birthDate = "1974-12-25"

// Submitted Patient 2 - Successfully matched
Instance: provider-submitted-patient-2
InstanceOf: Patient
Usage: #inline
* id = "provider-submitted-patient-2"
* identifier
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/provider-emr/identifiers/patient"
  * value = "EMR-45678"
  * assigner.display = "Provider 1 EMR System"
* name
  * use = #official
  * family = "Doe"
  * given[0] = "John"
  * given[+] = "Michael"
* gender = #male
* birthDate = "1985-06-15"

// Submitted Patient 3 - Not matched
Instance: provider-submitted-patient-3
InstanceOf: Patient
Usage: #inline
* id = "provider-submitted-patient-3"
* identifier
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/provider-emr/identifiers/patient"
  * value = "EMR-99999"
  * assigner.display = "Provider 1 EMR System"
* name
  * use = #official
  * family = "Smith"
  * given[0] = "Jane"
  * given[+] = "Marie"
* gender = #female
* birthDate = "1990-03-20"

// Submitted Patient 4 - Opted out
Instance: provider-submitted-patient-4
InstanceOf: Patient
Usage: #inline
* id = "provider-submitted-patient-4"
* identifier
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/provider-emr/identifiers/patient"
  * value = "EMR-77777"
  * assigner.display = "Provider 1 EMR System"
* name
  * use = #official
  * family = "Wilson"
  * given[0] = "Robert"
  * given[+] = "James"
* gender = #male
* birthDate = "1978-11-30"


// ------------------
// Supporting Payer Patient Instances (referenced, not contained)
// These would exist in the payer's system
// ------------------

Instance: payer-patient-1001
InstanceOf: Patient
Title: "Payer's Patient Record for Member 1001"
Description: "The payer's internal patient record that was matched to provider-submitted-patient-1"
Usage: #example
* id = "payer-patient-1001"
* identifier[0]
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/health-plan/identifiers/member"
  * value = "HP-12345678"
  * assigner.display = "Example Health Plan"
* identifier[+]
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/health-plan/identifiers/medical-record"
  * value = "MR-1001-PLAN"
  * assigner.display = "Example Health Plan"
* name
  * use = #official
  * family = "Person"
  * given[0] = "Patricia"
  * given[+] = "Ann"
* gender = #female
* birthDate = "1974-12-25"
* address
  * line[0] = "123 Main Street"
  * city = "Springfield"
  * state = "IL"
  * postalCode = "62701"

Instance: payer-patient-2002
InstanceOf: Patient
Title: "Payer's Patient Record for Member 2002"
Description: "The payer's internal patient record that was matched to provider-submitted-patient-2"
Usage: #example
* id = "payer-patient-2002"
* identifier[0]
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/health-plan/identifiers/member"
  * value = "HP-87654321"
  * assigner.display = "Example Health Plan"
* identifier[+]
  * type = $V2IdentifierTypeCS#MR
  * system = "http://example.org/health-plan/identifiers/medical-record"
  * value = "MR-2002-PLAN"
  * assigner.display = "Example Health Plan"
* name
  * use = #official
  * family = "Doe"
  * given[0] = "John"
  * given[+] = "Michael"
* gender = #male
* birthDate = "1985-06-15"
* address
  * line[0] = "456 Oak Avenue"
  * city = "Springfield"
  * state = "IL"
  * postalCode = "62702"
