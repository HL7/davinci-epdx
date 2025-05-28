Instance: Multimembermatchpayerrequestexample
InstanceOf: pdex-parameters-multi-member-match-bundle-in
Title: "$multi-member-match payer example request"
Description: "Example of more than one member being submitted to the PDex Payer-to-Payer Multiple Member Match Operation."
Usage: #example
* id = "payer-multi-member-match-in"

// ------------------
// Record 1
// ------------------
* parameter[MemberBundle][0].name = "MemberBundle"
* parameter[MemberBundle][0].part[MemberPatient].name = "MemberPatient"
* parameter[MemberBundle][0].part[MemberPatient].resource.resourceType = "Patient"
* parameter[MemberBundle][0].part[MemberPatient].resource.id = "patient-1"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[+].type = $V2IdentifierTypeCS#MB
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].system = "http://example.org/old-payer/identifiers/member"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].value = "55678"
* parameter[MemberBundle][0].part[MemberPatient].resource.identifier[=].assigner.display = "Old Payer"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.use = #official
* parameter[MemberBundle][0].part[MemberPatient].resource.name.family = "Person"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.given[0] = "Patricia"
* parameter[MemberBundle][0].part[MemberPatient].resource.name.given[1] = "Ann"
* parameter[MemberBundle][0].part[MemberPatient].resource.gender = #female
* parameter[MemberBundle][0].part[MemberPatient].resource.birthDate = "1974-12-25"

* parameter[MemberBundle][0].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.resourceType = "Coverage"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.id = "coverage-1"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.text.status = #generated
* parameter[MemberBundle][0].part[CoverageToMatch].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].system = "http://example.org/old-payer"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].value = "DH10001235"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.status = #draft
* parameter[MemberBundle][0].part[CoverageToMatch].resource.subscriberId = "1234564321"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.relationship = $CoverageRelationship#self
* parameter[MemberBundle][0].part[CoverageToMatch].resource.beneficiary.reference = "Patient/1"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.period.start = "2011-05-23"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.period.end = "2012-05-23"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.value = "9876543210"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].display = "Old Health Plan"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].type = $coverage-class#group
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].value = "CB135"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].type = $coverage-class#plan
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].value = "B37FC"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[+].type = $coverage-class#subplan
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[=].value = "P7"
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[+].type = $coverage-class#class
* parameter[MemberBundle][0].part[CoverageToMatch].resource.class[=].value = "SILVER"

* parameter[MemberBundle][0].part[Consent].name = "Consent"
* parameter[MemberBundle][0].part[Consent].resource.resourceType = "Consent"
* parameter[MemberBundle][0].part[Consent].resource.id = "consent-1"
* parameter[MemberBundle][0].part[Consent].resource.text.status = #generated
* parameter[MemberBundle][0].part[Consent].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* parameter[MemberBundle][0].part[Consent].resource.status = #active
* parameter[MemberBundle][0].part[Consent].resource.scope = $consentscope#patient-privacy
* parameter[MemberBundle][0].part[Consent].resource.category[disclosure] = $v3-ActCode#IDSCL
* parameter[MemberBundle][0].part[Consent].resource.patient.reference = "Patient/1"
* parameter[MemberBundle][0].part[Consent].resource.performer.reference = "Patient/1"
* parameter[MemberBundle][0].part[Consent].resource.sourceReference.reference = "http://example.org/DocumentReference/someconsent-1"
* parameter[MemberBundle][0].part[Consent].resource.policy[0].uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
* parameter[MemberBundle][0].part[Consent].resource.provision.type = #permit
* parameter[MemberBundle][0].part[Consent].resource.provision.period.start = "2023-12-01"
* parameter[MemberBundle][0].part[Consent].resource.provision.period.end = "2024-03-31"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].role = $provenance-participant-type#performer
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.identifier.value = "9876543210"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.display = "Old Health Plan"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].role = $v3-ParticipationType#IRCP
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.identifier.value = "0123456789"
* parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.display = "New Health Plan"
* parameter[MemberBundle][0].part[Consent].resource.provision.action[0] = $consentaction#disclose

