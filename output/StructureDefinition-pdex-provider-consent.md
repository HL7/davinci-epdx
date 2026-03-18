# PDex Provider Access Consent Profile - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Provider Access Consent Profile**

## Resource Profile: PDex Provider Access Consent Profile ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-consent | *Version*:2.2.0 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:PDexProviderSharingConsent |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
The PDex Provider Access Consent Profile enables a member to express their preference for the sharing of their healthcare information to providers through the Provider Access API. A member has to actively choose to opt-out of sharing their data. The opt-out may be exercised by the patient or by the patient's legally recognized personal representative (e.g., parent, guardian, or healthcare proxy), consistent with CMS-0057-F and HIPAA. 

### Provider Access Opt-out

The CMS Prior Authorization Rule (CMS-0057) requires that a health plan enables a member to choose to opt-out of sharing their data with providers via the [Provider Access API](provider-access-api.md). By default a member is opted-in to data sharing with Providers that have an existing, or impending treatment relationship. This implementation Guide provides a [Consent profile](StructureDefinition-pdex-provider-consent.md) that expresses a Member's decision to opt-out, i.e., Deny sharing of their data, A Member can also revoke that denial.

**Usages:**

* Examples for this Profile: [Consent/consent-permit-1](Consent-consent-permit-1.md) and [Consent/no-consent-1](Consent-no-consent-1.md)
* CapabilityStatements using this Profile: [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-provider-consent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-provider-consent.csv), [Excel](StructureDefinition-pdex-provider-consent.xlsx), [Schematron](StructureDefinition-pdex-provider-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-provider-consent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-consent",
  "version" : "2.2.0",
  "name" : "PDexProviderSharingConsent",
  "title" : "PDex Provider Access Consent Profile",
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
  "description" : "The PDex Provider Access Consent Profile enables a member to express their preference for the sharing of their healthcare information to providers through the Provider Access API. A member has to actively choose to opt-out of sharing their data. The opt-out may be exercised by the patient or by the patient's legally recognized personal representative (e.g., parent, guardian, or healthcare proxy), consistent with CMS-0057-F and HIPAA.",
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
      "id" : "Consent",
      "path" : "Consent",
      "definition" : "This Consent profile conveys high-level computable information about a member's preference to not share information with providers,"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "fixedCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "patient-privacy"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Consent.category:disclosure",
      "path" : "Consent.category",
      "sliceName" : "disclosure",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "IDSCL"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:apiPurpose",
      "path" : "Consent.category",
      "sliceName" : "apiPurpose",
      "short" : "Identifies this Consent as applying to the Provider Access API",
      "comment" : "Fixed to 'provider-access'. Enables systems to locate Provider Access API Consent records for a member using a standard category search (GET /Consent?patient=X&category=provider-access) without relying on actor cross-referencing or custom extension searches.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/pdex-consent-api-purpose",
          "code" : "provider-access"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|7.0.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "comment" : "The individual who performed the opt-out. This SHALL be either the patient themselves (US Core Patient Profile) or the patient's legally recognized personal representative acting on their behalf (US Core RelatedPerson Profile), such as a parent, guardian, or healthcare proxy, consistent with CMS-0057-F and HIPAA.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.policyRule",
      "path" : "Consent.policyRule",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
          "code" : "cric",
          "display" : "Common Rule Informed Consent"
        }]
      }
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "comment" : "deny | permit. Member must actively choose to deny sharing. Absence of a record is interpreted as Permit.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period.start",
      "path" : "Consent.provision.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor",
      "path" : "Consent.provision.actor",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "role"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Consent.provision.actor:source",
      "path" : "Consent.provision.actor",
      "sliceName" : "source",
      "short" : "Authorized or Not to disclose",
      "comment" : "Multiple repetitions are allowed.",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor:source.role",
      "path" : "Consent.provision.actor.role",
      "comment" : "This code isn't in the value set, but there's no code that represents the function of 'discloser' or 'performer', so need to go outside the value set.  Multiple ",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "performer"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.actor:source.reference",
      "path" : "Consent.provision.actor.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.action",
      "path" : "Consent.provision.action",
      "short" : "Action permitted or denied - use 'disclose' with provision.type='deny' for Provider Access opt-out",
      "comment" : "To opt-out of Provider Access data sharing, set provision.type to 'deny' and provision.action to 'disclose'. The ProviderAccessUseCase extension identifies this consent as specific to the Provider Access API.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/consent-action"
      }
    },
    {
      "id" : "Consent.provision.action.extension:providerAccessUseCase",
      "path" : "Consent.provision.action.extension",
      "sliceName" : "providerAccessUseCase",
      "short" : "Indicates this action applies to Provider Access API",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-access-use-case"]
      }],
      "mustSupport" : true
    }]
  }
}

```
