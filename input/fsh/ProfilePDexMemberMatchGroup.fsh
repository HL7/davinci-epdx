// ------------------------------
// Successful Match Profile
Profile: PDexMemberMatchGroup
Parent: Group
Id: pdex-member-match-group
Title: "PDex Member Match Group"
Description: "A Group List created by the Payer to enable Bulk Payer-to-Payer API access by Other Payers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters for the access request."
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* contained 0..*
* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code MS
* characteristic.code.coding from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code.coding.code = #match
* characteristic.valueReference MS
* characteristic.valueReference ^comment = "Organization Identifier Reference of the Payer requesting the member match"
* characteristic.exclude = false
* characteristic.exclude ^comment = "Exclude is set to False"
* characteristic.period MS
* characteristic.period ^comment = "Enter date match performed (i.e. current date) as Period.start"

* member.entity.extension contains MatchParameters named matchedMember 0..1 MS
* member.entity.extension[matchedMember] ^comment = "Add the patient record from the successful MemberMatch for an individual member in the Member-Match Request MemberBundle (Patient Demographics)."

// ------------------------------
// No Match Profile
//
Profile: PDexMemberNoMatchGroup
Parent: Group
Id: pdex-member-no-match-group
Title: "PDex Member No Match Group"
Description: "A Group List created by the Payer to provide information back to a requesting payer about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics for the access request. The match may have failed for one of two reasons. a) No match on member. b) Matched but unable to comply with consent request."
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* contained 0..*
* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* member.entity ^comment = "Enter using a relative reference to the failed patient record."
* member.entity.extension contains MatchParameters named nonMatchedMember 0..1 MS
* member.entity.extension[nonMatchedMember] ^comment = "Add the patient record from the failed Member Match request (Patient Demographics)."






