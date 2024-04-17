/*
   Code Systems for Provenance
*/


CodeSystem: ProvenanceAgentRoleType
  Title: "Provenance Roles"
  Description: "CodeSystem for types of role relating to the creation or communication of referenced resources"
* ^experimental = false
* ^caseSensitive = false
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
// Remove duplicate codes that are defined in http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type
// or in http://terminology.hl7.org/CodeSystem/provenance-participant-type
// * #author "Author" "Person or entity that originated the referenced resource"
// * #custodian "Custodian" "The entity that is accountable for maintaining a true an accurate copy of the original record"
* #source "Source" "Organization, Practitioner or Payer who was the source of the referenced resource"
// * #transmitter "Transmitter" "Provenance Transmitter"


CodeSystem: ProvenancePayerDataSource
Title: "Provenance Payer Data Source Format"
Description: "CodeSystem for source formats that identify what non-FHIR source was used to create FHIR record(s)"
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #hl7v2other "HL7 v2" "HL7 v2 Message"
* #hl7v2oru "HL7 v2 ORU" "HL7 v2 Structured Observation Report(ORU) message"
* #hl7v2adt "HL7 v2 ADT" "HL7 v2 Admit, Discharge Transfer (ADT) message"
* #hl7v2r01 "HL7 v2 R01" "HL7 v2 Observation (R01) message"
* #hl7v2rsp "HL7 v2 RSP" "HL7 V2 Immunization Record Response"
* #hl7v2orm "HL7 v2 ORM" "HL7 v2 Orders"
* #hl7v2mdm "HL7 v2 MDM" "Medical Document Management"
* #hl7v2vxu "HL7 v2 VXU" "HL7 V2 Immunization Transaction"
* #hl7v3 "HL7 v3" "HL7 v3 Message"
* #hl7ccda "HL7 C-CDA" "HL7 Consolidated-Clinical Document Architecture"
* #hl7cda "HL7 CDA" "HL7 CDA documents that are not C-CDA"
* #hl7cdaqrda "HL7 CDA QRDA" "HL7 Quality Reporting Document"
* #hl7fhirdstu2 "FHIR DSTU2" "HL7 FHIR DSTU2"
* #hl7fhirdstu3 "FHIR STU3" "HL7 FHIR STU3"
* #hl7fhirr4 "FHIR R4" "HL7 FHIR R4"
* #x12837 "837 claim" "X12 837 Claim"
* #x12278 "278" "X12 Prior Authorization"
* #x12275 "275" "X12 Attachment"
* #x12other "X12" "X12 non-specific transaction"
* #script "NCPDP SCRIPT" "National Council for Prescription Drug Programs (NCPDP) SCRIPT message (eRx)"
* #ncpdp "NCPDP Telecommunication" "NCPDP Telecommunication transaction (pharmacy claims)"
* #capture "Direct Capture" "Direct Capture, such as into a payers case management system"
* #customtx "Trading Partner Format" "Trading Partner Proprietary format"
* #image "Image" "Fax or scanned document"
* #unstructured "Unstructured Document" "PDF, text and other unstructured document"
* #other "Other" "Any other document format not specifically defined"



CodeSystem: IdentifierTypeCS
Title: "Identifier Type"
Description: "Identifier Type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #tax "Tax ID Number" "Tax ID Number"
* #npi "National Provider Identifier" "National Provider Identifier"
* #clia "CLIA" "CLIA"
* #payerid "Payer ID" "Payer ID"
* #mb "Member ID" "Member ID"
* #mr "Medical Record Number" "Medical Record Number"
* #pt "Patient Account Number" "Patient Account Number"
* #um "Unique Member ID" "Unique Member ID"
* #cn "Claim Number" "Claim Number"



CodeSystem: PriorAuthorizationValueCodes
Title: "Prior Authorization Values"
Description: "Codes used to define Prior Authorization categories"
* ^experimental = false
* ^caseSensitive = false
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #submitted "Submitted" "Proposed amounts of units or services"
* #eligible "Eligible" "Eligible/agreed items or services"
* #utilized "Utilized" "Amount of items or services consumed to date"


CodeSystem: PDexAdjudicationDiscriminator
Title: "PDex Adjudication Discriminator"
Description: "Used as the discriminator for the data elements in adjudication and item.adjudication"
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #allowedunits	"allowed units" "defines the adjudication slice to define allowed units"
* #consumedunits "consumed units" "defines the adjudication slice to define consumed units"
* #denialreason "Denial Reason" "defines the adjudication slice to identify the denial reason"
* ^copyright = "This CodeSystem is not copyrighted."
* ^caseSensitive = false

