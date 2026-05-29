# PDex Provider-Member-Match Operation - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Provider-Member-Match Operation**

## OperationDefinition: PDex Provider-Member-Match Operation (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/ProviderMemberMatch | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:ProviderMemberMatch |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Provider-Member-Match Operation enables providers to match patient demographics and coverage information against a payer's member records. The operation returns matched members as a Group resource that can be used with the $davinci-data-export operation for bulk data retrieval. This operation is functionally similar to the Payer-to-Payer Bulk Member Match operation but is designed for provider-initiated requests. 

The matched members returned in the MatchedMembers Group can be used directly with the $davinci-data-export operation on the Group resource to retrieve bulk FHIR data for all matched members. The $davinci-data-export operation will return a manifest file referencing the bulk data files containing the member health information in ndjson format.

§pdex-400: Input parameters **SHALL** conform to the Provider $multi-member-match Request profile. § §pdex-401: Output parameters **SHALL** conform to the Provider $multi-member-match Response profile. §



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ProviderMemberMatch",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/ProviderMemberMatch",
  "version" : "2.2.0",
  "name" : "ProviderMemberMatch",
  "title" : "PDex Provider-Member-Match Operation",
  "status" : "active",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2024-12-16T00:00:00Z",
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
  "description" : "Provider-Member-Match Operation enables providers to match patient demographics and coverage information against a payer's member records. The operation returns matched members as a Group resource that can be used with the $davinci-data-export operation for bulk data retrieval. This operation is functionally similar to the Payer-to-Payer Bulk Member Match operation but is designed for provider-initiated requests.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "provider-member-match",
  "comment" : "The complete output structure conforms to the [Provider $multi-member-match Response](StructureDefinition-provider-parameters-multi-member-match-bundle-out.html) Parameters profile, which defines slices for MatchedMembers, NonMatchedMembers, and ConsentConstrainedMembers.",
  "resource" : ["Group"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "MemberBundle",
    "use" : "in",
    "min" : 1,
    "max" : "*",
    "documentation" : "Contains one or more members with patient demographics and coverage information to be matched against the payer's member records. Each repetition **SHALL** conform to the MemberBundle slice defined in the [Provider $multi-member-match Request](StructureDefinition-provider-parameters-multi-member-match-bundle-in.html) profile.",
    "type" : "Parameters",
    "part" : [{
      "name" : "MemberPatient",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "The patient demographics for a member to be matched.",
      "type" : "Patient",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-patient-demographics"]
    },
    {
      "name" : "CoverageToMatch",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "The member's existing or previous coverage information to match against.",
      "type" : "Coverage",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"]
    },
    {
      "name" : "Consent",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Provider's attestation of an active treatment relationship with the patient. Uses a Consent resource conforming to the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.html). The Consent parameter represents the provider's certification of a treatment relationship under HIPAA TPO provisions.",
      "type" : "Consent",
      "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent"]
    }]
  },
  {
    "name" : "MatchedMembers",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "A Group resource containing members successfully matched in the payer's records, for whom the provider's treatment attestation has been verified, and who have not opted out of Provider Access API data sharing. The Group Id returned in this parameter is the input to the $davinci-data-export operation for bulk data retrieval. This Group is the response artifact and is distinct from the long-lived Member-Provider Treatment Relationship Group (pdex-treatment-relationship) the payer maintains for governance and audit purposes. **Cardinality 1..1** — emitted even when `Group.member[]` is empty, so the matched-Group identifier is always available for the subsequent `$davinci-data-export` step.",
    "type" : "Group",
    "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-match"]
  },
  {
    "name" : "NonMatchedMembers",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "A Group resource containing members for whom no match could be found in the payer's records OR for whom the provider's treatment attestation could not be verified or does not meet the payer's requirements. Both failure types are reported in this single Group; consumers can distinguish the specific reason via the Group's characteristic code or the per-member context if required by the payer.",
    "type" : "Group",
    "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-member-no-match"]
  },
  {
    "name" : "ConsentConstrainedMembers",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "A Group resource containing members who were successfully matched in the payer's records but who have opted out of data sharing via the Provider Access API. Returned via the [Member Opt-Out Group profile](StructureDefinition-pdex-member-opt-out.html). **Privacy default — SHOULD suppress when opt-out status is sensitive.** A member who opts out of data sharing has, by definition, indicated that they do not want their data disclosed to the requesting provider via this API; the fact of opting out is itself information about that member. Where the payer determines that disclosing opt-out status to the requesting provider — i.e., distinguishing 'opted out' from 'not matched' — would itself constitute a disclosure the member did not authorize (whether under applicable state privacy law, the member's stated preference, or the payer's privacy policy), the payer **SHOULD** suppress this `ConsentConstrainedMembers` parameter and instead include the affected members in the `NonMatchedMembers` Group. This makes the response indistinguishable to the requester between a true no-match and a matched-but-opted-out outcome, protecting opt-out status from disclosure. Payers that determine no such concern applies (for example, in jurisdictions where opt-out disclosure is permitted, or where the member has not requested suppression) **MAY** continue to return this Group, which preserves the type-level distinction between opt-out and no-match outcomes for operational use by the requester.",
    "type" : "Group",
    "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-opt-out"]
  }]
}

```
