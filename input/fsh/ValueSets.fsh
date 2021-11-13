//
//  Value Sets for Payer Data Exchange
//

ValueSet: ProvenanceAgentType
Title:        "Provenance Agent Type"
Description:  "Agent role performed relating to referenced resource"
* codes from system ProvenanceAgentRoleType
* ^jurisdiction.coding = urn:iso:std:iso:3166#US


ValueSet: ProvenancePayerSourceFormat
Title: "Payer source of data"
Description: "Source Data formats used as the source for FHIR referenced record by the Payer."
* codes from system ProvenancePayerDataSource
* ^jurisdiction.coding = urn:iso:std:iso:3166#US

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
// Description: "FDA National Drug Code (NDC)"
Description: "The Drug Listing Act of 1972 requires registered drug establishments to provide the Food and Drug Administration (FDA) with a current list of all drugs manufactured, prepared, propagated, compounded, or processed by it for commercial distribution.  (See Section 510 of the Federal Food, Drug, and Cosmetic Act (Act) (21 U.S.C. § 360)). Drug products are identified and reported using a unique, three-segment number, called the National Drug Code (NDC), which serves as a universal product identifier for drugs. FDA publishes the listed NDC numbers and the information submitted as part of the listing information in the NDC Directory which is updated daily.

The information submitted as part of the listing process, the NDC number, and the NDC Directory are used in the implementation and enforcement of the Act.

Users should note:

Starting June 1, 2011, only drugs for which electronic listings (SPL) have been submitted to FDA are included in the NDC Directory. Drugs for which listing information was last submitted to FDA on paper forms, prior to June 2009, are included on a separate file and will not be updated after June 2012.

Information regarding the FDA published NDC Directory can be found [here](https://www.fda.gov/drugs/drug-approvals-and-databases/national-drug-code-directory)

Users should note a few important items

*   The NDC Directory is updated daily.
*   The new NDC Directory contains ONLY information on final marketed drugs submitted to FDA in SPL electronic listing files by labelers.
*   The NDC Directory does not contain all listed drugs. The new version includes the final marketed drugs which listing information were submitted electronically. It does not include animal drugs, blood products, or human drugs that are not in final marketed form, such as Active Pharmaceutical Ingredients(APIs), drugs for further processing, drugs manufactured exclusively for a private label distributor, or drugs that are marketed solely as part of a kit or combination product or inner layer of a multi-level packaged product not marketed individually. For more information about how certain kits or multi-level packaged drugs are addressed in the new NDC Directory, see the NDC Directory Package File definitions document. For the FDA Online Label Repository page and additional resources go to: [FDA Online Label Repository](https://labels.fda.gov/)"
//  * codes from system $FDANationalDrugCode
* ^copyright = "NDC codes have no copyright acknowledgment or license requirements."
//
* codes from system $FDANationalDrugCodeCS
* ^jurisdiction.coding = urn:iso:std:iso:3166#US

ValueSet: PriorAuthorizationAmounts
Title: "Prior Authorization value categories"
Description: "Codes to define Prior Authorization requested, agreed and utilized amounts."
* codes from system PriorAuthorizationValueCodes
* ^jurisdiction.coding = urn:iso:std:iso:3166#US

// ValueSet: ProcessPriority
// Title: "Value Set used to assign a priority for the issue"
// Description: "Codes to define the priorty to be applied to the issue"
// * codes from system $ProcessPriority
// * ^jurisdiction.coding = urn:iso:std:iso:3166#US


ValueSet: PDexAdjudication
Title: "PDex Adjudication"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It includes the values
defined in http://terminology.hl7.org/CodeSystem/adjudication, as well as those defined in the PDex Adjudication CodeSystem."
* $HL7AdjudicationCS#submitted
* $HL7AdjudicationCS#copay
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible
* $HL7AdjudicationCS#benefit
* PDexAdjudication#coinsurance "Coinsurance"
* PDexAdjudication#noncovered "Noncovered"
* PDexAdjudication#priorpayerpaid "Prior payer paid"
* PDexAdjudication#paidbypatient "Paid by patient"
* PDexAdjudication#paidtopatient "Paid to patient"
* PDexAdjudication#paidtoprovider "Paid to provider"
* PDexAdjudication#memberliability "Member liability"
* PDexAdjudication#discount "Discount"
* PDexAdjudication#drugcost "Drug cost"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: PDexAdjudicationCategoryDiscriminator
Title: "PDex Adjudication Category Discriminator"
Description: "Used as the discriminator for adjudication.category and item.adjudication.category for the PDex Prior Authorization"
* codes from valueset PDexAdjudication
* codes from valueset PDexPayerBenefitPaymentStatus
* codes from system PDexAdjudicationDiscriminator
* ^copyright = "This Valueset is not copyrighted."

ValueSet: PDexPayerBenefitPaymentStatus
Title: "PDex Payer Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* PDexPayerAdjudicationStatus#innetwork	"In Network"
* PDexPayerAdjudicationStatus#outofnetwork "Out Of Network"
* PDexPayerAdjudicationStatus#other "Other"
* ^copyright = "This Valueset is not copyrighted."

// ValueSet: PriorAuthServiceTypeCodes
// Title: "Prior Authorization Service Type Codes (X12)"
// Description: "Indicates the Type of Service that a Prior Authorization is covering"
// * ^jurisdiction.coding = urn:iso:std:iso:3166#US
// * codes from PDexServiceTypeCodes


ValueSet: X12278ReviewDecisionReasonCode
Title: "X12 278 Review Descision Reason Codes"
Description: "Codes used to identify the reason for the health care service review outcome."
* ^copyright = "This value set contains codes maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."
* codes from system https://codesystem.x12.org/external/886


ValueSet: PDexSupportingInfoType
Title: "PDex SupportingInfo Type"
Description: "Used as the discriminator for the types of supporting information for the PDEX Prior Authorization. Based on the CARIN IG for Blue Button� Implementation Guide."
* codes from system PDexSupportingInfoType
* ^copyright = "This Valueset is not copyrighted."


