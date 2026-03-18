# PDex Member Match Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Member Match Group**

## Resource Profile: PDex Member Match Group ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexMemberMatchGroup |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Group List created by the Payer to enable Bulk Payer-to-Payer API access by Other Payers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters for the access request. 

**Usages:**

* Use this Profile: [PDex $multi-member-match response](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md)
* Examples for this Profile: [Matched Members](Group-07e72a15407547bf9d03f522aa536a72.1.md)
* CapabilityStatements using this Profile: [PDex Payer Access Server CapabilityStatement](CapabilityStatement-pdex-payer-access-server.md), [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-member-match-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-member-match-group.csv), [Excel](StructureDefinition-pdex-member-match-group.xlsx), [Schematron](StructureDefinition-pdex-member-match-group.sch) 

### Notes:

#### Mandatory Search Parameters

1. **SHALL** support searching for code for a Group. [Group_Code Search Parameter](SearchParameter-group-code.md)`GET [base]/Group?code={code}`Example:GET [base]/Group?code="match"NOTE:Server should limit responses to records that requesting user or service (i.e. Payer in case of Member-Match) is permitted to access. For example, Matched Group lists for a Payer.

[Back to Artifacts](artifacts.md)



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-member-match-group",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group",
  "version" : "2.2.0",
  "name" : "PDexMemberMatchGroup",
  "title" : "PDex Member Match Group",
  "status" : "active",
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
  "description" : "A Group List created by the Payer to enable Bulk Payer-to-Payer API access by Other Payers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters for the access request.",
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
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Group",
      "path" : "Group"
    },
    {
      "id" : "Group.contained",
      "path" : "Group.contained",
      "comment" : "Each contained Patient resource SHALL be the exact Patient resource as submitted by the requester in the MemberBundle input parameter, preserving the original resource id, all identifiers, and all demographics supplied by the requester. Responders SHALL NOT abridge or modify the submitted Patient resource. Where the same patient was submitted with multiple different Coverage plans, a contained Coverage resource MAY also be included to identify which (patient + coverage) pair this member entry corresponds to."
    },
    {
      "id" : "Group.code",
      "path" : "Group.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS"
      }
    },
    {
      "id" : "Group.characteristic.code",
      "path" : "Group.characteristic.code",
      "mustSupport" : true
    },
    {
      "id" : "Group.characteristic.code.coding",
      "path" : "Group.characteristic.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS"
      }
    },
    {
      "id" : "Group.characteristic.code.coding.code",
      "path" : "Group.characteristic.code.coding.code",
      "patternCode" : "match"
    },
    {
      "id" : "Group.characteristic.value[x]",
      "path" : "Group.characteristic.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Group.characteristic.value[x]:valueReference",
      "path" : "Group.characteristic.value[x]",
      "sliceName" : "valueReference",
      "comment" : "Organization Identifier Reference of the Payer requesting the member match",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Group.characteristic.exclude",
      "path" : "Group.characteristic.exclude",
      "comment" : "Exclude is set to False",
      "patternBoolean" : false
    },
    {
      "id" : "Group.characteristic.period",
      "path" : "Group.characteristic.period",
      "comment" : "Enter date match performed (i.e. current date) as Period.start",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity.extension",
      "path" : "Group.member.entity.extension",
      "min" : 1
    },
    {
      "id" : "Group.member.entity.extension:matchedMember",
      "path" : "Group.member.entity.extension",
      "sliceName" : "matchedMember",
      "comment" : "SHALL reference the contained Patient resource that was submitted by the requester for this member in the MemberBundle input parameter. This enables the requester to cross-reference each matched result back to their original submitted demographics.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-match-parameters"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity.extension:matchedCoverage",
      "path" : "Group.member.entity.extension",
      "sliceName" : "matchedCoverage",
      "comment" : "MAY reference a contained Coverage resource that was submitted alongside the Patient in the MemberBundle input parameter. SHALL be populated when the same patient was submitted with multiple different Coverage plans, to allow the requester to distinguish which (patient + coverage) pair this member entry corresponds to.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-match-coverage"]
      }],
      "mustSupport" : true
    }]
  }
}

```
