// Example of PDex Member Match Group
// ------------------------------
// MemberMatchGroup
Instance: example-pdex-member-match-group
InstanceOf:  PDexMemberMatchGroup
Description: "Example of PDex Member Match Group that returns successful matches and creates a Group resource for use with bulk operations."
Usage: #example
* meta.lastUpdated = "2024-03-20T09:00:00.000Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* contained[0] = input-1
* contained[+] = input-2
* id = "07e72a15407547bf9d03f522aa536a72.1"
* type = http://hl7.org/fhir/group-type#person "Person"
* actual = true
* code = $MemberMatchResult#match "Matched"
* name = "Matched Members"
* managingEntity
  * identifier
    * system = "http://hl7.org/fhir/sid/us-npi"
    * value = "9876543210"
  * display = "Old Health Plan"
* identifier
  // new health plan taken from submission to multi-member match operation
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "0123456789"
* member[0]
  * entity
    * reference = "Patient/1001"
    * extension[matchedMember].valueReference.reference = "#1"
* member[+]
  * entity
    * reference = "Patient/2002"
    * extension[matchedMember].valueReference.reference = "#2"

// Example of Member No Match Group
// ------------------------------
// MemberNoMatchGroup
Instance: example-pdex-member-no-match-group
InstanceOf:  PDexMemberNoMatchGroup
Description: "Example of PDex Member Match Group that returns unsuccessful matches."
Usage: #example
* meta.lastUpdated = "2024-03-20T09:00:00.000Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* contained[0] = input-3
* type =  http://hl7.org/fhir/group-type#person "Person"
* actual = true
* code = $MemberMatchResult#nomatch "Not Matched"
* managingEntity
  * identifier
    * system = "http://hl7.org/fhir/sid/us-npi"
    * value = "9876543210"
  * display = "Old Health Plan"
* identifier
  // new health plan taken from submission to multi-member match operation
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "0123456789"
* member[0]
  * entity
    * reference = "#3"
    * extension[nonMatchedMember].valueReference.reference = "#3"

// Example of Consent Constraint Group
// ------------------------------
// MemberNoMatchGroup
Instance: example-pdex-member-consent-constraint-group
InstanceOf:  PDexMemberNoMatchGroup
Description: "Example of PDex Member Match Group that returns matches that fail the consent decision flow."
Usage: #example
* meta.lastUpdated = "2024-03-20T09:00:00.000Z"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* contained[0] = input-4
* type =  http://hl7.org/fhir/group-type#person "Person"
* actual = true
* code = $MemberMatchResult#consentconstraint "Consent Constraint"
* managingEntity
  * identifier
    * system = "http://hl7.org/fhir/sid/us-npi"
    * value = "9876543210"
  * display = "Old Health Plan"
* identifier
  // new health plan taken from submission to multi-member match operation
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "0123456789"
* member[0]
  * entity
    * reference = "#4"
    * extension[nonMatchedMember].valueReference.reference = "#4"
