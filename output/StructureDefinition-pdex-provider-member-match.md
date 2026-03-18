# Provider Member Match Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Member Match Group**

## Resource Profile: Provider Member Match Group ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-match | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProviderMemberMatchGroup |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Group List created by the Payer to enable Provider Access API access by providers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters from the provider's match request. 

**Usages:**

* Use this Profile: [Provider $multi-member-match Response](StructureDefinition-provider-parameters-multi-member-match-bundle-out.md)
* Examples for this Profile: [Group/example-provider-matched-group](Group-example-provider-matched-group.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-provider-member-match)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-provider-member-match.csv), [Excel](StructureDefinition-pdex-provider-member-match.xlsx), [Schematron](StructureDefinition-pdex-provider-member-match.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-provider-member-match",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-match",
  "version" : "2.2.0",
  "name" : "ProviderMemberMatchGroup",
  "title" : "Provider Member Match Group",
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
  "description" : "A Group List created by the Payer to enable Provider Access API access by providers to retrieve member information. Based on the Group resource. An Extension is added to capture the submitted parameters from the provider's match request.",
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
      "short" : "Submitted member demographics from provider",
      "definition" : "Contains the Patient resources submitted by the provider in the match request, allowing the payer to return both the matched Patient ID and the original submitted demographics."
    },
    {
      "id" : "Group.identifier",
      "path" : "Group.identifier",
      "short" : "Provider organization identifier",
      "definition" : "Identifier of the provider organization requesting access (typically NPI)",
      "mustSupport" : true
    },
    {
      "id" : "Group.type",
      "path" : "Group.type",
      "short" : "Group of persons (patients)",
      "patternCode" : "person"
    },
    {
      "id" : "Group.actual",
      "path" : "Group.actual",
      "short" : "Actual group (not definitional)",
      "patternBoolean" : true
    },
    {
      "id" : "Group.code",
      "path" : "Group.code",
      "short" : "Match result code",
      "definition" : "Code indicating this is a successful match group",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS"
      }
    },
    {
      "id" : "Group.managingEntity",
      "path" : "Group.managingEntity",
      "short" : "Payer managing this group",
      "definition" : "Reference to the payer organization that performed the member match and is managing access",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.characteristic",
      "path" : "Group.characteristic",
      "short" : "Match characteristics",
      "mustSupport" : true
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
      "short" : "Provider organization reference",
      "definition" : "Reference or identifier of the provider organization requesting member access",
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
      "short" : "Include these characteristics",
      "comment" : "Exclude is set to False to indicate these characteristics should be included in the match",
      "patternBoolean" : false
    },
    {
      "id" : "Group.characteristic.period",
      "path" : "Group.characteristic.period",
      "short" : "Period when match was performed",
      "comment" : "Enter date match performed (i.e., current date) as Period.start",
      "mustSupport" : true
    },
    {
      "id" : "Group.member",
      "path" : "Group.member",
      "short" : "Matched members",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity",
      "path" : "Group.member.entity",
      "short" : "Reference to matched patient",
      "definition" : "Reference to the payer's Patient resource for the matched member",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity.extension:matchedMember",
      "path" : "Group.member.entity.extension",
      "sliceName" : "matchedMember",
      "short" : "Submitted member demographics",
      "definition" : "Extension containing a reference to the patient demographics submitted by the provider in the match request",
      "comment" : "Add the patient record from the successful member match for an individual member in the provider's match request (Patient Demographics). This allows the provider to correlate their submitted data with the payer's matched Patient ID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-match-parameters"]
      }],
      "mustSupport" : true
    }]
  }
}

```
