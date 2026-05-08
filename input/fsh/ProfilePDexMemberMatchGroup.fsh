// ------------------------------
// Successful Match Profile
Profile: PDexMemberMatchGroup
Parent: Group
Id: pdex-member-match-group
Title: "PDex Member Match Group"
Description: "A Group List created by the Payer to enable Bulk Payer-to-Payer API access by Other Payers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters for the access request."
* ^experimental = true
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* contained 0..*
* contained ^comment = "Each contained Patient resource SHALL be the Patient resource submitted by the requester in the MemberBundle input parameter, preserving the original resource id, all identifier elements, and all demographic elements (name, birthDate, gender, address, telecom, communication, and other Patient elements supplied by the requester) so that the requester can unambiguously correlate each match result back to the submitted member. Responders SHALL NOT modify, abridge, or substitute the submitted Patient resource's id, identifiers, or demographic elements. Per FHIR R4 References (http://hl7.org/fhir/R4/references.html#contained), contained resources SHALL NOT carry meta.versionId, meta.lastUpdated, or meta.security and SHALL NOT themselves contain nested contained resources; where the submitted Patient resource carries any of those base-FHIR-prohibited elements, the responder SHALL remove them when copying the resource into Group.contained[], and doing so is not considered a violation of the preservation requirement. Where the same patient was submitted with multiple different Coverage plans, a contained Coverage resource MAY also be included to identify which (patient + coverage) pair this member entry corresponds to."
* type MS
* type = #person
* type ^short = "Type of group (members)"
* type ^definition = "Fixed to 'person'. Group.member entries reference Patient resources representing matched members."
* actual MS
* actual = true
* actual ^short = "Actual group (not definitional)"
* actual ^definition = "An actual list of matched members, not a conceptual/definitional group."
* managingEntity only Reference(Organization)
* managingEntity ^short = "Payer managing this group"
* managingEntity ^definition = "Reference to the Payer organization that created and is managing this matched-member Group. Constrained to Organization since the managing entity is always a Payer (i.e., a healthcare organization), not a Practitioner, PractitionerRole, or RelatedPerson."
* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code MS
* characteristic.code.coding from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code.coding.code = $MemberMatchResult#match
* characteristic.valueReference MS
* characteristic.valueReference ^comment = "Organization Identifier Reference of the Payer requesting the member match"
* characteristic.exclude = false
* characteristic.exclude ^comment = "Exclude is set to False"
* characteristic.period MS
* characteristic.period ^comment = "Enter date match performed (i.e. current date) as Period.start"

* member.entity.extension contains MatchParameters named matchedMember 1..1 MS
* member.entity.extension[matchedMember] ^comment = "SHALL reference the contained Patient resource that was submitted by the requester for this member in the MemberBundle input parameter. This enables the requester to cross-reference each matched result back to their original submitted demographics."
* member.entity.extension contains MatchCoverage named matchedCoverage 0..1 MS
* member.entity.extension[matchedCoverage] ^comment = "MAY reference a contained Coverage resource that was submitted alongside the Patient in the MemberBundle input parameter. SHALL be populated when the same patient was submitted with multiple different Coverage plans, to allow the requester to distinguish which (patient + coverage) pair this member entry corresponds to."

// ------------------------------
// No Match Profile
//
Profile: PDexMemberNoMatchGroup
Parent: Group
Id: pdex-member-no-match-group
Title: "PDex Member No Match Group"
Description: "A Group List created by the Payer to provide information back to a requesting payer about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics for the access request. The match may have failed for one of two reasons. a) No match on member. b) Matched but unable to comply with consent request."
* ^experimental = true
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* contained 0..*
* contained ^comment = "Each contained Patient resource SHALL be the Patient resource submitted by the requester in the MemberBundle input parameter, preserving the original resource id, all identifier elements, and all demographic elements (name, birthDate, gender, address, telecom, communication, and other Patient elements supplied by the requester) so that the requester can unambiguously correlate each match result back to the submitted member. Responders SHALL NOT modify, abridge, or substitute the submitted Patient resource's id, identifiers, or demographic elements. Per FHIR R4 References (http://hl7.org/fhir/R4/references.html#contained), contained resources SHALL NOT carry meta.versionId, meta.lastUpdated, or meta.security and SHALL NOT themselves contain nested contained resources; where the submitted Patient resource carries any of those base-FHIR-prohibited elements, the responder SHALL remove them when copying the resource into Group.contained[], and doing so is not considered a violation of the preservation requirement. Where the same patient was submitted with multiple different Coverage plans, a contained Coverage resource MAY also be included to identify which (patient + coverage) pair this member entry corresponds to."
* type MS
* type = #person
* type ^short = "Type of group (submitted members)"
* type ^definition = "Fixed to 'person'. Group.member entries reference (typically contained) Patient resources representing the submitted members that could not be matched or are consent-constrained."
* actual MS
* actual = true
* actual ^short = "Actual group (not definitional)"
* actual ^definition = "An actual list of submitted members for whom the match failed, not a conceptual/definitional group."
* managingEntity only Reference(Organization)
* managingEntity ^short = "Payer managing this group"
* managingEntity ^definition = "Reference to the Payer organization that created and is managing this no-match Group. Constrained to Organization since the managing entity is always a Payer (i.e., a healthcare organization), not a Practitioner, PractitionerRole, or RelatedPerson."
* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* member.entity ^comment = "Enter using a relative reference to the failed patient record."
* member.entity.extension contains MatchParameters named nonMatchedMember 1..1 MS
* member.entity.extension[nonMatchedMember] ^comment = "SHALL reference the contained Patient resource that was submitted by the requester for this member in the MemberBundle input parameter. This enables the requester to cross-reference each non-matched or consent-constrained result back to their original submitted demographics."
* member.entity.extension contains MatchCoverage named nonMatchedCoverage 0..1 MS
* member.entity.extension[nonMatchedCoverage] ^comment = "MAY reference a contained Coverage resource that was submitted alongside the Patient in the MemberBundle input parameter. SHALL be populated when the same patient was submitted with multiple different Coverage plans, to allow the requester to distinguish which (patient + coverage) pair this member entry corresponds to."