// CodeSystemStubs.fsh contains stubs for external codesystems.
// taken from CARIN-BB
// Add Carin-BB Code System to Aliases
CodeSystem: PDexAdjudicationCS
Title: "PDex Adjudication Codes"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It complements the values defined in http://terminology.hl7.org/CodeSystem/adjudication."
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #coinsurance "Co-insurance" "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%."
* #noncovered "Noncovered" "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* #priorpayerpaid "Prior payer paid" "The reduction in the payment amount to reflect the carrier as a secondary payor."
* #paidbypatient "Paid by patient" "The amount paid by the patient at the point of service."
* #paidtoprovider "Paid to provider" "The amount paid to the provider."
* #paidtopatient "Paid to patient" "paid to patient"
* #memberliability "Member liability" "The amount of the member's liability."
* #discount "Discount" "The amount of the discount"
* #drugcost "Drug cost" "Price paid for the drug excluding mfr or other discounts.  It typically is the sum of the following components: ingredient cost, dispensing fee, sales tax, and vaccine administration"
//* #paid "Paid" "paid"
//* #denied "Denied"  "denied"
* ^copyright = "This CodeSystem is not copyrighted."
// * #innetwork "In-network" "in-network"
// * #outofnetwork "Out-of-network" "out-of-network"
// * #other "Other" "other"
// * #contracted "Contracted" "contracted"
// * #non-contracted "Non-contracted" "non-contracted"
// * #subscriber "Subscriber" "subscriber"
// * #provider "Provider" "provider"
// * #paid "Paid" "paid"
// * #denied "Denied"  "denied"
// * #submitted "Submitted" "The total submitted amount for the claim or group or line item."
// * #allowed "Allowed" "Allowed"
// * #deductible "Deductible" "Amount deducted from the eligible amount prior to adjudication."
// * #copay "copay" "Patient Co-Payment"
// * #payment "Payment" "payment"


CodeSystem: PDexPayerAdjudicationStatus
Title: "PDex Payer Adjudication Status"
Description: "Describes the various status fields used when payers adjudicate a claim, such as whether the claim was adjudicated in or out of network, if the provider was contracted or non-contracted for the service"
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #innetwork	"In Network" "Indicates the claim or claim line was paid in network.  This does not indicate the contracting status of the provider"
* #outofnetwork "Out Of Network" "Indicates the claim or claim line was paid out of network.  This does not indicate the contracting status of the provider"
* #other "Other" "Indicates other network status or when a network does not apply"
* #contracted "Contracted" "Indicates the provider was contracted for the service"
* #noncontracted "Non-Contracted" "Indicates the provider was not contracted for the service"
* #paid "Paid" "Indicates if the claim was approved for payment"
* #denied "Denied" "Indicates if the claim was denied"
* #partiallypaid "Partially Paid" "Indicates that some line items on the claim were denied"
* ^copyright = "This CodeSystem is not copyrighted."
* ^caseSensitive = false

CodeSystem: PDexSupportingInfoType
Title: "PDex Supporting Info Type"
Description: "Claim Information Category - Used as the discriminator for supportingInfo"
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #admissionperiod  "Admission Period" "Dates corresponding with the admission and discharge of the beneficiary to a facility"
* #pointoforigin  "Point Of Origin"  "UB-04 Source of Admission (FL-15) identifies the place where the patient was identified as needing admission to a facility."
* #admtype	"Admission Type"  "UB-04 Priority of the admission (FL-14) indicates, for example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled."
* #billingnetworkcontractingstatus	"Billing Network Contracting Status"       "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* #brandgenericindicator	"Brand Generic Indicator" "NCPDP code indicating whether the plan adjudicated the claim as a brand or generic drug."
* #clmrecvddate	"Claim Received Date" "Date the claim was received by the payer."
* #compoundcode "Compound Code" "NCPDP code indicating whether or not the prescription is a compound."
* #dawcode "DAW (Dispense As Written) Code" "NCPDP code indicating the prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication."
* #dayssupply	"Days Supply" "NCPDP value indicating the Number of days supply of medication dispensed by the pharmacy."
* #discharge-status  "Discharge Status"   "UB-04 Discharge Status (FL-17) indicates the patient’s status as of the discharge date for a facility stay."
* #drg	"DRG"	"DRG (Diagnosis Related Group), including the code system, the DRG version and the code value"
* #performingnetworkcontractingstatus	"Performing Network Contracting Status" "Indicates that the Performing Provider has a contract with the Payer as of the effective date of service or admission."
* #refillnum	"Refill Number"	  "NCPDP value indicating the number fill of the current dispensed supply (0, 1, 2, etc.)"
* #rxorigincode	"Rx Origin Code" "NCPDP code indicating whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy."
* #servicefacility  "Service Facility" "The facility where the service occurred.  Examples include hospitals, nursing homes, laboratories or homeless shelters."
* #typeofbill "Type of Bill"  "UB-04 Type of Bill (FL-04) provides specific information for payer purposes."
* #medicalrecordnumber "Medical Record Number" "Patient Medical Record Number associated with the specific claim."
* #patientaccountnumber "Patient Account Number" "Patient Account Number associated with the specific claim."
* ^copyright = "This CodeSystem is not copyrighted."
* ^caseSensitive = false


