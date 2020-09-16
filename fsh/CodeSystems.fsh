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
  * #ncpdp "NCPDP" "National Council for Prescription Drug Programs"
  * #capture "Direct Capture" "Direct Capture, such as into a payers case management system"
  * #customtx "Trading Partner Format" "Trading Partner Proprietary format"
  * #image "Image" "Fax or scanned document"
  * #unstructured "Unstructured Document" "PDF, test and other unstructured document"
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

