//
//  Value Sets for Payer Data Exchange
//

ValueSet: ProvenanceAgentType
Title: "Provenance Agent Type"
Description:  "Agent role performed relating to referenced resource"
* ^experimental = true
* codes from system ProvenanceAgentRoleType
* codes from system http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type
* codes from system http://terminology.hl7.org/CodeSystem/provenance-participant-type|0.1.0
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: ProvenancePayerSourceFormat
Title: "Payer source of data"
Description: "Source Data formats used as the source for FHIR referenced record by the Payer."
* ^experimental = true
* codes from system ProvenancePayerDataSource
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
// Description: "FDA National Drug Code (NDC)"
Description: """
The Drug Listing Act of 1972 requires registered drug establishments to provide the Food and Drug Administration (FDA) with a current list of all drugs manufactured, prepared, propagated, compounded, or processed by it for commercial distribution.  (See Section 510 of the Federal Food, Drug, and Cosmetic Act (Act) (21 U.S.C. § 360)). Drug products are identified and reported using a unique, three-segment number, called the National Drug Code (NDC), which serves as a universal product identifier for drugs. FDA publishes the listed NDC numbers and the information submitted as part of the listing information in the NDC Directory which is updated daily.

The information submitted as part of the listing process, the NDC number, and the NDC Directory are used in the implementation and enforcement of the Act.

Users should note:

Starting June 1, 2011, only drugs for which electronic listings (SPL) have been submitted to the FDA are included in the NDC Directory. Drugs for which listing information was last submitted to FDA on paper forms, prior to June 2009, are included on a separate file and will not be updated after June 2012.

Information regarding the FDA published NDC Directory can be found [here](https://www.fda.gov/drugs/drug-approvals-and-databases/national-drug-code-directory)

Users should note a few important items

*   The NDC Directory is updated daily.
*   The new NDC Directory contains ONLY information on final marketed drugs submitted to the FDA in SPL electronic listing files by labelers.
*   The NDC Directory does not contain all listed drugs. The new version includes the final marketed drugs which listing information were submitted electronically. It does not include animal drugs, blood products, or human drugs that are not in final marketed form, such as Active Pharmaceutical Ingredients(APIs), drugs for further processing, drugs manufactured exclusively for a private label distributor, or drugs that are marketed solely as part of a kit or combination product or inner layer of a multi-level packaged product not marketed individually. For more information about how certain kits or multi-level packaged drugs are addressed in the new NDC Directory, see the NDC Directory Package File definitions document. For the FDA Online Label Repository page and additional resources go to: [FDA Online Label Repository](https://labels.fda.gov/)
"""
* ^experimental = true
//  * codes from system $FDANationalDrugCode
* ^copyright = "NDC codes have no copyright acknowledgment or license requirements."
//
* codes from system $FDANationalDrugCodeCS
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

ValueSet: PriorAuthorizationAmounts
Title: "Prior Authorization value categories"
Description: "Codes to define Prior Authorization requested, agreed and utilized amounts."
* ^experimental = true
* codes from system PriorAuthorizationValueCodes
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

// ValueSet: ProcessPriority
// Title: "Value Set used to assign a priority for the issue"
// Description: "Codes to define the priorty to be applied to the issue"
// * ^experimental = true
// * codes from system $ProcessPriority
// * ^jurisdiction.coding = urn:iso:std:iso:3166#US


ValueSet: PDexAdjudication
Title: "PDex Adjudication"
Description: """
Describes the various amount fields used when payers receive and adjudicate a claim.  It includes the values
defined in http://terminology.hl7.org/CodeSystem/adjudication, as well as those defined in the PDex Adjudication CodeSystem.
"""
* ^experimental = true
* $HL7AdjudicationCS#submitted
* $HL7AdjudicationCS#copay
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible
* $HL7AdjudicationCS#benefit
* PDexAdjudicationCS#coinsurance "Coinsurance"
* PDexAdjudicationCS#noncovered "Noncovered"
* PDexAdjudicationCS#priorpayerpaid "Prior payer paid"
* PDexAdjudicationCS#paidbypatient "Paid by patient"
* PDexAdjudicationCS#paidtopatient "Paid to patient"
* PDexAdjudicationCS#paidtoprovider "Paid to provider"
* PDexAdjudicationCS#memberliability "Member liability"
* PDexAdjudicationCS#discount "Discount"
* PDexAdjudicationCS#drugcost "Drug cost"
* ^copyright = "This Valueset is not copyrighted."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

