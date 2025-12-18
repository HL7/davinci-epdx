# ExplanationOfBenefit_ServiceDate - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExplanationOfBenefit_ServiceDate**

## SearchParameter: ExplanationOfBenefit_ServiceDate 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-service-date | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:ExplanationOfBenefit_ServiceDate |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Date of the service for the EOB. The service-date search parameter simplifies the search, since a client doesn't need to know that. For inpatient and outpatient institutional EOB dates they need to search by billablePeriod.period.start, for a pharmacy EOB by item.servicedDate, and for a professional and non-clinician EOB - by item.servicedPeriod.period.start. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "explanationofbenefit-service-date",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-03-31T06:41:13.000+00:00"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use"
    },
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
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-service-date",
  "version" : "2.1.1",
  "name" : "ExplanationOfBenefit_ServiceDate",
  "status" : "active",
  "experimental" : false,
  "date" : "2020-03-31T09:48:45+00:00",
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
  "description" : "Date of the service for the EOB. The service-date search parameter simplifies the search, since a client doesn't need to know that. For inpatient and outpatient institutional EOB dates they need to search by billablePeriod.period.start, for a pharmacy EOB by item.servicedDate, and for a professional and non-clinician EOB - by item.servicedPeriod.period.start.",
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
  "code" : "service-date",
  "base" : ["ExplanationOfBenefit"],
  "type" : "date",
  "expression" : "ExplanationOfBenefit.billablePeriod | ExplanationOfBenefit.item.serviced",
  "xpathUsage" : "normal",
  "comparator" : [
    "eq",
    "ne",
    "gt",
    "ge",
    "lt",
    "le",
    "sa",
    "eb",
    "ap"
  ]
}

```
