[Previous Page - US Core DiagnosticReport for Report and Note Exchange](USCoreDiagnosticReportforReportandNoteExchange.html)

The Health Plan **SHALL** use the [US Core DocumentReference](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html) resource to exchange: 
 
- Unstructured data
- Imaging data
- C-CDA documents

The essential fields to be provided in the US Core DocumentReference resource are:
{% include style_insert_table_blue.html %}

| R4 Hierarchical Name                             | R4 Name           | Card. | Type                                 |
|--------------------------------------------------|-------------------|-------|--------------------------------------|
| DocumentReference                                | DocumentReference | 0..*  |                                      |
| DocumentReference.id                             | id                | 0..1  | id                                   |
| DocumentReference.identifier                     | identifier        | 0..1  | Identifier                           |
| DocumentReference.status                         | status            | 1..1  | code                                 |
| DocumentReference.type                           | type              | 1..1  | CodeableConcept                      |
| DocumentReference.subject                        | subject           | 1..1  | Reference(US Core Patient Profile)   |
| DocumentReference.date                           | date              | 0..1  | instant                              |
| DocumentReference.content                        | content           | 1..1  | BackboneElement                      |
| DocumentReference.content.attachment             | attachment        | 1..1  | Attachment                           |
| DocumentReference.content.attachment.contentType | contentType       | 1..1  | code                                 |
| DocumentReference.content.attachment.url         | url               | 1..1  | url                                  |
| DocumentReference.content.format                 | format            | 0..1  | Coding                               |
| DocumentReference.context                        | context           | 0..1  | BackboneElement                      |
| DocumentReference.context.encounter              | encounter         | 0..1  | Reference(US Core Encounter Profile) |

#### Example DocumentReference resource

An example mapping of a DocumentReference for an episode of care is shown below:

<pre>
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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: episode-summary</p><p><b>meta</b>: </p><p><b>identifier</b>: urn:oid:2.16.840.1.113883.19.5.99999.1</p><p><b>status</b>: current</p><p><b>type</b>: CCD Document <span style=\"background: LightGoldenRodYellow\">(Details : {LOINC code '34133-9' = 'Summary of episode note', given as 'Summary of episode note'})</span></p><p><b>category</b>: Clinical Note <span style=\"background: LightGoldenRodYellow\">(Details : {http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category code 'clinical-note' = 'Clinical Note', given as 'Clinical Note'})</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>date</b>: Mar 9, 2016, 3:29:46 PM</p><p><b>author</b>: <a href=\"Practitioner-practitioner-1.html\">Ronald Bone, MD. Generated Summary: id: practitioner-1; 9941339108, 25456; Ronald Bone </a></p><p><b>description</b>: Pulmonology clinic acute visit</p><h3>Contents</h3><table class=\"grid\"><tr><td>-</td><td><b>Attachment</b></td><td><b>Format</b></td></tr><tr><td>*</td><td/><td>Documents following C-CDA constraints using a structured body (Details: urn:oid:1.3.6.1.4.1.19376.1.2.3 code urn:hl7-org:sdwg:ccda-structuredBody:2.1 = 'urn:hl7-org:sdwg:ccda-structuredBody:2.1', stated as 'Documents following C-CDA constraints using a structured body')</td></tr></table><h3>Contexts</h3><table class=\"grid\"><tr><td>-</td><td><b>Period</b></td></tr><tr><td>*</td><td>Dec 22, 2004, 9:00:00 PM --&gt; Dec 22, 2004, 9:01:00 PM</td></tr></table></div>"
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
</pre>




[Next Page - US Core Encounter](USCoreEncounter.html)
