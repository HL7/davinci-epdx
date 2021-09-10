/*
   Code Systems for Provenance
*/


CodeSystem: ProvenanceAgentRoleType
  Title: "Provenance Roles"
  Description: "CodeSystem for types of role relating to the creation or communication of referenced resources"
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* #author "Author" "Person or entity that originated the referenced resource"
* #source "Source" "Organization, Practitioner or Payer who was the source of the referenced resource"
* #transmitter "Transmitter" "Provenance Transmitter"


CodeSystem: ProvenancePayerDataSource
Title: "Provenance Payer Data Source Format"
Description: "CodeSystem for source formats that identify what non-FHIR source was used to create FHIR record(s)"
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
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
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* #submitted "Submitted" "Proposed amounts of units or services"
* #eligible "Eligible" "Eligible/agreed items or services"
* #utilized "Utilized" "Amount of items or services consumed to date"


CodeSystem: PDexAdjudicationDiscriminator
Title: "PDex Adjudication Discriminator"
Description: "Used as the discriminator for the data elements in adjudication and item.adjudication"
* #allowedunits	"allowed units" "defines the adjudication slice to define allowed units"
* #consumedunits "consumed units" "defines the adjudication slice to define consumed units"
* #denialreason "Denial Reason" "defines the adjudication slice to identify the denial reason"
* ^copyright = "This CodeSystem is not copyrighted."

// CodeSystemStubs.fsh contains stubs for external codesystems.
CodeSystem: C4BBAdjudication
Title: "C4BB Adjudication"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It complements the values defined in http://terminology.hl7.org/CodeSystem/adjudication."
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


CodeSystem: C4BBPayerAdjudicationStatus
Title: "C4BB Payer Adjudication Status"
Description: "Describes the various status fields used when payers adjudicate a claim, such as whether the claim was adjudicated in or out of network, if the provider was contracted or non-contracted for the service"
* #innetwork	"In Network" "Indicates the claim or claim line was paid in network.  This does not indicate the contracting status of the provider"
* #outofnetwork "Out Of Network" "Indicates the claim or claim line was paid out of network.  This does not indicate the contracting status of the provider"
* #other "Other" "Indicates other network status or when a network does not apply"
* #contracted "Contracted" "Indicates the provider was contracted for the service"
* #noncontracted "Non-Contracted" "Indicates the provider was not contracted for the service"
* #paid "Paid" "Indicates if the claim was approved for payment"
* #denied "Denied" "Indicates if the claim was denied"
* #partiallypaid "Partially Paid" "Indicates that some line items on the claim were denied"
* ^copyright = "This CodeSystem is not copyrighted."
