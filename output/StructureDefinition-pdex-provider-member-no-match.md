# Provider Member No Match Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Member No Match Group**

## Resource Profile: Provider Member No Match Group ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProviderMemberNoMatchGroup |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Group List created by the Payer to provide information back to a requesting provider about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics from the provider's request. The match may have failed for one of two reasons: a) No match on member (member not found in payer's system), or b) Matched but unable to comply due to member's opt-out of Provider Access API. 

**Usages:**

* Use this Profile: [Provider $multi-member-match Response](StructureDefinition-provider-parameters-multi-member-match-bundle-out.md)
* Examples for this Profile: [Group/example-provider-consent-constrained-group](Group-example-provider-consent-constrained-group.md) and [Group/example-provider-nomatch-group](Group-example-provider-nomatch-group.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-provider-member-no-match)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-provider-member-no-match.csv), [Excel](StructureDefinition-pdex-provider-member-no-match.xlsx), [Schematron](StructureDefinition-pdex-provider-member-no-match.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-provider-member-no-match",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match",
  "version" : "2.2.0",
  "name" : "ProviderMemberNoMatchGroup",
  "title" : "Provider Member No Match Group",
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
  "description" : "A Group List created by the Payer to provide information back to a requesting provider about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics from the provider's request. The match may have failed for one of two reasons: a) No match on member (member not found in payer's system), or b) Matched but unable to comply due to member's opt-out of Provider Access API.",
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
      "definition" : "Contains the Patient resources submitted by the provider that failed to match or are consent-constrained"
    },
    {
      "id" : "Group.identifier",
      "path" : "Group.identifier",
      "short" : "Provider organization identifier",
      "definition" : "Identifier of the provider organization that submitted the request (typically NPI)",
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
      "definition" : "Code indicating the type of match failure: nomatch or consentconstraint",
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
      "definition" : "Reference to the payer organization that performed the member match",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.member",
      "path" : "Group.member",
      "short" : "Non-matched or consent-constrained members",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity",
      "path" : "Group.member.entity",
      "short" : "Reference to submitted patient demographics",
      "definition" : "Reference to the patient demographics submitted by the provider (typically a contained resource)",
      "comment" : "Enter using a relative reference to the failed patient record (e.g., #patient-1)",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity.extension:nonMatchedMember",
      "path" : "Group.member.entity.extension",
      "sliceName" : "nonMatchedMember",
      "short" : "Submitted member demographics",
      "definition" : "Extension containing a reference to the patient demographics submitted by the provider that failed to match or are consent-constrained",
      "comment" : "Add the patient record from the failed member match request (Patient Demographics) to help the provider identify which submissions were unsuccessful.",
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
