# US Core DocumentReference - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core DocumentReference**

## US Core DocumentReference

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core DiagnosticReport for Report and Note Exchange](USCoreDiagnosticReportforReportandNoteExchange.md)

The Health Plan **SHALL** use the [US Core 3.1.1 DocumentReference](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-documentreference.html) or [US Core 6.1.0 DocumentReference](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-documentreference.html) resource to exchange:

* Unstructured data
* Imaging data
* C-CDA documents

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core DocumentReference resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| DocumentReference.identifier | identifier | 0..* | Identifier |
| DocumentReference.status | status | 1..1 | code |
| DocumentReference.type | type | 1..1 | CodeableConcept |
| DocumentReference.category | category | 1..* | CodeableConcept |
| DocumentReference.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| DocumentReference.date | date | 0..1 | instant |
| DocumentReference.author | author | 0..* | Reference(US Core Practitioner Profile | US Core Organization Profile | US Core Patient Profile) |
| DocumentReference.custodian | custodian | 0..1 | Reference(US Core Organization Profile) |
| DocumentReference.content | content | 1..* | BackboneElement |
| DocumentReference.content.attachment | attachment | 1..1 | Attachment |
| DocumentReference.content.attachment.contentType | contentType | 1..1 | code |
| DocumentReference.content.attachment.data | data | 0..1 | base64Binary |
| DocumentReference.content.attachment.url | url | 0..1 | url |
| DocumentReference.content.format | format | 0..1 | Coding |
| DocumentReference.context | context | 0..1 | BackboneElement |
| DocumentReference.context.encounter | encounter | 0..1 | Reference(US Core Encounter Profile) |
| DocumentReference.context.period | period | 0..1 | Period |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example DocumentReference resource

An example mapping of a DocumentReference for an episode of care is shown below:

```

{
  "resourceType" : "DocumentReference",
  "id" : "episode-summary",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: episode-summarymeta: identifier: urn:oid:2.16.840.1.113883.19.5.99999.1status: currenttype: CCD Document <span style=\"background: LightGoldenRodYellow\">(Details : {LOINC code '34133-9' = 'Summary of episode note', given as 'Summary of episode note'})</span>category: Clinical Note <span style=\"background: LightGoldenRodYellow\">(Details : {http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category code 'clinical-note' = 'Clinical Note', given as 'Clinical Note'})</span>subject: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a>date: Mar 9, 2016, 3:29:46 PMauthor: <a href=\"Practitioner-practitioner-1.html\">Ronald Bone, MD. Generated Summary: id: practitioner-1; 9941339108, 25456; Ronald Bone </a>description: Pulmonology clinic acute visitContents<table class=\"grid\">-AttachmentFormat*Documents following C-CDA constraints using a structured body (Details: urn:oid:1.3.6.1.4.1.19376.1.2.3 code urn:hl7-org:sdwg:ccda-structuredBody:2.1 = 'urn:hl7-org:sdwg:ccda-structuredBody:2.1', stated as 'Documents following C-CDA constraints using a structured body')</table>Contexts<table class=\"grid\">-Period*Dec 22, 2004, 9:00:00 PM --> Dec 22, 2004, 9:01:00 PM</table></div>"
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.19.5.99999.1"
    }
  ],
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "34133-9",
        "display" : "Summary of episode note"
      }
    ],
    "text" : "CCD Document"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
          "code" : "clinical-note",
          "display" : "Clinical Note"
        }
      ],
      "text" : "Clinical Note"
    }
  ],
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "date" : "2016-03-09T15:29:46Z",
  "author" : [
    {
      "reference" : "Practitioner/practitioner-1",
      "display" : "Ronald Bone, MD"
    }
  ],
  "description" : "Pulmonology clinic acute visit",
  "content" : [
    {
      "attachment" : {
        "contentType" : "text/plain",
        "url" : "/Binary/1-note",
        "title" : "Uri where the data can be found: [base]/Binary/1-note"
      },
      "format" : {
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.2.3",
        "code" : "urn:hl7-org:sdwg:ccda-structuredBody:2.1",
        "display" : "Documents following C-CDA constraints using a structured body"
      }
    }
  ],
  "context" : {
    "period" : {
      "start" : "2004-12-23T08:00:00+11:00",
      "end" : "2004-12-23T08:01:00+11:00"
    }
  }
}

```

The following example of a DocumentReference and associated PDex Provenance resource demonstrates how an unstructured document, such as a Portable Document Format (PDF) document could be attached or embedded as base64 encoded content in a DocumentReference. The associated PDex Provenance resource identifies the source document as a PDF file.

#### Example: Unstructured Document with Provenance

* The example US Core DocumentReference is here: [DocumentReference-123456.html](DocumentReference-123456.md)
* The associated PDex Provenance resource is here: [Provenance-1000006.html](Provenance-1000006.md)

[Next Page - US Core Encounter](USCoreEncounter.md)

