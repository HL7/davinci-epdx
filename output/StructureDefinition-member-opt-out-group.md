# Member Opt-Out Group - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Member Opt-Out Group**

## Resource Profile: Member Opt-Out Group 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/member-opt-out-group | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:MemberOptOut |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
A Group resource representing members who have opted out of data sharing. The Payer is the managing organization. The group members are the patients who have exercised their right to opt-out of sharing their health information, either broadly or for specific purposes or providers. This group is used to identify members whose data should not be shared in payer-to-payer or provider access scenarios. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/member-opt-out-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-member-opt-out-group.csv), [Excel](StructureDefinition-member-opt-out-group.xlsx), [Schematron](StructureDefinition-member-opt-out-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "member-opt-out-group",
  "extension" : [
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
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/member-opt-out-group",
  "version" : "2.1.1",
  "name" : "MemberOptOut",
  "title" : "Member Opt-Out Group",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-16T00:00:00Z",
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
  "description" : "A Group resource representing members who have opted out of data sharing. The Payer is the managing organization. The group members are the patients who have exercised their right to opt-out of sharing their health information, either broadly or for specific purposes or providers. This group is used to identify members whose data should not be shared in payer-to-payer or provider access scenarios.",
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
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Group",
        "path" : "Group"
      },
      {
        "id" : "Group.identifier",
        "path" : "Group.identifier",
        "short" : "Unique identifier for the opt-out group",
        "definition" : "Business identifier assigned by the payer to uniquely identify this opt-out group",
        "mustSupport" : true
      },
      {
        "id" : "Group.active",
        "path" : "Group.active",
        "short" : "Opt-out group is active",
        "definition" : "Indicates whether this opt-out group is active and current",
        "patternBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Group.type",
        "path" : "Group.type",
        "short" : "Type of group (members)",
        "definition" : "Fixed to 'person' to represent a collection of individual members",
        "patternCode" : "person",
        "mustSupport" : true
      },
      {
        "id" : "Group.actual",
        "path" : "Group.actual",
        "short" : "This is an actual collection of members",
        "definition" : "Indicates this is an actual group of members, not a virtual group",
        "patternBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Group.code",
        "path" : "Group.code",
        "short" : "Kind of group (opt-out)",
        "definition" : "Classification for this opt-out group",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS"
        }
      },
      {
        "id" : "Group.quantity",
        "path" : "Group.quantity",
        "short" : "Number of members who have opted out",
        "definition" : "The count of members in this opt-out group",
        "mustSupport" : true
      },
      {
        "id" : "Group.managingEntity",
        "path" : "Group.managingEntity",
        "short" : "The Payer managing this opt-out group",
        "definition" : "Reference to the Payer organization that is managing and maintaining this opt-out group",
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic",
        "path" : "Group.characteristic",
        "short" : "Opt-out characteristics and scope",
        "definition" : "Characteristics describing the nature and scope of the opt-out",
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.extension",
        "path" : "Group.characteristic.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Group.characteristic.extension:optOutReason",
        "path" : "Group.characteristic.extension",
        "sliceName" : "optOutReason",
        "short" : "Reason for the opt-out",
        "definition" : "The member's stated reason for opting out",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/opt-out-reason"
            ]
          }
        ]
      },
      {
        "id" : "Group.characteristic.code",
        "path" : "Group.characteristic.code",
        "short" : "Identifies the opt-out scope",
        "definition" : "The scope of the opt-out (global, provider-specific, or purpose-specific)",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "opt-out-scope",
              "display" : "Opt-Out Scope"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.value[x]",
        "path" : "Group.characteristic.value[x]",
        "short" : "The type of opt-out",
        "definition" : "Indicates whether the opt-out is global, provider-specific, or purpose-specific",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/opt-out-scope-valueset"
        }
      },
      {
        "id" : "Group.characteristic.exclude",
        "path" : "Group.characteristic.exclude",
        "short" : "This is an include, not an exclude",
        "definition" : "Members are included, not excluded",
        "patternBoolean" : false
      },
      {
        "id" : "Group.characteristic.period",
        "path" : "Group.characteristic.period",
        "short" : "Period during which the opt-out is effective",
        "definition" : "Start date when the opt-out becomes effective; optionally includes an end date",
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.period.start",
        "path" : "Group.characteristic.period.start",
        "short" : "Opt-out effective date",
        "mustSupport" : true
      },
      {
        "id" : "Group.member",
        "path" : "Group.member",
        "short" : "Members who have opted out",
        "definition" : "List of patients/members who have opted out of data sharing",
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity",
        "path" : "Group.member.entity",
        "short" : "Member/patient who has opted out",
        "definition" : "Reference to a Patient resource for a member who has opted out",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity.extension:optOutDetails",
        "path" : "Group.member.entity.extension",
        "sliceName" : "optOutDetails",
        "short" : "Details of the member's opt-out",
        "definition" : "Additional details about when and why the member opted out",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/opt-out-details"
            ]
          }
        ]
      },
      {
        "id" : "Group.member.inactive",
        "path" : "Group.member.inactive",
        "short" : "Whether the opt-out is currently active",
        "definition" : "Set to false/not present if the opt-out is active; set to true if revoked/inactive"
      }
    ]
  }
}

```
