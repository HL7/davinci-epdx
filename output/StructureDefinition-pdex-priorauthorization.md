# PDex Prior Authorization - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Prior Authorization**

## Resource Profile: PDex Prior Authorization ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PdexPriorAuthorization |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
The PDex Prior Authorization (PPA) profile is based on the ExplanationOfBenefit resource and is provided to enable payers to express Prior Authorization information to members. 

[Previous Page - US Core PractitionerRole](USCorePractitionerRole.md)

The PDex Prior Authorization profile has been created to enable Payers to communicate prior authorization decisions and changes to the status of a prior authorization to members.

§pdex-395: Payers **SHALL** make available pending and active prior authorization decisions and related clinical documentation and forms for items and services, not including prescription drugs, including the date the prior authorization was approved, the date the authorization ends, as well as the units and services approved and those used to date, no later than one (1) business day after a provider initiates a prior authorization for the beneficiary or there is a change of status for the prior authorization. §

A slice has been defined for meta.profile that makes the URI for the Structure Definition a required field. The ExplanationOfBenefit resource is used to express claims information to members in accordance with the [Carin Blue Button Implementation Guide](http://hl7.org/fhir/us/carin-bb/). By setting the value of ExplanationOfBenefit.Use to "preauthorization" in Prior Authorization resources a Payer will be able to exclude, or include, Prior Authorization records, dependent upon the use case. For the PDex IG it would be a case of setting “use=preauthorization” as a search parameter to include only Prior Authorization records.

```
    [BaseURL]/ExplanationOfBenefit?use=preauthorization&patient=Patient/1

```

**Note on `use` as a search parameter.** `ExplanationOfBenefit.use` is an element of the FHIR R4 ExplanationOfBenefit resource, but it is not one of the [base R4 ExplanationOfBenefit search parameters](http://hl7.org/fhir/R4/explanationofbenefit.html#search), and it is not enumerated in the [PDex Server CapabilityStatement](CapabilityStatement-pdex-server.md) ExplanationOfBenefit search parameters. The `?use=preauthorization` example above is illustrative of the conceptual filter and assumes a server that has chosen to expose `use` as a custom search parameter. For a portable approach that relies only on parameters listed in the PDex Server CapabilityStatement, clients **MAY** instead select Prior Authorization records by combining the standard `_profile` search parameter with `patient`:

```
    [BaseURL]/ExplanationOfBenefit?_profile=http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization&patient=Patient/1

```

Where `use` is not exposed as a server-side search parameter, clients may also retrieve EOBs using the supported parameters and filter by `ExplanationOfBenefit.use = preauthorization` on the client side. A future version of this IG may formalize a `use` SearchParameter and add it to the CapabilityStatement; until then, implementers should treat `?use=preauthorization` as a non-normative example rather than a conformance expectation.

**Linking supporting documentation.** The CMS Interoperability and Prior Authorization Final Rule (CMS-0057) requires impacted payers to exchange the structured **and** unstructured administrative and clinical documentation submitted by providers in support of a prior authorization through the Payer-to-Payer API. This profile does not slice `ExplanationOfBenefit.supportingInfo` in this STU update, but implementers wishing to associate a Prior Authorization resource with one or more supporting documents (e.g. clinical notes, attachments, signed forms) **MAY** do so by populating the inherited base R4 element [`ExplanationOfBenefit.supportingInfo`](http://hl7.org/fhir/R4/explanationofbenefit-definitions.html#ExplanationOfBenefit.supportingInfo) using the conventions below.

* **Category code.** Use the [`additionalInformation`](https://hl7.org/fhir/us/davinci-pas/CodeSystem-PASSupportingInfoType.html#PASSupportingInfoType-additionalInformation) concept from the Da Vinci PAS `PASSupportingInfoType` code system (`http://hl7.org/fhir/us/davinci-pas/CodeSystem/PASSupportingInfoType`) on `supportingInfo.category` to signal that the entry carries supporting documentation. Da Vinci PAS is already a dependency of this IG, so the code system is available without an additional dependency.
* **Reference to the document.** Populate `supportingInfo.value[x]` as a `valueReference` to a `DocumentReference` resource that describes and locates the supporting document.
* Implementers should choose between inline and URL-referenced content based on the size and lifecycle of the supporting document and on the constraints of the exchange channel. Where the document size is unbounded or material, URL-referenced content is the recommended pattern.
* **Future direction.** A future version of this IG may formally slice `ExplanationOfBenefit.supportingInfo` to make the `additionalInformation` category and `Reference(DocumentReference)` value pattern conformance-bound (mirroring the Da Vinci PAS profile pattern). Until that work is balloted, the guidance above is informative; servers and clients **SHOULD** follow it to remain forward-compatible.

**Representing a requested procedure code range.** This profile currently provides a place to express the **end** of an **authorized** procedure code range — via the nested PAS extension at `item.extension[authorizedItemDetail].extension[productOrServiceCodeEnd]` — but no slice on `item.extension` for the end of a **requested** procedure code range. `item.productOrService` holds either a single procedure code or the start of a requested range, with no companion element for the range end. Until a future version of this IG formally adds an `item`-level `productOrServiceCodeEnd` slice (likely reusing the same Da Vinci PAS [`extension-itemAuthorizedDetail.productOrServiceCodeEnd`](http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDetail) extension definition that this profile already depends on), implementers needing to represent a requested procedure range in PDex Prior Authorization records **SHOULD** use the following interim pattern:

1. Populate one`item`entry with the**start**of the range in`item.productOrService`(and any other item-level data common to the range).
1. Populate a second`item`entry with the**end**of the range in its`item.productOrService`.
1. Use a shared trace value in`item.extension[itemTraceNumber]`on both entries so consumers can group the two`item`entries as the start and end of a single requested range.
1. Where the authorization decision involved an authorized range that is narrower than (or different from) the requested range, the authorized range continues to be expressed using the existing nested`item.extension[authorizedItemDetail].extension[productOrServiceCodeEnd]`extension — independently of the requested-range expression above.

This interim pattern uses only currently-conformant elements and is forward-compatible with a future structural addition. **Future direction:** a future version of this IG is expected to add a dedicated `item`-level `productOrServiceCodeEnd` slice so implementers can express a requested procedure range without duplicating the `item` entry; until that addition is balloted, the guidance above is informative.

**Usages:**

* Examples for this Profile: [ExplanationOfBenefit/PDexPriorAuth1](ExplanationOfBenefit-PDexPriorAuth1.md)
* CapabilityStatements using this Profile: [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.us.davinci-pdex|current/StructureDefinition/StructureDefinition-pdex-priorauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-priorauthorization.csv), [Excel](StructureDefinition-pdex-priorauthorization.xlsx), [Schematron](StructureDefinition-pdex-priorauthorization.sch) 

### Notes:

[Return to Parent Page](PDexPriorAuthorization.md)

[Next Page - US Core Procedure](USCoreProcedure.md)



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-priorauthorization",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization",
  "version" : "2.2.0",
  "name" : "PdexPriorAuthorization",
  "title" : "PDex Prior Authorization",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-29T12:37:47-04:00",
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
  "description" : "The PDex Prior Authorization (PPA) profile is based on the ExplanationOfBenefit resource and is provided to enable payers to express Prior Authorization information to members.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ExplanationOfBenefit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ExplanationOfBenefit",
      "path" : "ExplanationOfBenefit",
      "constraint" : [{
        "key" : "adjudication-has-amount-type-slice",
        "severity" : "warning",
        "human" : "If Adjudication is present, it must have at least one adjudicationamounttype slice",
        "expression" : "(adjudication.exists().not() or adjudication.where(category.memberOf('http://hl7.org/fhir/us/davinc-pdex/ValueSet/PDEXAdjudication')).exists())",
        "source" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization"
      }]
    },
    {
      "id" : "ExplanationOfBenefit.meta.profile",
      "path" : "ExplanationOfBenefit.meta.profile",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slice based on value",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ExplanationOfBenefit.meta.profile:supportedProfile",
      "path" : "ExplanationOfBenefit.meta.profile",
      "sliceName" : "supportedProfile",
      "min" : 1,
      "max" : "1",
      "patternCanonical" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization"
    },
    {
      "id" : "ExplanationOfBenefit.extension",
      "path" : "ExplanationOfBenefit.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ExplanationOfBenefit.extension:levelOfServiceType",
      "path" : "ExplanationOfBenefit.extension",
      "sliceName" : "levelOfServiceType",
      "short" : "A code specifying the level of service being requested (UM06)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-levelOfServiceCode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.status",
      "path" : "ExplanationOfBenefit.status",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.type",
      "path" : "ExplanationOfBenefit.type",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.use",
      "path" : "ExplanationOfBenefit.use",
      "patternCode" : "preauthorization",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.patient",
      "path" : "ExplanationOfBenefit.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.enterer",
      "path" : "ExplanationOfBenefit.enterer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.insurer",
      "path" : "ExplanationOfBenefit.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.provider",
      "path" : "ExplanationOfBenefit.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.priority",
      "path" : "ExplanationOfBenefit.priority",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/process-priority"
      }
    },
    {
      "id" : "ExplanationOfBenefit.facility",
      "path" : "ExplanationOfBenefit.facility",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.preAuthRefPeriod",
      "path" : "ExplanationOfBenefit.preAuthRefPeriod",
      "comment" : "Prior Authorization in-effect period",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.careTeam.provider",
      "path" : "ExplanationOfBenefit.careTeam.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.insurance.coverage",
      "path" : "ExplanationOfBenefit.insurance.coverage",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
      }]
    },
    {
      "id" : "ExplanationOfBenefit.item.extension",
      "path" : "ExplanationOfBenefit.item.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:itemTraceNumber",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "itemTraceNumber",
      "short" : "Uniquely identifies this claim item. (2000F-TRN)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemTraceNumber"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:preAuthIssueDate",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "preAuthIssueDate",
      "short" : "The date when this item's preauthorization was issued.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthIssueDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:preAuthPeriod",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "preAuthPeriod",
      "short" : "The date/period when this item's preauthorization is valid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthPeriod"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:previousAuthorizationNumber",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "previousAuthorizationNumber",
      "short" : "A string assigned by the UMO to an authorized review outcome associated with this service item.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-authorizationNumber"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:administrationReferenceNumber",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "administrationReferenceNumber",
      "short" : "A string assigned by the UMO to the original disallowed review outcome associated with this service item.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-administrationReferenceNumber"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:authorizedItemDetail",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "authorizedItemDetail",
      "short" : "The details of what has been authorized for this item if different from what was requested.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDetail"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.extension:authorizedProvider",
      "path" : "ExplanationOfBenefit.item.extension",
      "sliceName" : "authorizedProvider",
      "short" : "The specific provider who has been authorized to provide this item.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedProvider"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.category",
      "path" : "ExplanationOfBenefit.item.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "description" : "Codes identifying business groupings for health care services or benefits. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions.",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PriorAuthServiceTypeCodes"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.productOrService",
      "path" : "ExplanationOfBenefit.item.productOrService",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexPAInstitutionalProcedureCodesVS"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.encounter",
      "path" : "ExplanationOfBenefit.item.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"]
      }]
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication",
      "path" : "ExplanationOfBenefit.item.adjudication",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "category"
        }],
        "description" : "Slice based on value pattern",
        "ordered" : false,
        "rules" : "closed"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication.extension",
      "path" : "ExplanationOfBenefit.item.adjudication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication.extension:reviewAction",
      "path" : "ExplanationOfBenefit.item.adjudication.extension",
      "sliceName" : "reviewAction",
      "short" : "The details of the review action that is necessary for the authorization at the line level.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication.extension:adjudicationActionDate",
      "path" : "ExplanationOfBenefit.item.adjudication.extension",
      "sliceName" : "adjudicationActionDate",
      "short" : "The date/time when an Adjudication Action occured.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication.category",
      "path" : "ExplanationOfBenefit.item.adjudication.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudicationCategoryDiscriminator"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:adjudicationamounttype",
      "path" : "ExplanationOfBenefit.item.adjudication",
      "sliceName" : "adjudicationamounttype",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:adjudicationamounttype.category",
      "path" : "ExplanationOfBenefit.item.adjudication.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudication"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:adjudicationamounttype.amount",
      "path" : "ExplanationOfBenefit.item.adjudication.amount",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:allowedunits",
      "path" : "ExplanationOfBenefit.item.adjudication",
      "sliceName" : "allowedunits",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:allowedunits.category",
      "path" : "ExplanationOfBenefit.item.adjudication.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator",
          "code" : "allowedunits"
        }]
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:allowedunits.value",
      "path" : "ExplanationOfBenefit.item.adjudication.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:denialreason",
      "path" : "ExplanationOfBenefit.item.adjudication",
      "sliceName" : "denialreason",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:denialreason.category",
      "path" : "ExplanationOfBenefit.item.adjudication.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator",
          "code" : "denialreason"
        }]
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:denialreason.reason",
      "path" : "ExplanationOfBenefit.item.adjudication.reason",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes"
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:consumedunits",
      "path" : "ExplanationOfBenefit.item.adjudication",
      "sliceName" : "consumedunits",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:consumedunits.category",
      "path" : "ExplanationOfBenefit.item.adjudication.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator",
          "code" : "consumedunits"
        }]
      }
    },
    {
      "id" : "ExplanationOfBenefit.item.adjudication:consumedunits.value",
      "path" : "ExplanationOfBenefit.item.adjudication.value",
      "min" : 1
    },
    {
      "id" : "ExplanationOfBenefit.addItem.provider",
      "path" : "ExplanationOfBenefit.addItem.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"]
      }]
    },
    {
      "id" : "ExplanationOfBenefit.adjudication",
      "path" : "ExplanationOfBenefit.adjudication",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "category"
        }],
        "description" : "Slice based on value pattern",
        "ordered" : false,
        "rules" : "closed"
      },
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.adjudication.extension",
      "path" : "ExplanationOfBenefit.adjudication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ExplanationOfBenefit.adjudication.extension:reviewAction",
      "path" : "ExplanationOfBenefit.adjudication.extension",
      "sliceName" : "reviewAction",
      "short" : "The details of the review action that is necessary for the authorization for the entire request.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.adjudication.extension:adjudicationActionDate",
      "path" : "ExplanationOfBenefit.adjudication.extension",
      "sliceName" : "adjudicationActionDate",
      "short" : "The date/time when an Adjudication Action occured.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-when-adjudicated"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.adjudication.category",
      "path" : "ExplanationOfBenefit.adjudication.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudicationCategoryDiscriminator"
      }
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:adjudicationamounttype",
      "path" : "ExplanationOfBenefit.adjudication",
      "sliceName" : "adjudicationamounttype",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:adjudicationamounttype.category",
      "path" : "ExplanationOfBenefit.adjudication.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexAdjudication"
      }
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:adjudicationamounttype.amount",
      "path" : "ExplanationOfBenefit.adjudication.amount",
      "min" : 1
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:denialreason",
      "path" : "ExplanationOfBenefit.adjudication",
      "sliceName" : "denialreason",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:denialreason.category",
      "path" : "ExplanationOfBenefit.adjudication.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PDexAdjudicationDiscriminator",
          "code" : "denialreason"
        }]
      }
    },
    {
      "id" : "ExplanationOfBenefit.adjudication:denialreason.reason",
      "path" : "ExplanationOfBenefit.adjudication.reason",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes"
      }
    },
    {
      "id" : "ExplanationOfBenefit.total.extension",
      "path" : "ExplanationOfBenefit.total.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ExplanationOfBenefit.total.extension:priorauth-utilization",
      "path" : "ExplanationOfBenefit.total.extension",
      "sliceName" : "priorauth-utilization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.total.category",
      "path" : "ExplanationOfBenefit.total.category",
      "short" : "Prior Authorization utilization codes",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PriorAuthorizationAmounts"
      }
    }]
  }
}

```
