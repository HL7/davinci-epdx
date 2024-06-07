Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
// * id = "payermultimembermatchin"
* parameter 0..* MS
* parameter.name = "MemberBundle"
* parameter.part ..4 MS
* parameter.part ^slicing.discriminator.type = #value
* parameter.part ^slicing.discriminator.path = "$this.name"
* parameter.part ^slicing.ordered = false
* parameter.part ^slicing.rules = #openAtEnd
* parameter.part ^slicing.description = "slicing pattern for parameter.part"
* parameter.part contains
    MemberPatient 1..1 MS and
    CoverageToMatch 1..1 MS and
    CoverageToLink 0..1 MS and
    Consent 1..1 MS
* parameter.part[MemberPatient]
* parameter.part[MemberPatient].name MS
* parameter.part[MemberPatient].name = "MemberPatient" (exactly)
* parameter.part[MemberPatient].resource 1.. MS
* parameter.part[MemberPatient].resource only HRexPatientDemographics
* parameter.part[CoverageToMatch]
* parameter.part[CoverageToMatch].name MS
* parameter.part[CoverageToMatch].name = "CoverageToMatch" (exactly)
* parameter.part[CoverageToMatch].resource 1.. MS
* parameter.part[CoverageToMatch].resource only HRexCoverage
* parameter.part[CoverageToLink]
* parameter.part[CoverageToLink].name MS
* parameter.part[CoverageToLink].name = "CoverageToLink" (exactly)
* parameter.part[CoverageToLink].resource 1.. MS
* parameter.part[CoverageToLink].resource only HRexCoverage
* parameter.part[Consent]
* parameter.part[Consent].name MS
* parameter.part[Consent].name = "Consent" (exactly)
* parameter.part[Consent].resource 1.. MS
* parameter.part[Consent].resource only PDexConsent
