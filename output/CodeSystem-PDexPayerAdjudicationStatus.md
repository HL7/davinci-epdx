# PDex Payer Adjudication Status - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Payer Adjudication Status**

## CodeSystem: PDex Payer Adjudication Status 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexPayerAdjudicationStatus | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PDexPayerAdjudicationStatus |
| **Copyright/Legal**: This CodeSystem is not copyrighted. | | |

 
Describes the various status fields used when payers adjudicate a claim, such as whether the claim was adjudicated in or out of network, if the provider was contracted or non-contracted for the service 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PDexPayerBenefitPaymentStatus](ValueSet-PDexPayerBenefitPaymentStatus.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PDexPayerAdjudicationStatus",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexPayerAdjudicationStatus",
  "version" : "2.2.0",
  "name" : "PDexPayerAdjudicationStatus",
  "title" : "PDex Payer Adjudication Status",
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
  "description" : "Describes the various status fields used when payers adjudicate a claim, such as whether the claim was adjudicated in or out of network, if the provider was contracted or non-contracted for the service",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "This CodeSystem is not copyrighted.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "innetwork",
    "display" : "In Network",
    "definition" : "Indicates the claim or claim line was paid in network.  This does not indicate the contracting status of the provider"
  },
  {
    "code" : "outofnetwork",
    "display" : "Out Of Network",
    "definition" : "Indicates the claim or claim line was paid out of network.  This does not indicate the contracting status of the provider"
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Indicates other network status or when a network does not apply"
  },
  {
    "code" : "contracted",
    "display" : "Contracted",
    "definition" : "Indicates the provider was contracted for the service"
  },
  {
    "code" : "noncontracted",
    "display" : "Non-Contracted",
    "definition" : "Indicates the provider was not contracted for the service"
  },
  {
    "code" : "paid",
    "display" : "Paid",
    "definition" : "Indicates if the claim was approved for payment"
  },
  {
    "code" : "denied",
    "display" : "Denied",
    "definition" : "Indicates if the claim was denied"
  },
  {
    "code" : "partiallypaid",
    "display" : "Partially Paid",
    "definition" : "Indicates that some line items on the claim were denied"
  }]
}

```
