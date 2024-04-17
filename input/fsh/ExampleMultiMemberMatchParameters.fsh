// Example of Multi-Member Match Request
Instance: Multimembermatchpayerrequestexample
InstanceOf: pdex-parameters-multi-member-match-bundle-in
Title: "$multi-member-match payer example request"
Description: "Example of more than one member being submitted to the PDex Payer-to-Payer Multiple Member Match Operation."
Usage: #example
* id = "payer-multi-member-match-in"
* parameter[0].part[MemberPatient]
  * resource
    * resourceType = "Patient"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "1"
    * identifier
      * type = $V2IdentifierTypeCS#MB
      * system = "http://example.org/old-payer/identifiers/member"
      * value = "55678"
      * assigner.display = "Old Payer"
    * name
      * use = #official
      * family = "Person"
      * given[0] = "Patricia"
      * given[+] = "Ann"
    * gender = #female
    * birthDate = "1974-12-25"
// ----------------------
* parameter[=].part[CoverageToMatch]
  * resource
    * resourceType = "Coverage"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "9876B1"
    * identifier[memberid]
      * system = "http://example.org/old-payer"
      * value = "DH10001235"
    * status = #draft
    * subscriberId = "1234564321"
    * relationship = $CoverageRelationship#self
    * beneficiary.reference = "Patient/1"
    * period
      * start = "2011-05-23"
      * end = "2012-05-23"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "9876543210"
      * display = "Old Health Plan"
    * class[group]
      * type = $coverage-class#group
      * value = "CB135"
    * class[plan]
      * type = $coverage-class#plan
      * value = "B37FC"
    * class[+]
      * type = $coverage-class#subplan
      * value = "P7"
    * class[+]
      * type = $coverage-class#class
      * value = "SILVER"
// ----------------------
* parameter[=].part[Consent]
  * resource
    * resourceType = "Consent"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "consent-1"
    * status = #active
    * scope = $consentscope#patient-privacy
    * category = $v3-ActCode#IDSCL
    * patient.reference = "Patient/1"
    * performer.reference = "Patient/1"
    * sourceReference.reference = "http://example.org/DocumentReference/someconsent-1"
    * policy.uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
    * provision
      * type = #permit
      * period
        * start = "2023-12-01"
        * end = "2024-03-31"
      * actor[source]
        * role = $provenance-participant-type#performer
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "9876543210"
          * display = "Old Health Plan"
      * actor[recipient]
        * role = $v3-ParticipationType#IRCP
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "0123456789"
          * display = "New Health Plan"
      * action = $consentaction#disclose
// ----------------------
* parameter[=].part[CoverageToLink]
  * resource
    * resourceType = "Coverage"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "AA87654"
    * identifier[memberid]
      * system = "http://example.org/new-payer/identifiers/coverage"
      * value = "234567"
    * status = #active
    * subscriberId = "23456754321"
    * relationship = $CoverageRelationship#self
    * beneficiary.reference = "Patient/1"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "New Health Plan"
// ------------------
// Record 2 in bundle
// ------------------
* parameter[+].part[MemberPatient]
  * resource
    * resourceType = "Patient"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "2"
    * identifier
      * type = $V2IdentifierTypeCS#MB
      * system = "http://example.org/old-payer/identifiers/member"
      * value = "45567"
      * assigner.display = "Old Payer"
    * name
      * use = #official
      * family = "Smith"
      * given[0] = "William"
      * given[+] = "John"
    * gender = #female
    * birthDate = "1958-12-25"
* parameter[=].part[CoverageToMatch]
//  * name = "CoverageToMatch"
  * resource
    * resourceType = "Coverage"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "876B10"
    * identifier[memberid]
      * system = "http://example.org/old-payer"
      * value = "DH10001235"
    * status = #draft
    * subscriberId = "9876543789"
    * relationship = $CoverageRelationship#self
    * beneficiary.reference = "Patient/2"
    * period
      * start = "2011-05-23"
      * end = "2012-05-23"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "9876543210"
      * display = "Old Health Plan"
    * class[group]
      * type = $coverage-class#group
      * value = "CB135"
    * class[plan]
      * type = $coverage-class#plan
      * value = "B37FC"
    * class[+]
      * type = $coverage-class#subplan
      * value = "P7"
    * class[+]
      * type = $coverage-class#class
      * value = "SILVER"
