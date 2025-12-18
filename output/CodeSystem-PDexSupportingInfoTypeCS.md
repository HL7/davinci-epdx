# PDex Supporting Info Type - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Supporting Info Type**

## CodeSystem: PDex Supporting Info Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexSupportingInfoTypeCS | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PDexSupportingInfoTypeCS |
| **Copyright/Legal**: This CodeSystem is not copyrighted. | | |

 
Claim Information Category - Used as the discriminator for supportingInfo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PDexSupportingInfoType](ValueSet-PDexSupportingInfoType.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PDexSupportingInfoTypeCS",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 2,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexSupportingInfoTypeCS",
  "version" : "2.1.1",
  "name" : "PDexSupportingInfoTypeCS",
  "title" : "PDex Supporting Info Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-17T14:48:28-05:00",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [
    {
      "name" : "HL7 International / Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        },
        {
          "system" : "email",
          "value" : "fm@lists.HL7.org"
        }
      ]
    },
    {
      "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
      "telecom" : [
        {
          "system" : "email",
          "value" : "mailto:mark.scrimshire@onyxhealth.io"
        }
      ]
    },
    {
      "name" : "HL7 International - Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        }
      ]
    }
  ],
  "description" : "Claim Information Category - Used as the discriminator for supportingInfo",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "US",
          "display" : "United States of America"
        }
      ]
    }
  ],
  "copyright" : "This CodeSystem is not copyrighted.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 18,
  "concept" : [
    {
      "code" : "admissionperiod",
      "display" : "Admission Period",
      "definition" : "Dates corresponding with the admission and discharge of the beneficiary to a facility"
    },
    {
      "code" : "pointoforigin",
      "display" : "Point Of Origin",
      "definition" : "UB-04 Source of Admission (FL-15) identifies the place where the patient was identified as needing admission to a facility."
    },
    {
      "code" : "admtype",
      "display" : "Admission Type",
      "definition" : "UB-04 Priority of the admission (FL-14) indicates, for example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled."
    },
    {
      "code" : "billingnetworkcontractingstatus",
      "display" : "Billing Network Contracting Status",
      "definition" : "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
    },
    {
      "code" : "brandgenericindicator",
      "display" : "Brand Generic Indicator",
      "definition" : "NCPDP code indicating whether the plan adjudicated the claim as a brand or generic drug."
    },
    {
      "code" : "clmrecvddate",
      "display" : "Claim Received Date",
      "definition" : "Date the claim was received by the payer."
    },
    {
      "code" : "compoundcode",
      "display" : "Compound Code",
      "definition" : "NCPDP code indicating whether or not the prescription is a compound."
    },
    {
      "code" : "dawcode",
      "display" : "DAW (Dispense As Written) Code",
      "definition" : "NCPDP code indicating the prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication."
    },
    {
      "code" : "dayssupply",
      "display" : "Days Supply",
      "definition" : "NCPDP value indicating the Number of days supply of medication dispensed by the pharmacy."
    },
    {
      "code" : "discharge-status",
      "display" : "Discharge Status",
      "definition" : "UB-04 Discharge Status (FL-17) indicates the patient’s status as of the discharge date for a facility stay."
    },
    {
      "code" : "drg",
      "display" : "DRG",
      "definition" : "DRG (Diagnosis Related Group), including the code system, the DRG version and the code value"
    },
    {
      "code" : "performingnetworkcontractingstatus",
      "display" : "Performing Network Contracting Status",
      "definition" : "Indicates that the Performing Provider has a contract with the Payer as of the effective date of service or admission."
    },
    {
      "code" : "refillnum",
      "display" : "Refill Number",
      "definition" : "NCPDP value indicating the number fill of the current dispensed supply (0, 1, 2, etc.)"
    },
    {
      "code" : "rxorigincode",
      "display" : "Rx Origin Code",
      "definition" : "NCPDP code indicating whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy."
    },
    {
      "code" : "servicefacility",
      "display" : "Service Facility",
      "definition" : "The facility where the service occurred.  Examples include hospitals, nursing homes, laboratories or homeless shelters."
    },
    {
      "code" : "typeofbill",
      "display" : "Type of Bill",
      "definition" : "UB-04 Type of Bill (FL-04) provides specific information for payer purposes."
    },
    {
      "code" : "medicalrecordnumber",
      "display" : "Medical Record Number",
      "definition" : "Patient Medical Record Number associated with the specific claim."
    },
    {
      "code" : "patientaccountnumber",
      "display" : "Patient Account Number",
      "definition" : "Patient Account Number associated with the specific claim."
    }
  ]
}

```
