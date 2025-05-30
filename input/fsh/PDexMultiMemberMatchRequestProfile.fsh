// Profile: PDexMultiMemberMatchRequestParameters
// Parent: Parameters
// Id: pdex-parameters-multi-member-match-bundle-in
// Title: "PDex $multi-member-match request"
// Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
// // * id = "payermultimembermatchin"
// * ^experimental = true
//
// // Declare MemberBundle as a top-level parameter
// * parameter ^slicing.discriminator.type = #value
// * parameter ^slicing.discriminator.path = "name"
// * parameter ^slicing.rules = #open
// * parameter contains MemberBundle 1..* MS
// // * parameter contains MemberBundle 1..1 MS
//
// * parameter[MemberBundle].name = "MemberBundle"
// * parameter[MemberBundle].name ^short = "Bundle of member elements to match"
//
// // * parameter[MemberBundle].type = #Parameters
// * parameter[MemberBundle].part ^slicing.discriminator.type = #value
// * parameter[MemberBundle].part ^slicing.discriminator.path = "name"
// * parameter[MemberBundle].part ^slicing.rules = #open
// * parameter[MemberBundle].part contains
//     MemberPatient 1..1 MS and
//     CoverageToMatch 1..1 MS and
//     CoverageToLink 0..1 MS and
//     Consent 1..1 MS
//
// * parameter[MemberBundle].part[MemberPatient].name = "MemberPatient"
// * parameter[MemberBundle].part[MemberPatient].name ^short = "Patient demographic info"
// // * parameter[MemberBundle].part[MemberPatient].resource 1..1
// * parameter[MemberBundle].part[MemberPatient].resource only $HRexPatientDemographics
//
// * parameter[MemberBundle].part[CoverageToMatch].name = "CoverageToMatch"
// // * parameter[MemberBundle].part[CoverageToMatch].resource 1..1
// * parameter[MemberBundle].part[CoverageToMatch].resource only $HRexCoverage
//
// * parameter[MemberBundle].part[CoverageToLink].name = "CoverageToLink"
// // * parameter[MemberBundle].part[CoverageToLink].resource 1..1
// * parameter[MemberBundle].part[CoverageToLink].resource only $HRexCoverage
//
// * parameter[MemberBundle].part[Consent].name = "Consent"
// // * parameter[MemberBundle].part[Consent].resource 1..1
// * parameter[MemberBundle].part[Consent].resource only $HRexConsent

Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
* ^experimental = true

// 1) Slice the top-level .parameter by its ‘name’ element
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open

// 2) Declare your one slice for MemberBundle
* parameter contains MemberBundle 1..*
* parameter[MemberBundle].name = "MemberBundle"
* parameter[MemberBundle].name ^short = "Bundle of member elements to match"

// 3) Now slice the .part array inside MemberBundle by part.name
* parameter[MemberBundle].part ^slicing.discriminator.type = #value
* parameter[MemberBundle].part ^slicing.discriminator.path = "name"
* parameter[MemberBundle].part ^slicing.rules = #open

// 4) Define each part slice
* parameter[MemberBundle].part contains MemberPatient 1..1
* parameter[MemberBundle].part[MemberPatient].name = "MemberPatient"
* parameter[MemberBundle].part[MemberPatient].name ^short = "Patient demographic info"
* parameter[MemberBundle].part[MemberPatient].resource only $HRexPatientDemographics

* parameter[MemberBundle].part contains CoverageToMatch 1..1
* parameter[MemberBundle].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MemberBundle].part[CoverageToMatch].resource only $HRexCoverage

* parameter[MemberBundle].part contains CoverageToLink 0..1
* parameter[MemberBundle].part[CoverageToLink].name = "CoverageToLink"
* parameter[MemberBundle].part[CoverageToLink].resource only $HRexCoverage

* parameter[MemberBundle].part contains Consent 1..1
* parameter[MemberBundle].part[Consent].name = "Consent"
* parameter[MemberBundle].part[Consent].resource only $HRexConsent
