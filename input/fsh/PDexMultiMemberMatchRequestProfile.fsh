Profile: PDexMultiMemberMatchRequestParameters
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex $multi-member-match request"
Description: "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system"
* parameter 0..* 
* parameter MS
* parameter.name = "MemberBundle"
* parameter.part ..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter.part contains
    memberPatient 1..1 MS and
    CoverageToMatch 1..1 MS and
    CoverageToLink 0..1 MS and
    Consent 1..1 MS
* parameter.part[memberPatient]
  * name = "MemberPatient" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexPatientDemographics
* parameter.part[CoverageToMatch]
  * name = "CoverageToMatch" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexCoverage
* parameter.part[CoverageToLink]
  * name = "CoverageToLink" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexCoverage
* parameter.part[Consent]
  * name = "Consent" (exactly)
  * name MS
  * resource 1.. MS
  * resource only HRexConsent