* parameter[MemberBundle][0].part[CoverageToLink].resource.resourceType = "Coverage"
* parameter[MemberBundle][0].part[CoverageToLink].resource.id = "coverage-link-1"
* parameter[MemberBundle][0].part[CoverageToLink].resource.text.status = #generated
* parameter[MemberBundle][0].part[CoverageToLink].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* parameter[MemberBundle][0].part[CoverageToLink].resource.status = #draft
* parameter[MemberBundle][0].part[CoverageToLink].resource.identifier[memberid].system = "http://example.org/old-payer"
* parameter[MemberBundle][0].part[CoverageToLink].resource.identifier[memberid].value = "234567"
* parameter[MemberBundle][0].part[CoverageToLink].resource.subscriberId = "432156789"
* parameter[MemberBundle][0].part[CoverageToLink].resource.relationship = $CoverageRelationship#self
* parameter[MemberBundle][0].part[CoverageToLink].resource.beneficiary.reference = "Patient/1"
* parameter[MemberBundle][0].part[CoverageToLink].resource.period.start = "2011-05-23"
* parameter[MemberBundle][0].part[CoverageToLink].resource.period.end = "2012-05-23"
* parameter[MemberBundle][0].part[CoverageToLink].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[MemberBundle][0].part[CoverageToLink].resource.payor[0].identifier.value = "0123456789"
* parameter[MemberBundle][0].part[CoverageToLink].resource.payor[0].display = "New Health Plan"

// ------------------
// Record 2
// ------------------
// * parameter[MemberBundle][1].name = "MemberBundle"
// * parameter[MemberBundle][1].part[MemberPatient].name = "MemberPatient"
// * parameter[MemberBundle][1].part[MemberPatient].resource.resourceType = "Patient"
// * parameter[MemberBundle][1].part[MemberPatient].resource.id = "patient-2"
// * parameter[MemberBundle][1].part[CoverageToMatch].name = "CoverageToMatch"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.resourceType = "Coverage"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.id = "coverage-2"
// * parameter[MemberBundle][1].part[Consent].name = "Consent"
// * parameter[MemberBundle][1].part[Consent].resource.resourceType = "Consent"
// * parameter[MemberBundle][1].part[Consent].resource.id = "consent-2"
// * parameter[MemberBundle][1].part[CoverageToLink].name = "CoverageToLink"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.resourceType = "Coverage"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.id = "coverage-link-2"


// End of example by Reference

// Supporting instances

// Instance: patientin1
// InstanceOf: Patient
// * id = "patient-1"
// * identifier[+].type = $V2IdentifierTypeCS#MB
// * identifier[=].system = "http://example.org/old-payer/identifiers/member"
// * identifier[=].value = "55678"
// * identifier[=].assigner.display = "Old Payer"
// * name.use = #official
// * name.family = "Person"
// * name.given[0] = "Patricia"
// * name.given[1] = "Ann"
// * gender = #female
// * birthDate = "1974-12-25"


Instance: patientin2
InstanceOf: Patient
* id = "patient-2"
* identifier[+].type = $V2IdentifierTypeCS#MB
* identifier[=].system = "http://example.org/old-payer/identifiers/member"
* identifier[=].value = "55678"
* identifier[=].assigner.display = "Old Payer"
* name.use = #official
* name.family = "Smith"
* name.given[0] = "William"
* name.given[1] = "John"
* gender = #male
* birthDate = "1959-12-25"


