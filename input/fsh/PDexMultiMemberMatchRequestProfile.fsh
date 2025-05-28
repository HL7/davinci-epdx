Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
// * id = "payermultimembermatchin"
* ^experimental = true
// * parameter 0..* MS
// * parameter.name = "MemberBundle"
// * parameter.name ^short = "Member Bundle: Patient, Coverage to Match, optional Coverage, and Consent"
// * parameter.part ..4 MS
// * parameter.part ^slicing.discriminator.type = #value
// * parameter.part ^slicing.discriminator.path = "name"
// * parameter.part ^slicing.ordered = false
// * parameter.part ^slicing.rules = #open
// * parameter.part ^slicing.description = "slicing pattern for parameter.part"
// * parameter[MemberBundle].name = "MemberBundle"
// * parameter[MemberBundle]
// * parameter[MemberBundle].part contains
//     MemberPatient 1..1 MS and
//     CoverageToMatch 1..1 MS and
//     CoverageToLink 0..1 MS and
//     Consent 1..1 MS
// * parameter.part[MemberPatient]
// * parameter.part[MemberPatient].name MS
// * parameter.part[MemberPatient].name = "MemberPatient" (exactly)
// * parameter.part[MemberPatient].resource 1.. MS
// * parameter.part[MemberPatient].resource only HRexPatientDemographics
// * parameter.part[CoverageToMatch]
// * parameter.part[CoverageToMatch].name MS
// * parameter.part[CoverageToMatch].name = "CoverageToMatch" (exactly)
// * parameter.part[CoverageToMatch].resource 1.. MS
// * parameter.part[CoverageToMatch].resource only HRexCoverage
// * parameter.part[CoverageToLink]
// * parameter.part[CoverageToLink].name MS
// * parameter.part[CoverageToLink].name = "CoverageToLink" (exactly)
// * parameter.part[CoverageToLink].resource 1.. MS
// * parameter.part[CoverageToLink].resource only HRexCoverage
// * parameter.part[Consent]
// * parameter.part[Consent].name MS
// * parameter.part[Consent].name = "Consent" (exactly)
// * parameter.part[Consent].resource 1.. MS
// * parameter.part[Consent].resource only $HRexConsent
// Declare MemberBundle as a top-level parameter
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains MemberBundle 1..1 MS

* parameter[MemberBundle].name = "MemberBundle"
* parameter[MemberBundle].part ^slicing.discriminator.type = #value
* parameter[MemberBundle].part ^slicing.discriminator.path = "name"
* parameter[MemberBundle].part ^slicing.rules = #open
* parameter[MemberBundle].part contains
    MemberPatient 1..1 MS and
    CoverageToMatch 1..1 MS and
    CoverageToLink 0..1 MS and
    Consent 1..1 MS

* parameter[MemberBundle].part[MemberPatient].name = "MemberPatient"
* parameter[MemberBundle].part[MemberPatient].resource 1..1
* parameter[MemberBundle].part[MemberPatient].resource only $HRexPatientDemographics

* parameter[MemberBundle].part[CoverageToMatch].name = "CoverageToMatch"
* parameter[MemberBundle].part[CoverageToMatch].resource 1..1
* parameter[MemberBundle].part[CoverageToMatch].resource only $HRexCoverage

* parameter[MemberBundle].part[CoverageToLink].name = "CoverageToLink"
* parameter[MemberBundle].part[CoverageToLink].resource 1..1
* parameter[MemberBundle].part[CoverageToLink].resource only $HRexCoverage

* parameter[MemberBundle].part[Consent].name = "Consent"
* parameter[MemberBundle].part[Consent].resource 1..1
* parameter[MemberBundle].part[Consent].resource only $HRexConsent
