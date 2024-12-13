Profile: PdexPriorAuthorization
Parent: ExplanationOfBenefit
Id: pdex-priorauthorization
Title: "PDex Prior Authorization"
Description: "The PDex Prior Authorization (PPA) profile is based on the ExplanationOfBenefit resource and is provided to enable payers to express Prior Authorization information to members."
* ^experimental = true
* insert PdexStructureDefinitionContent
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* meta.profile 1..*
* insert Metaprofile-supportedProfile-slice
// * meta.profile[supportedProfile] = Canonical(PdexPriorAuthorization|2.0.0)
* meta.profile[supportedProfile] = Canonical(PdexPriorAuthorization)
* extension contains LevelOfServiceCode named levelOfServiceType 0..1 MS
* extension[levelOfServiceType] ^short = "A code specifying the level of service being requested (UM06)"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* status  1..1 MS
* use 1..1 MS
* use = #preauthorization
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
* type 1..1 MS

* preAuthRefPeriod	0..1 MS
* preAuthRefPeriod  only Period
* preAuthRefPeriod  ^comment = "Prior Authorization in-effect period"

* careTeam.provider 1..1 MS
* careTeam.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* insurance.coverage only Reference(hrex-coverage)

* item.extension contains
    $ExtensionItemTraceNumber named itemTraceNumber 0..* MS and
	$ExtensionItemPreAuthIssueDate named preAuthIssueDate 0..1 MS and
	$ExtensionItemPreAuthPeriod named preAuthPeriod 0..1 MS and
	$ExtensionAuthorizationNumber named previousAuthorizationNumber 0..1 MS and
	$ExtensionAdministrationReferenceNumber named administrationReferenceNumber 0..1 MS and
	$ExtensionItemAuthorizedDetail named authorizedItemDetail 0..1 MS and
	$ExtensionItemAuthorizedProvider named authorizedProvider 0..* MS
* item.extension[itemTraceNumber] ^short = "Uniquely identifies this claim item. (2000F-TRN)"
* item.extension[preAuthIssueDate] ^short = "The date when this item's preauthorization was issued."
* item.extension[preAuthPeriod] ^short = "The date/period when this item's preauthorization is valid."
* item.extension[previousAuthorizationNumber] ^short = "A string assigned by the UMO to an authorized review outcome associated with this service item."
* item.extension[administrationReferenceNumber] ^short = "A string assigned by the UMO to the original disallowed review outcome associated with this service item."
* item.extension[authorizedItemDetail] ^short = "The details of what has been authorized for this item if different from what was requested."
* item.extension[authorizedProvider] ^short = "The specific provider who has been authorized to provide this item."

* item.category 0..1 MS
//* item.category from https://x12.org/codes/service-type-codes
* item.category from PriorAuthServiceTypeCodes
* item.category ^binding.description = "Codes identifying business groupings for health care services or benefits. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."
* item.encounter only Reference(us-core-encounter)

// Added from CARIN bb EOBInpatientProfile.fsh

* item.productOrService from PDexPAInstitutionalProcedureCodesVS (required)
// * insert EOBHeaderItemAdjudicationInvariant
// * insert ItemAdjudicationInvariant
* insert ItemAdjudicationSlicing
* item.adjudication contains
adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
allowedunits 0..1 MS and
denialreason 0..* MS and
consumedunits 0..1
// * insert ItemAdjudicationExtensionSlicing
* item.adjudication[denialreason].category = PDexAdjudicationDiscriminator#denialreason // (exactly)
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[allowedunits].category = PDexAdjudicationDiscriminator#allowedunits  // (exactly)
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].value 1..1 MS
* item.adjudication[adjudicationamounttype].category from PDexAdjudication
* item.adjudication[adjudicationamounttype].amount MS
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[consumedunits].category = PDexAdjudicationDiscriminator#consumedunits // (exactly)
* item.adjudication[consumedunits].value only decimal
* item.adjudication[consumedunits].value 1..1
* item.adjudication.extension contains ReviewAction named reviewAction 0..1 MS
  and WhenAdjudicated named adjudicationActionDate 0..1 MS
* item.adjudication.extension[reviewAction] ^short = "The details of the review action that is necessary for the authorization at the line level."
* item.adjudication.extension[adjudicationActionDate] ^short = "The date/time when an Adjudication Action occured."
* insert AdjudicationInvariant
* insert AdjudicationSlicing
* adjudication MS
//* item.adjudication  MS
* adjudication contains
adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
denialreason 0..* MS
* adjudication[adjudicationamounttype].category from PDexAdjudication  (required)
* adjudication[adjudicationamounttype].amount 1..1
* adjudication.extension contains ReviewAction named reviewAction 0..1 MS
  and WhenAdjudicated named adjudicationActionDate 0..1 MS
* adjudication.extension[reviewAction] ^short = "The details of the review action that is necessary for the authorization for the entire request."
* adjudication.extension[adjudicationActionDate] ^short = "The date/time when an Adjudication Action occured."

// End of addition from EOBInpatientProfile.fsh

* addItem.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* total.category 1..1 MS
* total.category ^short = "Prior Authorization utilization codes"
* total.category from PriorAuthorizationAmounts (extensible)

* total.extension contains
   PriorAuthorizationUtilization named priorauth-utilization 0..1 MS