// Instance: coveragein1
// InstanceOf: $HRexCoverage
// * id = "coverage-1"
// * text.status = #generated
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * identifier[memberid].system = "http://example.org/old-payer"
// * identifier[memberid].value = "DH10001235"
// * status = #draft
// * subscriberId = "1234564321"
// * relationship = $CoverageRelationship#self
// * beneficiary.reference = "Patient/1"
// * period.start = "2011-05-23"
// * period.end = "2012-05-23"
// * payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * payor[0].identifier.value = "9876543210"
// * payor[0].display = "Old Health Plan"
// * class[group].type = $coverage-class#group
// * class[group].value = "CB135"
// * class[plan].type = $coverage-class#plan
// * class[plan].value = "B37FC"
// * class[+].type = $coverage-class#subplan
// * class[=].value = "P7"
// * class[+].type = $coverage-class#class
// * class[=].value = "SILVER"

Instance: coveragein2
InstanceOf: $HRexCoverage
* id = "coverage-2"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* identifier[memberid].system = "http://example.org/old-payer"
* identifier[memberid].value = "DH10001235"
* status = #draft
* subscriberId = "9876543789"
* relationship = $CoverageRelationship#self
* beneficiary.reference = "Patient/2"
* period.start = "2011-05-23"
* period.end = "2012-05-23"
* payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* payor[0].identifier.value = "9876543210"
* payor[0].display = "Old Health Plan"
* class[group].type = $coverage-class#group
* class[group].value = "CB135"
* class[plan].type = $coverage-class#plan
* class[plan].value = "B37FC"
* class[+].type = $coverage-class#subplan
* class[=].value = "P7"
* class[+].type = $coverage-class#class
* class[=].value = "SILVER"


// Instance: coveragelink1
// InstanceOf: $HRexCoverage
// * id =  "coverage-link-1"
// * text.status = #generated
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * identifier[memberid].system = "http://example.org/old-payer"
// * identifier[memberid].value = "234567"
// * subscriberId = "432156789"
// * relationship = $CoverageRelationship#self
// * beneficiary.reference = "Patient/1"
// * period.start = "2011-05-23"
// * period.end = "2012-05-23"
// * payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * payor[0].identifier.value = "0123456789"
// * payor[0].display = "New Health Plan"


Instance: coveragelink2
InstanceOf: $HRexCoverage
* id =  "coverage-link-2"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* identifier[memberid].system = "http://example.org/old-payer"
* identifier[memberid].value = "234568"
* status = #draft
* subscriberId = "432156790"
* relationship = $CoverageRelationship#self
* beneficiary.reference = "Patient/2"
* period.start = "2011-05-23"
* period.end = "2012-05-23"
* payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
* payor[0].identifier.value = "0123456789"
* payor[0].display = "New Health Plan"


// Instance: consentin1
// InstanceOf: $HRexConsent
// * id = "consent-1"
// * text.status = #generated
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * status = #active
// * scope = $consentscope#patient-privacy
// * category[disclosure] = $v3-ActCode#IDSCL
// * patient.reference = "Patient/1"
// * performer.reference = "Patient/1"
// * sourceReference.reference = "http://example.org/DocumentReference/someconsent-1"
// * policy[0].uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
// * provision.type = #permit
// * provision.period.start = "2023-12-01"
// * provision.period.end = "2024-03-31"
// * provision.actor[source].role = $provenance-participant-type#performer
// * provision.actor[source].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * provision.actor[source].reference.identifier.value = "9876543210"
// * provision.actor[source].reference.display = "Old Health Plan"
// * provision.actor[recipient].role = $v3-ParticipationType#IRCP
// * provision.actor[recipient].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * provision.actor[recipient].reference.identifier.value = "0123456789"
// * provision.actor[recipient].reference.display = "New Health Plan"
// * provision.action[0] = $consentaction#disclose


