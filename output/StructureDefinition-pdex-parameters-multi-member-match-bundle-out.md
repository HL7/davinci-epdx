# PDex $multi-member-match response - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex $multi-member-match response**

## Resource Profile: PDex $multi-member-match response ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexMultiMemberMatchResponseParameters |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system 

**Usages:**

* Examples for this Profile: [Parameters/payer-multi-member-match-out](Parameters-payer-multi-member-match-out.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-parameters-multi-member-match-bundle-out)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.csv), [Excel](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.xlsx), [Schematron](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-parameters-multi-member-match-bundle-out",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out",
  "version" : "2.2.0",
  "name" : "PDexMultiMemberMatchResponseParameters",
  "title" : "PDex $multi-member-match response",
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
  "description" : "A Parameters profile defining the result of a $bulk-member-match operation performed by a payer system",
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
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group"]
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
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group"]
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
      "type" : [{
        "code" : "Group",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group"]
      }]
    }]
  }
}

```
