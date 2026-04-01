# PDex Provider Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Provider Group**

## Resource Profile: PDex Provider Group ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-group | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexProviderGroup |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
The Provider Attribution Group List. Based on the Da Vinci Attribution Group (ATRGroup) Profile. The member element represents the patients attributed to the provider for data access purposes. 

**Usages:**

* Examples for this Profile: [Attributed List of Health Plan Members for Practitioner 1122334455.](Group-Example-PDex-Provider-Group.md)
* CapabilityStatements using this Profile: [PDex Provider Access Server CapabilityStatement](CapabilityStatement-pdex-provider-access-server.md), [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-provider-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-provider-group.csv), [Excel](StructureDefinition-pdex-provider-group.xlsx), [Schematron](StructureDefinition-pdex-provider-group.sch) 

### Notes:

#### Mandatory Search Parameters

1. §pdex-396: **SHALL** support searching for code for a Group. § [Group_Code Search Parameter](SearchParameter-group-code.md)`GET [base]/Group?code={code}`Example:GET [base]/Group?code="pdexprovidergroup"NOTE:Server should limit responses to records that requesting user or service is permitted to access. For example, Attributed Group lists for Practitioners working in a Facility where the system accessing is accessing on behalf of the facility.

[Back to Artifacts](artifacts.md)



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-provider-group",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-group",
  "version" : "2.2.0",
  "name" : "PDexProviderGroup",
  "title" : "PDex Provider Group",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-31T21:00:10-04:00",
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
  "description" : "The Provider Attribution Group List. Based on the Da Vinci Attribution Group (ATRGroup) Profile. The member element represents the patients attributed to the provider for data access purposes.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Group",
      "path" : "Group"
    },
    {
      "id" : "Group.extension:optedOut",
      "path" : "Group.extension",
      "sliceName" : "optedOut",
      "comment" : "Number of would be attributed Members that used their right to Opt-out of sharing data with providers.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-members-opted-out"]
      }],
      "mustSupport" : true
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
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS",
          "code" : "pdexprovidergroup",
          "display" : "PDex Provider Group"
        }]
      }
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
      "comment" : "Provider/Organization Identifier Reference that is being attributed with members",
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
      "comment" : "Enter date attribution was created or updated.(i.e. current date) as Period.start",
      "mustSupport" : true
    }]
  }
}

```