Instance: consentin2
InstanceOf: $HRexConsent
* id = "consent-2"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
* status = #active
* scope = $consentscope#patient-privacy
* category[disclosure] = $v3-ActCode#IDSCL
* patient.reference = "Patient/2"
* performer.reference = "Patient/2"
* sourceReference.reference = "http://example.org/DocumentReference/someconsent-2"
* policy[0].uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
* provision.type = #permit
* provision.period.start = "2023-12-01"
* provision.period.end = "2024-03-31"
* provision.actor[source].role = $provenance-participant-type#performer
* provision.actor[source].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* provision.actor[source].reference.identifier.value = "9876543210"
* provision.actor[source].reference.display = "Old Health Plan"
* provision.actor[recipient].role = $v3-ParticipationType#IRCP
* provision.actor[recipient].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* provision.actor[recipient].reference.identifier.value = "0123456789"
* provision.actor[recipient].reference.display = "New Health Plan"
* provision.action[0] = $consentaction#disclose


// // Example of Multi-Member Match Request
// Instance: Multimembermatchpayerrequestexample
// InstanceOf: pdex-parameters-multi-member-match-bundle-in
// Title: "$multi-member-match payer example request"
// Description: "Example of more than one member being submitted to the PDex Payer-to-Payer Multiple Member Match Operation."
// Usage: #example
// * id = "payer-multi-member-match-in"
// // * parameter[0].name = "MemberBundle"
// // ------------------
// // Record 1
// // ------------------
// * parameter[MemberBundle][0].name = "MemberBundle"
//
// * parameter[MemberBundle][0].part[MemberPatient].name = "MemberPatient"
// * parameter[MemberBundle][0].part[MemberPatient].resource.resourceType = "Patient"
// * parameter[MemberBundle][0].part[MemberPatient].resource.id = "1"
// * parameter[MemberBundle][0].part[MemberPatient].resource.identifier.type = $V2IdentifierTypeCS#MB
// * parameter[MemberBundle][0].part[MemberPatient].resource.identifier.system = "http://example.org/old-payer/identifiers/member"
// * parameter[MemberBundle][0].part[MemberPatient].resource.identifier.value = "55678"
// * parameter[MemberBundle][0].part[MemberPatient].resource.identifier.assigner.display = "Old Payer"
// * parameter[MemberBundle][0].part[MemberPatient].resource.name.use = #official
// * parameter[MemberBundle][0].part[MemberPatient].resource.name.family = "Person"
// * parameter[MemberBundle][0].part[MemberPatient].resource.name.given[0] = "Patricia"
// * parameter[MemberBundle][0].part[MemberPatient].resource.name.given[1] = "Ann"
// * parameter[MemberBundle][0].part[MemberPatient].resource.gender = #female
// * parameter[MemberBundle][0].part[MemberPatient].resource.birthDate = "1974-12-25"
//
// * parameter[MemberBundle][0].part[CoverageToMatch].name = "CoverageToMatch"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.resourceType = "Coverage"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.id = "9876B1"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.text.status = #generated
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].system = "http://example.org/old-payer"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].value = "DH10001235"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.status = #draft
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.subscriberId = "1234564321"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.relationship = $CoverageRelationship#self
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.beneficiary.reference = "Patient/1"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.period.start = "2011-05-23"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.period.end = "2012-05-23"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].identifier.value = "9876543210"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.payor[0].display = "Old Health Plan"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].type = $coverage-class#group
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[group].value = "CB135"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].type = $coverage-class#plan
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[plan].value = "B37FC"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[+].type = $coverage-class#subplan
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[=].value = "P7"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[+].type = $coverage-class#class
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.class[=].value = "SILVER"
//
// * parameter[MemberBundle][0].part[Consent].name = "Consent"
// * parameter[MemberBundle][0].part[Consent].resource.resourceType = "Consent"
// * parameter[MemberBundle][0].part[Consent].resource.id = "consent-1"
// * parameter[MemberBundle][0].part[Consent].resource.text.status = #generated
// * parameter[MemberBundle][0].part[Consent].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * parameter[MemberBundle][0].part[Consent].resource.status = #active
// * parameter[MemberBundle][0].part[Consent].resource.scope = $consentscope#patient-privacy
// * parameter[MemberBundle][0].part[Consent].resource.category[disclosure] = $v3-ActCode#IDSCL
// * parameter[MemberBundle][0].part[Consent].resource.patient.reference = "Patient/1"
// * parameter[MemberBundle][0].part[Consent].resource.performer.reference = "Patient/1"
// * parameter[MemberBundle][0].part[Consent].resource.sourceReference.reference = "http://example.org/DocumentReference/someconsent-1"
// * parameter[MemberBundle][0].part[Consent].resource.policy[0].uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
// * parameter[MemberBundle][0].part[Consent].resource.provision.type = #permit
// * parameter[MemberBundle][0].part[Consent].resource.provision.period.start = "2023-12-01"
// * parameter[MemberBundle][0].part[Consent].resource.provision.period.end = "2024-03-31"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].role = $provenance-participant-type#performer
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.identifier.value = "9876543210"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[source].reference.display = "Old Health Plan"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].role = $v3-ParticipationType#IRCP
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.identifier.value = "0123456789"
// * parameter[MemberBundle][0].part[Consent].resource.provision.actor[recipient].reference.display = "New Health Plan"
// * parameter[MemberBundle][0].part[Consent].resource.provision.action[0] = $consentaction#disclose
// // ------------------
// // Record 2 in bundle
// // ------------------
// // * parameter[+].name = "MemberBundle"
// // * parameter[MemberBundle][1].name = "MemberBundle"
// * parameter[MemberBundle][1].part[MemberPatient].name = "MemberPatient"
// * parameter[MemberBundle][1].part[MemberPatient].resource.resourceType = "Patient"
// * parameter[MemberBundle][1].part[MemberPatient].resource.id = "2"
// * parameter[MemberBundle][1].part[MemberPatient].resource.identifier.type = $V2IdentifierTypeCS#MB
// * parameter[MemberBundle][1].part[MemberPatient].resource.identifier.system = "http://example.org/old-payer/identifiers/member"
// * parameter[MemberBundle][1].part[MemberPatient].resource.identifier.value = "45567"
// * parameter[MemberBundle][1].part[MemberPatient].resource.identifier.assigner.display = "Old Payer"
// * parameter[MemberBundle][1].part[MemberPatient].resource.name.use = #official
// * parameter[MemberBundle][1].part[MemberPatient].resource.name.family = "Smith"
// * parameter[MemberBundle][1].part[MemberPatient].resource.name.given[0] = "William"
// * parameter[MemberBundle][1].part[MemberPatient].resource.name.given[1] = "John"
// * parameter[MemberBundle][1].part[MemberPatient].resource.gender = #female
// * parameter[MemberBundle][1].part[MemberPatient].resource.birthDate = "1958-12-25"
//
// * parameter[MemberBundle][1].part[CoverageToMatch].name = "CoverageToMatch"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.resourceType = "Coverage"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.id = "876B10"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.text.status = #generated
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].system = "http://example.org/old-payer"
// * parameter[MemberBundle][0].part[CoverageToMatch].resource.identifier[memberid].value = "DH10001235"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.status = #draft
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.subscriberId = "9876543789"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.relationship = $CoverageRelationship#self
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.beneficiary.reference = "Patient/2"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.period
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.period.start = "2011-05-23"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.period.end = "2012-05-23"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.payor[0].identifier.value = "9876543210"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.payor[0].display = "Old Health Plan"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[group].type = $coverage-class#group
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[group].value = "CB135"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[plan].type = $coverage-class#plan
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[plan].value = "B37FC"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[+].type = $coverage-class#subplan
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[=].value = "P7"
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[+].type = $coverage-class#class
// * parameter[MemberBundle][1].part[CoverageToMatch].resource.class[=].value = "SILVER"
//
//
// * parameter[MemberBundle][1].part[Consent].name = "Consent"
// * parameter[MemberBundle][1].part[Consent].resource.resourceType = "Consent"
// * parameter[MemberBundle][1].part[Consent].resource.id = "consent-2"
// * parameter[MemberBundle][1].part[Consent].resource.text.status = #generated
// * parameter[MemberBundle][1].part[Consent].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * parameter[MemberBundle][1].part[Consent].resource.status = #active
// * parameter[MemberBundle][1].part[Consent].resource.scope = $consentscope#patient-privacy
// * parameter[MemberBundle][1].part[Consent].resource.category[disclosure] = $v3-ActCode#IDSCL
// * parameter[MemberBundle][1].part[Consent].resource.patient.reference = "Patient/2"
// * parameter[MemberBundle][1].part[Consent].resource.performer.reference = "Patient/2"
// * parameter[MemberBundle][1].part[Consent].resource.sourceReference.reference = "http://example.org/DocumentReference/someconsen-2"
// * parameter[MemberBundle][1].part[Consent].resource.policy[0].uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
// * parameter[MemberBundle][1].part[Consent].resource.provision.type = #permit
// * parameter[MemberBundle][1].part[Consent].resource.provision.period.start = "2023-12-01"
// * parameter[MemberBundle][1].part[Consent].resource.provision.period.end = "2024-03-31"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[source].role = $provenance-participant-type#performer
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[source].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[source].reference.identifier.value = "9876543210"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[source].reference.display = "Old Health Plan"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[recipient].role = $v3-ParticipationType#IRCP
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[recipient].reference.identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[recipient].reference.identifier.value = "0123456789"
// * parameter[MemberBundle][1].part[Consent].resource.provision.actor[recipient].reference.display = "New Health Plan"
// * parameter[MemberBundle][1].part[Consent].resource.provision.action[0] = $consentaction#disclose
//
//
// * parameter[MemberBundle][1].part[CoverageToLink].name = "CoverageToLink"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.resourceType = "Coverage"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.id = "AA87654"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.text.status = #generated
// * parameter[MemberBundle][1].part[CoverageToLink].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.identifier[memberid]
// * parameter[MemberBundle][1].part[CoverageToLink].resource.system = "http://example.org/new-payer/identifiers/coverage"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.value = "234567"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.status = #active
// * parameter[MemberBundle][1].part[CoverageToLink].resource.subscriberId = "432156789"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.relationship = $CoverageRelationship#self
// * parameter[MemberBundle][1].part[CoverageToLink].resource.beneficiary.reference = "Patient/2"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.payor
// * parameter[MemberBundle][1].part[CoverageToLink].resource.payor[0].identifier.system = "http://hl7.org/fhir/sid/us-npi"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.payor[0].identifier.value = "0123456789"
// * parameter[MemberBundle][1].part[CoverageToLink].resource.payor[0].display = "New Health Plan"