CodeSystem: PDexIdentifierType
Title: "PDex Identifier Type"
Description: "Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203 to define the type of identifier payers and providers assign to claims and patients"
* ^experimental = false
* ^caseSensitive = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
// * #tax "Tax ID Number" "Tax ID Number"  - use the TAX code from the base codesystem
* #npi "National Provider Identifier" "National Provider Identifier"
//* #clia "CLIA" "CLIA"
* #payerid "Payer ID" "Payer ID"
* #naiccode "NAIC Code" "NAIC Code"
//* #mb "Member ID" "Member ID" - not needed - defined in HL7
// * #mr "Medical Record Number" "Medical Record Number" - use the MR code from the base codesystem
* #pat "Patient Account Number" "Patient Account Number"
* #um "Unique Member ID" "Indicates that the patient identifier is a unique member identifier assigned by a payer across all lines of business"
* #uc "Unique Claim ID" "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* ^copyright = "This CodeSystem is not copyrighted."
* ^caseSensitive = false

// --------------------------
CodeSystem: OrgTypeCS
Title: "Organization Type"
Description: "Categories of organizations based on criteria in provider directories."
* ^experimental = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #fac "Facility" "A physical healthcare facility"
* #prvgrp "Provider Group" "A healthcare provider entity"
* #payer "Payer" "A healthcare payer"
* #atyprv "Atypical Provider" "Providers that do not provide healthcare"
* #bus "Non-Healthcare Business" "An organization that does not meet the definitions of a Healthcare or Atypical Provider, and is not a payer or healthcare facility"
* #ntwk "Network" "A healthcare provider insurance network"
* ^caseSensitive = true

//CodeSystem: PDexServiceTypeCodes
//Title: "Service Type Codes"
//Description: "X12 Service Type Codes used in Prior Authorization"
//* ^experimental = false
//* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
//* ^extension.valueCode = #fm

// -----------------------------------
// CodeSystem: PdexProviderExportModeCS
// Title: "PDex Provider Export Mode"
// Description: "Data Export Mode Types for Provider Export Operation."
// * ^experimental = false
// * ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension.valueCode = #fm
// * #delta "Delta" "Request new data/records since last requested date for a regular, pre-defined set of resource types."
// * #snapshot "Snapshot" "Retrieve data for snapshot purposes that will NOT be incorporated into the Patient Record."
// * #p2p "Payer-to-Payer" "Retrieve data for purposes of Payer-to-Payer Exchange."
// * ^caseSensitive = true

// -----------------------------------
CodeSystem: PdexMultiMemberMatchResultCS
Title: "PDex Multi-Member Match Result Code System"
Description: "Code set to describe the results group from a multi-member Match operation"
* ^experimental = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #match "Matched" "Group of successfully matched members from a multi-member match operation."
* #nomatch "Not Matched" "Group of submitted members that failed to result in a match in the multi-member match operation."
* #consentconstraint "Consent Constraint" "Group of successfully matched members but consent request cannot be complied with."
* ^caseSensitive = true

// ----------------------------------
CodeSystem: PdexMemberAttributionCS
Title: "PDex Provider Access API Attribution Code System"
Description: "Code set to identify group resources from a Member Attribution Process that is used by Provider Access API."
* ^experimental = false
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* #pdexprovidergroup "PDex Provider Group" "Group of members used for PDex Provider Access API. Group is generated by an Attribution process."
* ^caseSensitive = true
