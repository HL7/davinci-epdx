# Provider $multi-member-match Response - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider $multi-member-match Response**

## Resource Profile: Provider $multi-member-match Response ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-parameters-multi-member-match-bundle-out | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProviderMultiMemberMatchResponseParameters |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system in response to a provider request. The response indicates which members were successfully matched and authorized for provider access, which were not found, and which have opted out of Provider Access API data sharing. 

**Usages:**

* Examples for this Profile: [Parameters/provider-member-match-response-001](Parameters-provider-member-match-response-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/provider-parameters-multi-member-match-bundle-out)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-provider-parameters-multi-member-match-bundle-out.csv), [Excel](StructureDefinition-provider-parameters-multi-member-match-bundle-out.xlsx), [Schematron](StructureDefinition-provider-parameters-multi-member-match-bundle-out.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "provider-parameters-multi-member-match-bundle-out",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-parameters-multi-member-match-bundle-out",
  "version" : "2.2.0",
  "name" : "ProviderMultiMemberMatchResponseParameters",
  "title" : "Provider $multi-member-match Response",
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
  "description" : "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system in response to a provider request. The response indicates which members were successfully matched and authorized for provider access, which were not found, and which have opted out of Provider Access API data sharing.",
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
        "rules" : "closed"
      },
      "short" : "Provider member match response groups",
      "definition" : "Response groups categorizing the results of the provider bulk member match request: matched members (authorized for access), non-matched members (not found), and consent-constrained members (opted out of Provider Access).",
      "min" : 1,
      "max" : "3"
    },
    {
      "id" : "Parameters.parameter:MatchedMembers",
      "path" : "Parameters.parameter",
      "sliceName" : "MatchedMembers",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:MatchedMembers.name",
      "path" : "Parameters.parameter.name",
      "short" : "Successfully matched and authorized members",
      "definition" : "Group of members who were successfully matched in the payer's system and are authorized for provider access based on the provider's treatment attestation.",
      "patternString" : "MatchedMembers"
    },
    {
      "id" : "Parameters.parameter:MatchedMembers.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:MatchedMembers.resource",
      "path" : "Parameters.parameter.resource",
      "short" : "Group of matched members",
      "definition" : "A Group resource containing references to successfully matched member records. Each member entry includes a reference to the payer's Patient resource and an extension containing the submitted member demographics from the provider.",
      "comment" : "This group represents members for whom the payer has successfully matched the provider's submitted demographics to a member in their system, verified the treatment attestation is valid, and determined the member has not opted out of Provider Access API. The provider can now use these matched Patient IDs to request bulk data access.",
      "min" : 1,
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-match"]
      }]
    },
    {
      "id" : "Parameters.parameter:NonMatchedMembers",
      "path" : "Parameters.parameter",
      "sliceName" : "NonMatchedMembers",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:NonMatchedMembers.name",
      "path" : "Parameters.parameter.name",
      "short" : "Members not found",
      "definition" : "Group of members who could not be matched in the payer's system. This may occur if the patient demographics are incorrect, the member is not currently enrolled with the payer, or the coverage information is invalid.",
      "patternString" : "NonMatchedMembers"
    },
    {
      "id" : "Parameters.parameter:NonMatchedMembers.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:NonMatchedMembers.resource",
      "path" : "Parameters.parameter.resource",
      "short" : "Group of non-matched members",
      "definition" : "A Group resource containing references to the submitted member demographics that could not be matched to any member in the payer's system.",
      "comment" : "This group helps providers identify which member match requests failed. Providers may need to verify the patient's insurance information, confirm coverage is active, or check for data entry errors in the submitted demographics or coverage details.",
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match"]
      }]
    },
    {
      "id" : "Parameters.parameter:ConsentConstrainedMembers",
      "path" : "Parameters.parameter",
      "sliceName" : "ConsentConstrainedMembers",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Parameters.parameter:ConsentConstrainedMembers.name",
      "path" : "Parameters.parameter.name",
      "short" : "Members who opted out of Provider Access",
      "definition" : "Group of members who were successfully matched but have exercised their right to opt out of Provider Access API data sharing. These members have explicitly denied permission for providers to access their data through this API.",
      "patternString" : "ConsentConstrainedMembers"
    },
    {
      "id" : "Parameters.parameter:ConsentConstrainedMembers.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:ConsentConstrainedMembers.resource",
      "path" : "Parameters.parameter.resource",
      "short" : "Group of members who opted out",
      "definition" : "A Group resource containing references to members who have opted out of Provider Access API. The payer has successfully matched these members but cannot provide access due to the member's consent preferences.",
      "comment" : "Members in this group have affirmatively opted out of sharing their data with providers through the Provider Access API. This is distinct from non-matched members - these members exist in the payer's system and were matched, but have exercised their privacy rights to prevent data sharing. Providers should not attempt to access data for these members through the Provider Access API and should use traditional methods (e.g., requesting records directly from the patient or other providers) if access to this information is needed for treatment.",
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match"]
      }]
    }]
  }
}

```