// End of Example

// ----------------------------------------------
// Example of Multi-Member Match Response
Instance: Multimembermatchpayerresponseexample
InstanceOf: pdex-parameters-multi-member-match-bundle-out
Title: "$multi-member-match payer example response"
Description: "Example of group record being returned in response to PDex Payer-to-Payer Multiple Member Match Operation."
Usage: #example
* id = "payer-multi-member-match-out"
// * parameter[ResourceIdentifier]
//   * name = "ResourceIdentifier"
//   * resource
//     * resourceType = "Group"
//     * text.status = #generated
//     * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
//     * id = "07e72a15407547bf9d03f522aa536a72"
//     * contained[0] = input-1
//     * contained[+] = input-2
//     * type =  http://hl7.org/fhir/group-type#person "Person"
//     * actual = true
//     * code = $MemberMatchResult#match "Matched"
//     * managingEntity
//       * identifier
//         * system = "http://hl7.org/fhir/sid/us-npi"
//         * value = "9876543210"
//       * display = "Old Health Plan"
//     * identifier
//       // new health plan taken from submission to multi-member match operation
//       * system = "http://hl7.org/fhir/sid/us-npi"
//       * value = "0123456789"
//     * member[0]
//       * entity
//         * reference = "Patient/1001"
//         * extension[matchedMember].valueReference.reference = "#1"
//     * member[+]
//       * entity
//         * reference = "Patient/2002"
//         * extension[matchedMember].valueReference.reference = "#2"
// * parameter[NoMatch]
//   * name = "NoMatch"
//   * resource
//     * resourceType = "Group"
//     * text.status = #generated
//     * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
//     * contained[0] = input-3
//     * type =  http://hl7.org/fhir/group-type#person "Person"
//     * actual = true
//     * code = $MemberMatchResult#nomatch "Not Matched"
//     * managingEntity
//       * identifier
//         * system = "http://hl7.org/fhir/sid/us-npi"
//         * value = "9876543210"
//       * display = "Old Health Plan"
//     * identifier
//       // new health plan taken from submission to multi-member match operation
//       * system = "http://hl7.org/fhir/sid/us-npi"
//       * value = "0123456789"
//     * member[0]
//       * entity
//         * reference = "#3"
//         * extension[nonMatchedMember].valueReference.reference = "#3"
// * parameter[ConsentConstraint]
//   * name = "ConsentConstraint"
//   * resource
//     * resourceType = "Group"
//     * text.status = #generated
//     * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"
//     * contained[0] = input-4
//     * type =  http://hl7.org/fhir/group-type#person "Person"
//     * actual = true
//     * code = $MemberMatchResult#consentconstraint "Consent Constraint"
//     * managingEntity
//       * identifier
//         * system = "http://hl7.org/fhir/sid/us-npi"
//         * value = "9876543210"
//       * display = "Old Health Plan"
//     * identifier
//       // new health plan taken from submission to multi-member match operation
//       * system = "http://hl7.org/fhir/sid/us-npi"
//       * value = "0123456789"
//     * member[0]
//       * entity
//         * reference = "#4"
//         * extension[nonMatchedMember].valueReference.reference = "#4"
* parameter[MatchedMembers]
  * name = "MatchedMembers"
  * resource
    * resourceType = "Group"
    * id = "07e72a15407547bf9d03f522aa536a72"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Matched members group</div>"
    * contained[0] = input-1
    * contained[+] = input-2
    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#match "Matched"
    * managingEntity
      * identifier.system = "http://hl7.org/fhir/sid/us-npi"
      * identifier.value = "9876543210"
      * display = "Old Health Plan"
    * identifier
      * system = "http://hl7.org/fhir/sid/us-npi"
      * value = "0123456789"
    * member[0]
      * entity.reference = "Patient/1001"
      * entity.extension[matchedMember].valueReference.reference = "#1"
    * member[+]
      * entity.reference = "Patient/2002"
      * entity.extension[matchedMember].valueReference.reference = "#2"

* parameter[NonMatchedMembers]
  * name = "NonMatchedMembers"
  * resource
    * resourceType = "Group"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Non-matched members group</div>"
    * contained[0] = input-3
    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#nomatch "Not Matched"
    * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * managingEntity.identifier.value = "9876543210"
    * managingEntity.display = "Old Health Plan"
    * identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * identifier.value = "0123456789"
    * member[0].entity.reference = "#3"
    * member[0].entity.extension[nonMatchedMember].valueReference.reference = "#3"

* parameter[ConsentConstrainedMembers]
  * name = "ConsentConstrainedMembers"
  * resource
    * resourceType = "Group"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consent-constrained members group</div>"
    * contained[0] = input-4
    * type = http://hl7.org/fhir/group-type#person "Person"
    * actual = true
    * code = $MemberMatchResult#consentconstraint "Consent Constraint"
    * managingEntity.identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * managingEntity.identifier.value = "9876543210"
    * managingEntity.display = "Old Health Plan"
    * identifier.system = "http://hl7.org/fhir/sid/us-npi"
    * identifier.value = "0123456789"
    * member[0].entity.reference = "#4"
    * member[0].entity.extension[nonMatchedMember].valueReference.reference = "#4"


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