ValueSet: PDexAdjudicationCategoryDiscriminator
Title: "PDex Adjudication Category Discriminator"
Description: """
Used as the discriminator for adjudication.category and item.adjudication.category for the PDex Prior Authorization.
"""
* ^experimental = true
* codes from valueset PDexAdjudication
* codes from valueset PDexPayerBenefitPaymentStatus
* codes from system PDexAdjudicationCS
* ^copyright = "This Valueset is not copyrighted."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

ValueSet: PDexPayerBenefitPaymentStatus
Title: "PDex Payer Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* ^experimental = true
* PDexPayerAdjudicationStatus#innetwork	"In Network"
* PDexPayerAdjudicationStatus#outofnetwork "Out Of Network"
* PDexPayerAdjudicationStatus#other "Other"
* ^copyright = "This Valueset is not copyrighted."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

ValueSet: PriorAuthServiceTypeCodes
Title: "Prior Authorization Service Type Codes (X12)"
Description: "Indicates the Type of Service that a Prior Authorization is covering"
* ^experimental = true
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
//* codes from PDexServiceTypeCodes
* codes from system $X12ServiceType

ValueSet: X12278ReviewDecisionReasonCode
Title: "X12 278 Review Decision Reason Codes"
Description: "Codes used to identify the reason for the health care service review outcome."
* ^experimental = true
* ^copyright = """
This value set contains codes maintained by X12. All X12 work products are copyrighted.
See their website for licensing terms and conditions.
"""
* codes from system https://codesystem.x12.org/external/886
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: PDexSupportingInfoType
Title: "PDex SupportingInfo Type"
Description: """
Used as the discriminator for the types of supporting information for the PDEX Prior Authorization.
Based on the CARIN IG for Blue Button� Implementation Guide.
"""
* ^experimental = true
* codes from system PDexSupportingInfoType
* ^copyright = "This Valueset is not copyrighted."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: PDexPAInstitutionalProcedureCodesVS
Title: "Prior Authorization Procedure Codes - AMA CPT - CMS HCPCS - CMS HIPPS"
Description: """
The Value Set is a combination of three Code Systems: CPT (HCPCS I), HCPCS II procedure codes, and HIPPS rate codes. They are submitted by providers to payers to convey the specific procedure performed. Procedure Codes leverage US Core Procedure Codes composition.

The target set for this value set are the procedure codes from the CPT and HCPCS files and the rate codes from the HIPPS files.

The Current Procedural Terminology (CPT) code set, created and maintained by the American Medical Association, is the language of medicine today and the code to its future. This system of terminology is the most widely accepted medical nomenclature used to report medical procedures and services under public and private health insurance programs. CPT coding is also used for administrative management purposes such as claims processing and developing guidelines for medical care review. Each year, via a rigorous, evidence-based and transparent process, the independent CPT Editorial Panel revises, creates or deletes hundreds of codes in order to reflect current medical practice.

Designated by the U.S. Department of Health and Human Services under the Health Insurance Portability and Accountability Act (HIPAA) as a national coding set for physician and other health care professional services and procedures, CPT’s evidence-based codes accurately encompass the full range of health care services.

All CPT codes are five-digits and can be either numeric or alphanumeric, depending on the category. CPT code descriptors are clinically focused and utilize common standards so that a diverse set of users can have common understanding across the clinical health care paradigm.

There are various types of CPT codes:

**Category I:** These codes have descriptors that correspond to a procedure or service. Codes range from 00100–99499 and are generally ordered into sub-categories based on procedure/service type and anatomy.

**Category II:** These alphanumeric tracking codes are supplemental codes used for performance measurement. Using them is optional and not required for correct coding.

**Category III:** These are temporary alphanumeric codes for new and developing technology, procedures and services. They were created for data collection, assessment and in some instances, payment of new services and procedures that currently don’t meet the criteria for a Category I code.

**Proprietary Laboratory Analyses (PLA) codes:** Recently added to the CPT code set, these codes describe proprietary clinical laboratory analyses and can be either provided by a single (solesource) laboratory or licensed or marketed to multiple providing laboratories that are cleared or approved by the Food and Drug Administration (FDA)). This category includes but is not limited to Advanced Diagnostic Laboratory Tests (ADLTs) and Clinical Diagnostic Laboratory Tests (CDLTs), as defined under the Protecting Access to Medicare Act of 2014 (PAMA).

To obtain CPT, please see the license request form [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020)

The Level II HCPCS codes, which are established by CMS's Alpha-Numeric Editorial Panel, primarily represent items and supplies and non-physician services not covered by the American Medical Association's Current Procedural Terminology-4 (CPT-4) codes; Medicare, Medicaid, and private health insurers use HCPCS procedure and modifier codes for claims processing.  Level II alphanumeric procedure and modifier codes comprise the A to V range.

General information can be found here: [https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo)

Releases can be found here: [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets)

These files contain the Level II alphanumeric HCPCS procedure and modifier codes, their long and short descriptions, and applicable Medicare administrative, coverage and pricing data.

The Health Insurance Prospective Payment System (HIPPS) rate codes represent specific sets
of patient characteristics (or case-mix groups) health insurers use to make payment
determinations under several prospective payment systems. Case-mix groups are
developed based on research into utilization patterns among various provider types. For
the payment systems that use HIPPS codes, clinical assessment data is the basic input. A
standard patient assessment instrument is interpreted by case-mix grouping software
algorithms, which assign the case mix group. For payment purposes, at least one HIPPS
code is defined to represent each case-mix group. These HIPPS codes are reported on
claims to insurers.
Institutional providers use HIPPS codes on claims in association with special revenue
codes. One revenue code is defined for each prospective payment system that requires
HIPPS codes. HIPPS codes are placed in data element SV202 on the electronic 837
institutional claims transaction, using an HP qualifier, or in Form Locator (FL) 44
(\"HCPCS/rate\") on a paper UB-04 claims form. The associated revenue code is placed in
data element SV201 or in FL 42. In certain circumstances, multiple HIPPS codes may
appear on separate lines of a single claim.

HIPPS codes are alpha-numeric codes of five digits. Each code contains intelligence,
with certain positions of the code indicating the case mix group itself, and other positions
providing additional information. The additional information varies among HIPPS codes
pertaining to different payment systems, but often provides information about the clinical
assessment used to arrive at the code. Which positions of the code carry the case mix
group information may also vary by payment systems.
"""
* ^experimental = true
* codes from system $CPT
* codes from system $CMSHCPCSCodes
* codes from system $CMSHIPPSCodes
* include $HL7DataAbsentReason#not-applicable "Not Applicable"
* ^copyright = """
Current Procedural Terminology (CPT) is copyright 2020 American Medical Association. All rights reserved

See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)

CMS maintains HIPPS. There are no known constraints on the use of HIPPS. See more information about HIPPS codes [here](https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes)
"""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

// --------------------------
ValueSet: OrgTypeVS
Title: "Organization Type VS"
Description:  "Categories of organizations based on criteria in provider directories."
* ^experimental = true
* codes from system OrgTypeCS
* OrgTypeCS#payer   // Organization profile uses only this type
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


// -------------------------
// eliminating - Adding fragment to exportType parameter in $Davinci-data-export
// ValueSet: PDexProviderExportModeVS
// Title: "PDex Provider Export Value Set"
// Description: "Provider Request Export Mode "
// * ^experimental = false
// * codes from system PdexProviderExportModeCS
// * ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension.valueCode = #fm


// -------------------------
// Type of multi-member match group
ValueSet: PDexMultiMemberMatchResultVS
Title: "PDex Multi-Member Match Result Value Set"
Description: "Codes to describe the results group from a multi-member Match operation or Member Attribution Process."
* ^experimental = true
* codes from system PdexMultiMemberMatchResultCS
* codes from system PdexMemberAttributionCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
