# Provider Attestation to Treatment Relationship - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Attestation to Treatment Relationship**

## Resource Profile: Provider Attestation to Treatment Relationship 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:ProviderTreatmentAttestation |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Enables a practitioner, facility, or organization to attest to a treatment relationship with a patient. This profile documents that a healthcare provider has an active treatment relationship with the patient for the purposes of care delivery, coordination, and related activities. This profile is used in the Provider-Member-Match operation to enable providers to assert treatment relationships with patients for bulk data access. 

**Usages:**

* Use this Profile: [Provider $multi-member-match Request](StructureDefinition-provider-parameters-multi-member-match-bundle-in.md)
* Examples for this Profile: [Consent/provider-treatment-attestation-1](Consent-provider-treatment-attestation-1.md), [Consent/treatment-attestation-ex1](Consent-treatment-attestation-ex1.md) and [Consent/treatment-attestation-ex2](Consent-treatment-attestation-ex2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/provider-treatment-relationship-consent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-provider-treatment-relationship-consent.csv), [Excel](StructureDefinition-provider-treatment-relationship-consent.xlsx), [Schematron](StructureDefinition-provider-treatment-relationship-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "provider-treatment-relationship-consent",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent",
  "version" : "2.2.0",
  "name" : "ProviderTreatmentAttestation",
  "title" : "Provider Attestation to Treatment Relationship",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-16T00:00:00Z",
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
  "description" : "Enables a practitioner, facility, or organization to attest to a treatment relationship with a patient. This profile documents that a healthcare provider has an active treatment relationship with the patient for the purposes of care delivery, coordination, and related activities. This profile is used in the Provider-Member-Match operation to enable providers to assert treatment relationships with patients for bulk data access.",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent.status",
      "path" : "Consent.status",
      "short" : "Status of the treatment relationship attestation",
      "definition" : "Indicates whether this treatment relationship attestation is active, inactive, or has been entered in error",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/attestation-status-valueset"
      }
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "short" : "Treatment relationship scope",
      "definition" : "Fixed to 'treatment' to indicate this consent represents a treatment relationship",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "treatment"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "short" : "Classification of consent (e.g., treatment relationship, attestation)",
      "definition" : "Classification of the type of consent. Should include codes indicating treatment relationship and attestation",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/consent-category"
      }
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "short" : "Patient who is the subject of the treatment relationship",
      "definition" : "Reference to the patient for whom the treatment relationship is being attested",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "short" : "Date/time when treatment relationship attestation was recorded",
      "definition" : "When this treatment relationship attestation was recorded or last updated",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "short" : "Practitioner, facility, or organization attesting to treatment relationship",
      "definition" : "The healthcare provider (practitioner, organization, or facility) attesting that they have a treatment relationship with the patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "short" : "Organization responsible for the treatment relationship",
      "definition" : "The healthcare organization under which this treatment relationship exists",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]",
      "path" : "Consent.source[x]",
      "short" : "Source of the attestation",
      "definition" : "Reference to the source document, system, or person who provided the attestation",
      "mustSupport" : true
    },
    {
      "id" : "Consent.policy",
      "path" : "Consent.policy",
      "short" : "Policies or regulations governing the treatment relationship",
      "definition" : "References to applicable policies, regulations, or legal frameworks governing treatment relationships",
      "mustSupport" : true
    },
    {
      "id" : "Consent.verification",
      "path" : "Consent.verification",
      "short" : "Verification of the treatment relationship attestation",
      "definition" : "Information about verification of the treatment relationship attestation",
      "mustSupport" : true
    },
    {
      "id" : "Consent.verification.verified",
      "path" : "Consent.verification.verified",
      "short" : "Whether the attestation has been verified",
      "mustSupport" : true
    },
    {
      "id" : "Consent.verification.verifiedWith",
      "path" : "Consent.verification.verifiedWith",
      "short" : "Who verified the attestation",
      "mustSupport" : true
    },
    {
      "id" : "Consent.verification.verificationDate",
      "path" : "Consent.verification.verificationDate",
      "short" : "When the attestation was verified",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "short" : "Details of the treatment relationship",
      "definition" : "Detailed provisions about the scope, purpose, and period of the treatment relationship",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "short" : "Whether this is a permission (permit) or denial",
      "definition" : "For treatment relationships, this should typically be 'permit' indicating an active relationship",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/attestation-provision-type-valueset"
      }
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "short" : "Time period for the treatment relationship",
      "definition" : "The time period during which the treatment relationship is valid or was active",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period.start",
      "path" : "Consent.provision.period.start",
      "short" : "Start date of treatment relationship",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor",
      "path" : "Consent.provision.actor",
      "short" : "Actors involved in the treatment relationship",
      "definition" : "Specific practitioners, organizations, or facilities involved in providing care under this treatment relationship",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor.role",
      "path" : "Consent.provision.actor.role",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor.reference",
      "path" : "Consent.provision.actor.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.purpose",
      "path" : "Consent.provision.purpose",
      "short" : "Purpose of accessing patient information",
      "definition" : "The purpose(s) for which the treatment relationship allows access to patient information (e.g., treatment, care coordination, quality improvement)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-PurposeOfUse"
      }
    }]
  }
}

```
