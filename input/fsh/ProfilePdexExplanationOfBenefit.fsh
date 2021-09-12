Profile:        PdexExplanationOfBenefit
Parent:         ExplanationOfBenefit
Id:             pdex-explanationofbenefit
Title:          "PDex Explanation of Benefit"
Description:    "The PDex ExplanationOfBenefit (EOB) profile is provided to enable payers to express Prior Authorization information to members"
* insert PdexStructureDefinitionContent

* status  1..1 MS
* priority 0..1
* priority from $Process-Priority (required)
* patient  1..1 MS
* patient only Reference(us-core-patient)
* enterer  0..1 MS
* enterer only Reference(us-core-practitioner or us-core-practitionerrole)
* insurer  1..1 MS
* insurer only Reference(us-core-organization)
* provider  1..1 MS
* provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)
* facility  0..1 MS
* facility only Reference(us-core-location)

* preAuthRefPeriod	0..1 MS
* preAuthRefPeriod  only Period
* preAuthRefPeriod  ^comment = "Prior Authorization in-effect period"

* careTeam.provider 1..1 MS
* careTeam.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* insurance.coverage only Reference(hrex-coverage)

* item.encounter only Reference(us-core-encounter)

// Added from CARIN bb EOBInpatientProfile.fsh

* item.productOrService from C4BBEOBInstitutionalProcedureCodes (required)
* insert EOBHeaderItemAdjudicationInvariant
* insert ItemAdjudicationInvariant
* insert ItemAdjudicationSlicing
* item.adjudication contains
adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
allowedunits 0..1 MS and
denialreason 0..* MS and
consumedunits 0..1 MS
* item.adjudication[denialreason].category = PDexAdjudicationDiscriminator#denialreason
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[allowedunits].category = PDexAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].value 1..1 MS
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount MS
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[consumedunits].category = PDexAdjudicationDiscriminator#consumedunits
* item.adjudication[consumedunits].value only decimal
* item.adjudication[consumedunits].value 1..1 MS

* insert AdjudicationInvariant
* insert AdjudicationSlicing
* adjudication MS
* item.adjudication  MS
* adjudication contains
adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
denialreason 0..* MS
* adjudication[adjudicationamounttype].category from C4BBAdjudication  (required)
* adjudication[adjudicationamounttype].amount 1..1

// End of addition from EOBInpatientProfile.fsh

* addItem.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* total.category 1..1 MS
* total.category ^short = "Prior Authorization utilization codes"
* total.category from PriorAuthorizationAmounts (extensible)

* total.extension contains
   PriorAuthorizationUtilization named priorauth-utilization 0..1 MS
