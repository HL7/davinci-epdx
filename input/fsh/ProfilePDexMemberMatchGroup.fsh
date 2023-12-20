// ------------------------------
Profile: PDexMemberMatchGroup
//Parent: $DaVinciPatientList
Parent: Group
Id: pdex-member-match-group
Title: "PDex Member Match Group"
Description: "A Group List created by the Bulk Member-Match operation. Based on the Group resource. An Extension is added to capture the submitted parameters for the member-match and an extension to record the success or failure of the match "
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* member.extension contains MatchParameters named matchedMember 0..1 MS
* member.extension[matchedMember] ^comment = "Add the content from the successful MemberMatch for an individual member in the Member-Match Request MemberBundle (Patient Demographics, CoverageFrom, optional CoverageLinkTo and Consent)"





