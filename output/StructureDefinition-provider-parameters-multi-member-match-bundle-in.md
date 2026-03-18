# Provider $multi-member-match Request - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider $multi-member-match Request**

## Resource Profile: Provider $multi-member-match Request ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-parameters-multi-member-match-bundle-in | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProviderMultiMemberMatchRequestParameters |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system in response to a provider request. This differs from the payer-to-payer multi-member-match by including current member demographics, current coverage, and provider treatment attestation rather than patient consent for payer-to-payer data exchange. 

**Usages:**

* Examples for this Profile: [Parameters/provider-member-match-request-001](Parameters-provider-member-match-request-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/provider-parameters-multi-member-match-bundle-in)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-provider-parameters-multi-member-match-bundle-in.csv), [Excel](StructureDefinition-provider-parameters-multi-member-match-bundle-in.xlsx), [Schematron](StructureDefinition-provider-parameters-multi-member-match-bundle-in.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "provider-parameters-multi-member-match-bundle-in",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-parameters-multi-member-match-bundle-in",
  "version" : "2.2.0",
  "name" : "ProviderMultiMemberMatchRequestParameters",
  "title" : "Provider $multi-member-match Request",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-17T22:49:33-04:00",
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
  "description" : "A Parameters profile defining the inputs to a $bulk-member-match operation performed by a payer system in response to a provider request. This differs from the payer-to-payer multi-member-match by including current member demographics, current coverage, and provider treatment attestation rather than patient consent for payer-to-payer data exchange.",
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
      "short" : "Provider member match request parameters",
      "definition" : "Parameters for a provider-initiated bulk member match request containing current member demographics, current coverage, and provider treatment attestation.",
      "min" : 1
    },
    {
      "id" : "Parameters.parameter:MembersToMatch",
      "path" : "Parameters.parameter",
      "sliceName" : "MembersToMatch",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.name",
      "path" : "Parameters.parameter.name",
      "short" : "Member elements to match for provider access",
      "definition" : "A repeating parameter containing current member demographics, current coverage information, and provider treatment attestation for a single member. The name aligns with the ProviderMemberMatch OperationDefinition.",
      "patternString" : "MembersToMatch"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part",
      "path" : "Parameters.parameter.part",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "name"
        }],
        "rules" : "open"
      },
      "short" : "Components of provider member match request",
      "definition" : "The individual components required for a provider to request access to member data: current patient demographics, current coverage, and provider treatment attestation.",
      "min" : 3
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:MemberPatient",
      "path" : "Parameters.parameter.part",
      "sliceName" : "MemberPatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:MemberPatient.name",
      "path" : "Parameters.parameter.part.name",
      "short" : "Current member demographics",
      "definition" : "Current patient demographic information as known by the provider (from provider's EMR or patient-provided information).",
      "patternString" : "MemberPatient"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:MemberPatient.resource",
      "path" : "Parameters.parameter.part.resource",
      "short" : "Patient demographic details",
      "definition" : "The patient's current demographic information including name, date of birth, gender, and identifiers from the provider's system.",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToMatch",
      "path" : "Parameters.parameter.part",
      "sliceName" : "CoverageToMatch",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToMatch.name",
      "path" : "Parameters.parameter.part.name",
      "short" : "Current member coverage",
      "definition" : "The member's current active coverage with the payer (typically from insurance card or eligibility verification).",
      "patternString" : "CoverageToMatch"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToMatch.resource",
      "path" : "Parameters.parameter.part.resource",
      "short" : "Current coverage details",
      "definition" : "The member's active coverage information including member ID, subscriber ID, group number, plan details, and payer identifier.",
      "min" : 1,
      "type" : [{
        "code" : "Coverage",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:TreatmentAttestation",
      "path" : "Parameters.parameter.part",
      "sliceName" : "TreatmentAttestation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:TreatmentAttestation.name",
      "path" : "Parameters.parameter.part.name",
      "short" : "Provider treatment attestation",
      "definition" : "Provider's attestation of an active treatment relationship with the member. This is NOT patient consent for payer-to-payer data exchange, but rather the provider's certification that they have a treatment relationship justifying access to the member's data.",
      "patternString" : "TreatmentAttestation"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:TreatmentAttestation.resource",
      "path" : "Parameters.parameter.part.resource",
      "short" : "Provider attestation to treatment relationship",
      "definition" : "A Consent resource conforming to the ProviderTreatmentAttestation profile, documenting that the provider has an active treatment relationship with the member and the purposes for which they are requesting access to the member's data.",
      "comment" : "Unlike the payer-to-payer multi-member-match which includes patient consent for data exchange between payers, the provider version includes the provider's attestation to a treatment relationship. This attestation serves as the legal basis for the payer to release data to the provider under HIPAA treatment, payment, and operations (TPO) provisions.",
      "min" : 1,
      "type" : [{
        "code" : "Consent",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent"]
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToLink",
      "path" : "Parameters.parameter.part",
      "sliceName" : "CoverageToLink",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToLink.name",
      "path" : "Parameters.parameter.part.name",
      "short" : "Optional coverage to link (typically not used)",
      "definition" : "CoverageToLink is typically not used in provider-initiated member match requests as providers are not linking historical coverage to new coverage. This element is only relevant for payer-to-payer member match operations.",
      "patternString" : "CoverageToLink"
    },
    {
      "id" : "Parameters.parameter:MembersToMatch.part:CoverageToLink.resource",
      "path" : "Parameters.parameter.part.resource",
      "type" : [{
        "code" : "Coverage",
        "profile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
      }]
    }]
  }
}

```
