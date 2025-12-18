# Member-Provider Treatment Relationship Group - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Member-Provider Treatment Relationship Group**

## Resource Profile: Member-Provider Treatment Relationship Group 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/member-provider-treatment-relationship-group | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:MemberProviderTreatmentRelationship |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
A Group resource representing the treatment relationship between a specific member/patient and one or more healthcare providers. The Payer is the managing organization. The member is identified through a characteristic containing the Patient ID. The group members are the providers that have an active or confirmed treatment relationship with the member. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/member-provider-treatment-relationship-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-member-provider-treatment-relationship-group.csv), [Excel](StructureDefinition-member-provider-treatment-relationship-group.xlsx), [Schematron](StructureDefinition-member-provider-treatment-relationship-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "member-provider-treatment-relationship-group",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/member-provider-treatment-relationship-group",
  "version" : "2.1.1",
  "name" : "MemberProviderTreatmentRelationship",
  "title" : "Member-Provider Treatment Relationship Group",
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
  "description" : "A Group resource representing the treatment relationship between a specific member/patient and one or more healthcare providers. The Payer is the managing organization. The member is identified through a characteristic containing the Patient ID. The group members are the providers that have an active or confirmed treatment relationship with the member.",
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
        "short" : "Unique identifier for the treatment relationship group",
        "definition" : "Business identifier assigned by the payer to uniquely identify this treatment relationship group",
        "mustSupport" : true
      },
      {
        "id" : "Group.active",
        "path" : "Group.active",
        "short" : "Treatment relationship group is active",
        "definition" : "Indicates whether this treatment relationship group is active and current",
        "patternBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Group.type",
        "path" : "Group.type",
        "short" : "Type of group (provider treatment relationship)",
        "definition" : "Fixed to 'device' to represent a collection of providers with treatment relationships",
        "patternCode" : "device",
        "mustSupport" : true
      },
      {
        "id" : "Group.actual",
        "path" : "Group.actual",
        "short" : "This is an actual collection of providers",
        "definition" : "Indicates this is an actual group of providers, not a virtual group",
        "patternBoolean" : true,
        "mustSupport" : true
      },
      {
        "id" : "Group.code",
        "path" : "Group.code",
        "short" : "Kind of treatment relationship",
        "definition" : "Classification for this treatment relationship group",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS"
        }
      },
      {
        "id" : "Group.quantity",
        "path" : "Group.quantity",
        "short" : "Number of providers in the group",
        "definition" : "The count of providers in this treatment relationship group",
        "mustSupport" : true
      },
      {
        "id" : "Group.managingEntity",
        "path" : "Group.managingEntity",
        "short" : "The Payer managing this treatment relationship",
        "definition" : "Reference to the Payer organization that is managing and maintaining this treatment relationship group",
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic",
        "path" : "Group.characteristic",
        "short" : "Member/Patient identifier and other characteristics",
        "definition" : "Characteristics of the group, including the member (patient) identifier",
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.code",
        "path" : "Group.characteristic.code",
        "short" : "Identifies the member characteristic",
        "definition" : "Fixed code to identify the member characteristic that contains the Patient ID",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "pdex-member",
              "display" : "PDex Member"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.value[x]",
        "path" : "Group.characteristic.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Group.characteristic.value[x]:valueReference",
        "path" : "Group.characteristic.value[x]",
        "sliceName" : "valueReference",
        "short" : "Reference to the member/patient",
        "definition" : "Reference to the Patient resource for the member",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "Group.characteristic.exclude",
        "path" : "Group.characteristic.exclude",
        "short" : "This is an include, not an exclude",
        "definition" : "The member is included, not excluded",
        "patternBoolean" : false
      },
      {
        "id" : "Group.characteristic.period",
        "path" : "Group.characteristic.period",
        "short" : "Period during which this group is valid",
        "definition" : "Start date when the group was created/established; optionally includes an end date",
        "mustSupport" : true
      },
      {
        "id" : "Group.member",
        "path" : "Group.member",
        "short" : "Providers with treatment relationship to the member",
        "definition" : "List of providers (Practitioners or PractitionerRoles) that have a treatment relationship with the member",
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity",
        "path" : "Group.member.entity",
        "short" : "Provider entity",
        "definition" : "Reference to a healthcare provider (Practitioner or PractitionerRole) with treatment relationship",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity.extension:treatmentDetails",
        "path" : "Group.member.entity.extension",
        "sliceName" : "treatmentDetails",
        "short" : "Details of the treatment relationship",
        "definition" : "Additional details about the specific treatment relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/treatment-relationship-details"
            ]
          }
        ]
      },
      {
        "id" : "Group.member.inactive",
        "path" : "Group.member.inactive",
        "short" : "Whether the treatment relationship is currently active",
        "definition" : "Set to false/not present if the treatment relationship is active; set to true if inactive"
      }
    ]
  }
}

```