* parameter[=].part[Consent]
//  * name = "Consent"
  * resource
    * resourceType = "Consent"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "consent-2"
    * status = #active
    * scope = $consentscope#patient-privacy
    * category = $v3-ActCode#IDSCL
    * patient.reference = "Patient/2"
    * performer.reference = "Patient/2"
    * sourceReference.reference = "http://example.org/DocumentReference/someconsen-2"
    * policy.uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
    * provision
      * type = #permit
      * period
        * start = "2023-12-01"
        * end = "2024-03-31"
      * actor[source]
        * role = $provenance-participant-type#performer
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "9876543210"
          * display = "Old Health Plan"
      * actor[recipient]
        * role = $v3-ParticipationType#IRCP
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "0123456789"
          * display = "New Health Plan"
      * action = $consentaction#disclose
* parameter[=].part[CoverageToLink]
//  * name = "CoverageToLink"
  * resource
    * resourceType = "Coverage"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "AA87654"
    * identifier[memberid]
      * system = "http://example.org/new-payer/identifiers/coverage"
      * value = "234567"
    * status = #active
    * subscriberId = "432156789"
    * relationship = $CoverageRelationship#self
    * beneficiary.reference = "Patient/2"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "New Health Plan"

// End of Example

// ----------------------------------------------
// Example of Multi-Member Match Response
Instance: Multimembermatchpayerresponseexample
InstanceOf: pdex-parameters-multi-member-match-bundle-out
Title: "$multi-member-match payer example response"
Description: "Example of group record being returned in response to PDex Payer-to-Payer Multiple Member Match Operation."
Usage: #example
* id = "payer-multi-member-match-out"
* parameter[ResourceIdentifier]
  * name = "ResourceIdentifier"
  * resource
    * resourceType = "Group"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
    * id = "07e72a15407547bf9d03f522aa536a72"
    * contained[0] = input-1
    * contained[+] = input-2
    * type =  http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#match "Matched"
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
* parameter[NoMatch]
  * name = "NoMatch"
  * resource
    * resourceType = "Group"
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
* parameter[ConsentConstraint]
  * name = "ConsentConstraint"
  * resource
    * resourceType = "Group"
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



// ------------------------------------------------------------
// Contained resource examples
// ---------------------------
// Patient/1 from Request
Instance: input-1
InstanceOf: Patient
Usage: #inline
* id = "1"
* identifier
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/old-payer/identifiers/member"
  * value = "55678"
  * assigner.display = "Old Payer"
* name
  * use = #official
  * family = "Person"
  * given[0] = "Patricia"
  * given[+] = "Ann"
* gender = #female
* birthDate = "1974-12-25"

// ---------------------------
// Patient/2 from Request
Instance: input-2
InstanceOf: Patient
Usage: #inline
* id = "2"
* identifier
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/old-payer/identifiers/member"
  * value = "45567"
  * assigner.display = "Old Payer"
* name
  * use = #official
  * family = "Smith"
  * given[0] = "William"
  * given[+] = "John"
* gender = #male
* birthDate = "1958-12-25"

// ---------------------------
// Patient/3 from Request
Instance: input-3
InstanceOf: Patient
Usage: #inline
* id = "3"
* identifier
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/old-payer/identifiers/member"
  * value = "45567"
  * assigner.display = "Old Payer"
* name
  * use = #official
  * family = "Jones"
  * given[0] = "Adam"
  * given[+] = "Jacob"
* gender = #male
* birthDate = "1957-12-25"

// ---------------------------
// Patient/4 from Request
Instance: input-4
InstanceOf: Patient
Usage: #inline
* id = "4"
* identifier
  * type = $V2IdentifierTypeCS#MB
  * system = "http://example.org/old-payer/identifiers/member"
  * value = "45567"
  * assigner.display = "Old Payer"
* name
  * use = #official
  * family = "Noway"
  * given[0] = "Janis"
  * given[+] = "Noelle"
* gender = #female
* birthDate = "1956-12-25"


