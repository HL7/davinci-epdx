Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
// * id = "payermultimembermatchin"
* parameter 0..* MS
* parameter.name = "MemberBundle"
* parameter.part ..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.ordered = false
  * ^slicing.rules = #openAtEnd
  * ^slicing.description = "slicing pattern for parameter.part"
* parameter.part contains
    MemberPatient 1..1 MS and
    CoverageToMatch 1..1 MS and
    CoverageToLink 0..1 MS and
    Consent 1..1 MS
* parameter.part[MemberPatient]
  * name MS
  * name = "MemberPatient" (exactly)
  * resource 1.. MS
  * resource only HRexPatientDemographics
* parameter.part[CoverageToMatch]   
  * name MS
  * name = "CoverageToMatch" (exactly)
  * resource 1.. MS
  * resource only HRexCoverage
* parameter.part[CoverageToLink]   
  * name MS
  * name = "CoverageToLink" (exactly)
  * resource 1.. MS
  * resource only HRexCoverage
* parameter.part[Consent]  
  * name MS
  * name = "Consent" (exactly)
  * resource 1.. MS
  * resource only PDexConsent
