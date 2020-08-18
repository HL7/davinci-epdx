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
  Title: "Provenance Payer Conversion Source Format"
  Description: "CodeSystem for source format standards"
  * ^jurisdiction.coding = urn:iso:std:iso:3166#US
  * #hl7v2other "HL7 v2" "HL7 v2 Message"
  * #hl7v2oru "HL7 v2 ORU" "HL7 v2 Structured Observation Report(ORU) message"
  * #hl7v2adt "HL7 v2 ADT" "HL7 v2 Admit, Discharge Transfer (ADT) message"
  * #hl7v2ro1 "HL7 v2 RO1" "HL7 v2 Observation (R01) message"
  * #hl7v2qbp "HL7 v2 QBP" "HL7 V2 Immunization Record"
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
  * #ncpdp "NCPDP" "N.C.P.D.P."
  * #custom "Custom Format" "Non-standard input format. e.g. CSV file, fax, etc."

/* Should any of these elements be added to the list above

  * #pdf "PDF" "Portable Document Format"
  * #image "Image Format" "Image formats e.g. jpg, png, tiff, etc."
  * #capture "Direct Capture" "Direct Capture, such as into a payers case management system"
  * #html "HTML document" "HTML web page document"
  * #xml "XML document" "Extensible Markup Language document"
  * #json "Json document" "Javascript Object Notation document"
  * #dicom "Dicom" "DICOM Image format"
  * #ms-word "Word" "Word Document"
  * #ms-excel "Excel" "Excel spreadsheet"
  * #ms-powerpoint "PowerPoint" "Powerpoint document"
*/

/*
Which source types do we need?

standards
+ Custom

non-standard prefix with general
generaltext
generalcsv
generalimage
x12



*/


CodeSystem: IdentifierTypeCS
Title: "Identifier Type"
Description: "Identifier Type"
  * #tax "Tax ID Number" "Tax ID Number"
  * #npi "National Provider Identifier" "National Provider Identifier"
  * #clia "CLIA" "CLIA"
  * #payerid "Payer ID" "Payer ID"
  * #mb "Member ID" "Member ID"
  * #mr "Medical Record Number" "Medical Record Number"
  * #pt "Patient Account Number" "Patient Account Number"
  * #um "Unique Member ID" "Unique Member ID"
  * #cn "Claim Number" "Claim Number"

