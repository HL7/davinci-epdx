Instance: payer-member-match
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/payer-member-match"
* version = "1.0.0"
* name = "PayerMemberMatch"
* title = "Payer Member Match Operation"
* status = #draft
* kind = #operation
* date = "2022-02-03T13:20:00+00:00"
* publisher = "HL7 International - Clinical Interoperability Council"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/cic"
* description = "The **$payer-member-match** operation allows one health plan to retrieve a unique identifier for a member from another health plan using a member's demographic and coverage information.  This identifier can then be used to perform subsequent queries and operations. Members implementing a deterministic match will require a match on member id or subscriber id at a minimum.  (I.e. A pure demographic match will not be supported by such implementations.)"
* jurisdiction = urn:iso:std:iso:3166#US
* affectsState = true
* code = #member-match
* resource = #Patient
* system = false
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-parameters-member-match-in"
* outputProfile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-parameters-member-match-out"
* parameter[0].name = #MemberPatient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Parameter submitted by the new plan **SHALL** contain US Core Patient containing member demographics."
* parameter[=].type = #Resource
* parameter[=].referencedFrom[0].source = "CoverageToMatch"
* parameter[=].referencedFrom[=].sourceId = "beneficiary"
* parameter[+].name = #Consent
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Consent held by the system seeking the match that grants permission to access the patient information information on the system for whom a patient is sought."
* parameter[=].type = #Resource
* parameter[+].name = #CoverageToMatch
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Resource
* parameter[+].name = #MemberIdentifier
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "This is the member identifier information for the patient as known by the server that is the target of the operation."
* parameter[=].type = #Identifier
