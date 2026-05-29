# PDex Member No Match Group - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Member No Match Group**

## Resource Profile: PDex Member No Match Group ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PDexMemberNoMatchGroup |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
A Group List created by the Payer to provide information back to a requesting payer about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics for the access request. The match may have failed for one of two reasons. a) No match on member. b) Matched but unable to comply with consent request. 

**Usages:**

* Use this Profile: [PDex $multi-member-match response](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md)
* Examples for this Profile: [Group/example-pdex-member-consent-constraint-group](Group-example-pdex-member-consent-constraint-group.md) and [Group/example-pdex-member-no-match-group](Group-example-pdex-member-no-match-group.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.us.davinci-pdex|current/StructureDefinition/StructureDefinition-pdex-member-no-match-group.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-member-no-match-group.csv), [Excel](StructureDefinition-pdex-member-no-match-group.xlsx), [Schematron](StructureDefinition-pdex-member-no-match-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-member-no-match-group",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-no-match-group",
  "version" : "2.2.0",
  "name" : "PDexMemberNoMatchGroup",
  "title" : "PDex Member No Match Group",
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
  "description" : "A Group List created by the Payer to provide information back to a requesting payer about failed matches. Based on the Group resource. An Extension is added to capture the submitted patient demographics for the access request. The match may have failed for one of two reasons. a) No match on member. b) Matched but unable to comply with consent request.",
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
      "comment" : "Each contained Patient resource SHALL be the Patient resource submitted by the requester in the MemberBundle input parameter, preserving the original resource id, all identifier elements, and all demographic elements (name, birthDate, gender, address, telecom, communication, and other Patient elements supplied by the requester) so that the requester can unambiguously correlate each match result back to the submitted member. Responders SHALL NOT modify, abridge, or substitute the submitted Patient resource's id, identifiers, or demographic elements. Per FHIR R4 References (http://hl7.org/fhir/R4/references.html#contained), contained resources SHALL NOT carry meta.versionId, meta.lastUpdated, or meta.security and SHALL NOT themselves contain nested contained resources; where the submitted Patient resource carries any of those base-FHIR-prohibited elements, the responder SHALL remove them when copying the resource into Group.contained[], and doing so is not considered a violation of the preservation requirement. Where the same patient was submitted with multiple different Coverage plans, a contained Coverage resource MAY also be included to identify which (patient + coverage) pair this member entry corresponds to."
    },
    {
      "id" : "Group.type",
      "path" : "Group.type",
      "short" : "Type of group (submitted members)",
      "definition" : "Fixed to 'person'. Group.member entries reference (typically contained) Patient resources representing the submitted members that could not be matched or are consent-constrained.",
      "patternCode" : "person",
      "mustSupport" : true
    },
    {
      "id" : "Group.actual",
      "path" : "Group.actual",
      "short" : "Actual group (not definitional)",
      "definition" : "An actual list of submitted members for whom the match failed, not a conceptual/definitional group.",
      "patternBoolean" : true,
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
      "id" : "Group.managingEntity",
      "path" : "Group.managingEntity",
      "short" : "Payer managing this group",
      "definition" : "Reference to the Payer organization that created and is managing this no-match Group. Constrained to Organization since the managing entity is always a Payer (i.e., a healthcare organization), not a Practitioner, PractitionerRole, or RelatedPerson.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Group.member.entity",
      "path" : "Group.member.entity",
      "comment" : "Enter using a relative reference to the failed patient record."
    },
    {
      "id" : "Group.member.entity.extension",
      "path" : "Group.member.entity.extension",
      "min" : 1
    },
    {
      "id" : "Group.member.entity.extension:nonMatchedMember",
      "path" : "Group.member.entity.extension",
      "sliceName" : "nonMatchedMember",
      "comment" : "SHALL reference the contained Patient resource that was submitted by the requester for this member in the MemberBundle input parameter. This enables the requester to cross-reference each non-matched or consent-constrained result back to their original submitted demographics.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-match-parameters"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity.extension:nonMatchedCoverage",
      "path" : "Group.member.entity.extension",
      "sliceName" : "nonMatchedCoverage",
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
