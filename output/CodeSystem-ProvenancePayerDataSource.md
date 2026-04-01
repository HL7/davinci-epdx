# Provenance Payer Data Source Format - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provenance Payer Data Source Format**

## CodeSystem: Provenance Payer Data Source Format 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:ProvenancePayerDataSource |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
CodeSystem for source formats that identify what non-FHIR source was used to create FHIR record(s) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ProvenancePayerSourceFormat](ValueSet-ProvenancePayerSourceFormat.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ProvenancePayerDataSource",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2,
    "_valueInteger" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource",
  "version" : "2.2.0",
  "name" : "ProvenancePayerDataSource",
  "title" : "Provenance Payer Data Source Format",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-31T21:00:10-04:00",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [{
    "name" : "HL7 International / Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    },
    {
      "system" : "email",
      "value" : "fm@lists.HL7.org"
    }]
  },
  {
    "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:mark.scrimshire@onyxhealth.io"
    }]
  },
  {
    "name" : "HL7 International - Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    }]
  }],
  "description" : "CodeSystem for source formats that identify what non-FHIR source was used to create FHIR record(s)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 26,
  "concept" : [{
    "code" : "hl7v2other",
    "display" : "HL7 v2",
    "definition" : "HL7 v2 Message"
  },
  {
    "code" : "hl7v2oru",
    "display" : "HL7 v2 ORU",
    "definition" : "HL7 v2 Structured Observation Report(ORU) message"
  },
  {
    "code" : "hl7v2adt",
    "display" : "HL7 v2 ADT",
    "definition" : "HL7 v2 Admit, Discharge Transfer (ADT) message"
  },
  {
    "code" : "hl7v2r01",
    "display" : "HL7 v2 R01",
    "definition" : "HL7 v2 Observation (R01) message"
  },
  {
    "code" : "hl7v2rsp",
    "display" : "HL7 v2 RSP",
    "definition" : "HL7 V2 Immunization Record Response"
  },
  {
    "code" : "hl7v2orm",
    "display" : "HL7 v2 ORM",
    "definition" : "HL7 v2 Orders"
  },
  {
    "code" : "hl7v2mdm",
    "display" : "HL7 v2 MDM",
    "definition" : "Medical Document Management"
  },
  {
    "code" : "hl7v2vxu",
    "display" : "HL7 v2 VXU",
    "definition" : "HL7 V2 Immunization Transaction"
  },
  {
    "code" : "hl7v3",
    "display" : "HL7 v3",
    "definition" : "HL7 v3 Message"
  },
  {
    "code" : "hl7ccda",
    "display" : "HL7 C-CDA",
    "definition" : "HL7 Consolidated-Clinical Document Architecture"
  },
  {
    "code" : "hl7cda",
    "display" : "HL7 CDA",
    "definition" : "HL7 CDA documents that are not C-CDA"
  },
  {
    "code" : "hl7cdaqrda",
    "display" : "HL7 CDA QRDA",
    "definition" : "HL7 Quality Reporting Document"
  },
  {
    "code" : "hl7fhirdstu2",
    "display" : "FHIR DSTU2",
    "definition" : "HL7 FHIR DSTU2"
  },
  {
    "code" : "hl7fhirdstu3",
    "display" : "FHIR STU3",
    "definition" : "HL7 FHIR STU3"
  },
  {
    "code" : "hl7fhirr4",
    "display" : "FHIR R4",
    "definition" : "HL7 FHIR R4"
  },
  {
    "code" : "x12837",
    "display" : "837 claim",
    "definition" : "X12 837 Claim"
  },
  {
    "code" : "x12278",
    "display" : "278",
    "definition" : "X12 Prior Authorization"
  },
  {
    "code" : "x12275",
    "display" : "275",
    "definition" : "X12 Attachment"
  },
  {
    "code" : "x12other",
    "display" : "X12",
    "definition" : "X12 non-specific transaction"
  },
  {
    "code" : "script",
    "display" : "NCPDP SCRIPT",
    "definition" : "National Council for Prescription Drug Programs (NCPDP) SCRIPT message (eRx)"
  },
  {
    "code" : "ncpdp",
    "display" : "NCPDP Telecommunication",
    "definition" : "NCPDP Telecommunication transaction (pharmacy claims)"
  },
  {
    "code" : "capture",
    "display" : "Direct Capture",
    "definition" : "Direct Capture, such as into a payers case management system"
  },
  {
    "code" : "customtx",
    "display" : "Trading Partner Format",
    "definition" : "Trading Partner Proprietary format"
  },
  {
    "code" : "image",
    "display" : "Image",
    "definition" : "Fax or scanned document"
  },
  {
    "code" : "unstructured",
    "display" : "Unstructured Document",
    "definition" : "PDF, text and other unstructured document"
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Any other document format not specifically defined"
  }]
}

```
