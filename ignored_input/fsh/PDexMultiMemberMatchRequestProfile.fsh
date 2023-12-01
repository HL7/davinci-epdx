Profile: PDexMultiMemberMatchRequestParameterBundle
Parent: Parameters
Id: pdex-parameters-multi-member-match-bundle-in
Title: "PDex Parameters - Multiple Member Match Request Parameter Bundle Profile"
Description: """The Parameters profile for Da Vinci Find Member using Patient and Coverage Resources Request. The resource must contain:
  * MemberPatient - US Core Patient containing member demographics
  * CoverageToMatch - details of prior health plan coverage provided by the member, typically from their health plan coverage card
  * CoverageToLink - details of new or prospective health plan coverage, provided by the health plan based upon the member's enrolment
  * Consent - record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in."""
* parameter MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    memberMatchBundle 1..* MS
* parameter[memberMatchBundle]
  * name = "memberMatchBundle" (exactly)
  * name MS
  * part 1..* MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #closed
  * part contains
      memberPatient 1..1 MS and
      CoverageToMatch 1..1 MS and
      CoverageToLink 0..1 MS and
      Consent 1..1 MS
  * part[memberPatient]
    * name = "MemberPatient" (exactly)
    * name MS
    * resource 1.. MS
    * resource only HRexPatientDemographics
  * part[CoverageToMatch]
    * name = "CoverageToMatch" (exactly)
    * name MS
    * resource 1.. MS
    * resource only HRexCoverage
  * part[CoverageToLink]
    * name = "CoverageToLink" (exactly)
    * name MS
    * resource 1.. MS
    * resource only HRexCoverage
  * part[Consent]
    * name = "Consent" (exactly)
    * name MS
    * resource 1.. MS
    * resource only HRexConsent


//// --------------------------------------------
//Profile: PDexMemberMatchRequestParameterBundle
//Parent: Parameters
//Id: pdex-parameters-member-match-bundle-in
//Title: "PDex Parameters - Member Match Request Parameter Bundle Profile"
//Description: """The Parameters profile for Da Vinci Find Member using Patient and Coverage Resources Request. The resource must contain:
//  * MemberPatient - US Core Patient containing member demographics
//  * CoverageToMatch - details of prior health plan coverage provided by the member, typically from their health plan coverage card
//  * CoverageToLink - details of new or prospective health plan coverage, provided by the health plan based upon the member's enrolment
//  * Consent - record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in."""
//* parameter ..4 MS
//  * ^slicing.discriminator.type = #value
//  * ^slicing.discriminator.path = "name"
//  * ^slicing.rules = #closed
//* parameter contains
//    memberPatient 1..1 MS and
//    CoverageToMatch 1..1 MS and
//    CoverageToLink 0..1 MS and
//    Consent 1..1 MS
//* parameter[memberPatient]
//  * name = "MemberPatient" (exactly)
//  * name MS
//  * resource 1.. MS
//  * resource only HRexPatientDemographics
//* parameter[CoverageToMatch]
//  * name = "CoverageToMatch" (exactly)
//  * name MS
//  * resource 1.. MS
//  * resource only HRexCoverage
//* parameter[CoverageToLink]
//  * name = "CoverageToLink" (exactly)
//  * name MS
//  * resource 1.. MS
//  * resource only HRexCoverage
//* parameter[Consent]
//  * name = "Consent" (exactly)
//  * name MS
//  * resource 1.. MS
//  * resource only HRexConsent


