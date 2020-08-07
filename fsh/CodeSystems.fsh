/*
   Code Systems for Provenance
*/
Alias: $Base = http://hl7.org/fhir/us/davinci-pdex

CodeSystem:  ProvenancePayerAgentCS
  Title: "Payer Agent roles"
  Description:  "CodeSystem for types of role carried out by payers when recording provenance."
  * #transmitter "Transmitter" "Provenance Transmitter"
  * #compiler "Compiler" "Record Compiler"
  * #converter "Converter" "Convert records from another format"


CodeSystem: ProvenanceConversionSourceCS
  Title: "Provenance Conversion Source Format"
  Description: "CodeSystem for source format standards"
  * #hl7v2 "HL7 v2" "HL7 v2 Message"
  * #hl7v3 "HL7 v3" "HL7 v3 Message"
  * #ccda "HL7 C-CDA" "HL7 Consolidated-Clinical Document Architecture"
  * #claim "837 claim" "EDI 837 Claim"
  * #hl7v2oru "HL7 v2 ORU" "HL7 v2 Structured Observation Report(ORU) message"
  * #hl7v2adt "HL7 v2 ADT" "HL7 v2 Admit, Discharge Transfer (ADT) message"
  * #hl7v2ro1 "HL7 v2 RO1" "HL7 v2 Unsolicited Observation (R01) message"
  * #custom "Custom Format" "Non-standard input format. e.g. CSV file, fax, etc."
  * #fhirdstu2 "FHIR DSTU2" "HL7 FHIR DSTU2 profile"
  * #fhirdstu3 "FHIR STU3" "HL7 FHIR STU3 profile"
  * #fhirr4 "FHIR R4" "HL7 FHIR R4 profile"




