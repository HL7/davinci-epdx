# PDex $multi-member-match request - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex $multi-member-match request**

## Resource Profile: PDex $multi-member-match request ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexMultiMemberMatchRequestParameters |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system 

### Request Parameters

The Multiple Member Match Operation Request Profile is based upon the original PDex Member Match Operation Request Parameters.

The Multiple Member Match Request specifies a repeating parameter bundle element, with one parameter bundle per Member. Each Bundle includes:

* MemberPatient: - [HRex Patient demographics](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-patient-demographics.html)
* CoverageToMatch - details of prior health plan coverage provided by the member, typically from their health plan coverage card. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html).
* CoverageToLink - Optional element. Details of new or prospective health plan coverage, provided by the health plan based upon the member’s enrolment. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html).
* Consent - Record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in. Uses the [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html).

**Usages:**

* Examples for this Profile: [Parameters/payer-multi-member-match-in](Parameters-payer-multi-member-match-in.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-parameters-multi-member-match-bundle-in)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.csv), [Excel](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.xlsx), [Schematron](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-parameters-multi-member-match-bundle-in",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in",
  "version" : "2.2.0",
  "name" : "PDexMultiMemberMatchRequestParameters",
  "title" : "PDex $multi-member-match request",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-19T09:51:30-04:00",
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
  "description" : "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Parameters",
      "path" : "Parameters"
    },
    {
      "id" : "Parameters.parameter",
      "path" : "Parameters.parameter",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Parameters.parameter:MemberBundle",
      "path" : "Parameters.parameter",
      "sliceName" : "MemberBundle",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.name",
      "path" : "Parameters.parameter.name",
      "short" : "Bundle of member elements to match",
      "patternString" : "MemberBundle"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part",
      "path" : "Parameters.parameter.part",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:MemberPatient",
      "path" : "Parameters.parameter.part",
      "sliceName" : "MemberPatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:MemberPatient.name",
      "path" : "Parameters.parameter.part.name",
      "short" : "Patient demographic info",
      "patternString" : "MemberPatient"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:MemberPatient.resource",
      "path" : "Parameters.parameter.part.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToMatch",
      "path" : "Parameters.parameter.part",
      "sliceName" : "CoverageToMatch",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToMatch.name",
      "path" : "Parameters.parameter.part.name",
      "patternString" : "CoverageToMatch"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToMatch.resource",
      "path" : "Parameters.parameter.part.resource",
      "type" : [{
        "code" : "Coverage",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToLink",
      "path" : "Parameters.parameter.part",
      "sliceName" : "CoverageToLink",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToLink.name",
      "path" : "Parameters.parameter.part.name",
      "patternString" : "CoverageToLink"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:CoverageToLink.resource",
      "path" : "Parameters.parameter.part.resource",
      "type" : [{
        "code" : "Coverage",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:Consent",
      "path" : "Parameters.parameter.part",
      "sliceName" : "Consent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:Consent.name",
      "path" : "Parameters.parameter.part.name",
      "patternString" : "Consent"
    },
    {
      "id" : "Parameters.parameter:MemberBundle.part:Consent.resource",
      "path" : "Parameters.parameter.part.resource",
      "type" : [{
        "code" : "Consent",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-consent"]
      }]
    }]
  }
}

```
