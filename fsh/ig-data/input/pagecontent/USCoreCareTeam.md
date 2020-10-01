[Previous Page - US Core CarePlan](USCoreCarePlan.html)

Where a Health Plan has access to Information about the CareTeam for a member they **SHALL** make the information available using the [US Core CareTeam](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html) resource.

The essential fields to be provided in the CareTeam resource are:

{% include style_insert_table_blue.html %}

| R4 Hierarchical Name        | R4 Name     | Flags | Card. | Type                                                                                                             |
|-----------------------------|-------------|-------|-------|------------------------------------------------------------------------------------------------------------------|
| CareTeam                    | CareTeam    | I     | 0..*  |                                                                                                                  |
| CareTeam.id                 | id          |      | 0..1  | id                                                                                                               |
| CareTeam.status             | status      | ?!S  | 1..1  | code                                                                                                             |
| CareTeam.subject            | subject     | S    | 1..1  | Reference(US Core Patient Profile)                                                                               |
| CareTeam.participant        | participant | SI    | 1..*  | BackboneElement                                                                                                  |
| CareTeam.participant.role   | role        | S    | 1..1  | CodeableConcept                                                                                                  |
| CareTeam.participant.member | member      | S    | 1..1  | Reference(US Core Patient Profile | US Core Practitioner Profile | US Core Organization Profile | RelatedPerson) |

#### Example CareTeam Resource

An example mapping of a CareTeam is shown below:

<pre>
{
  "resourceType" : "CareTeam",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>meta</b>: </p><p><b>status</b>: active</p><p><b>name</b>: US-Core example CareTeam</p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><blockquote><p><b>participant</b></p><p><b>role</b>: Allopathic &amp;amp; Osteopathic Physicians:Internal Medicine:Cardiovascular Disease <span style=\"background: LightGoldenRodYellow\">(Details : {http://nucc.org/provider-taxonomy code '207RC0000X' = 'Cardiovascular Disease', given as 'Allopathic &amp;amp; Osteopathic Physicians:Internal Medicine:Cardiovascular Disease'})</span></p><p><b>member</b>: <a href=\"Practitioner-practitioner-1.html\">Ronald Bone, MD. Generated Summary: id: practitioner-1; 9941339108, 25456; Ronald Bone </a></p></blockquote><blockquote><p><b>participant</b></p><p><b>role</b>: Allopathic &amp;amp; Osteopathic Physicians:General Practice <span style=\"background: LightGoldenRodYellow\">(Details : {http://nucc.org/provider-taxonomy code '208D00000X' = 'General Practice', given as 'Allopathic &amp;amp; Osteopathic Physicians:General Practice'})</span></p><p><b>member</b>: <a href=\"Practitioner-practitioner-2.html\">Kathy Fielding, MD. Generated Summary: id: practitioner-2; 1245319599, 456789; Fielding Kathy </a></p></blockquote><blockquote><p><b>participant</b></p><p><b>role</b>: Patient (person) <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '116154003' = 'Patient', given as 'Patient (person)'})</span></p><p><b>member</b>: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p></blockquote></div>"
  },
  "status" : "active",
  "name" : "US-Core example CareTeam",
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy V. Shaw"
  },
  "participant" : [
    {
      "role" : [
        {
          "coding" : [
            {
              "system" : "http://nucc.org/provider-taxonomy",
              "code" : "207RC0000X",
              "display" : "Allopathic &amp; Osteopathic Physicians:Internal Medicine:Cardiovascular Disease"
            }
          ]
        }
      ],
      "member" : {
        "reference" : "Practitioner/practitioner-1",
        "display" : "Ronald Bone, MD"
      }
    },
    {
      "role" : [
        {
          "coding" : [
            {
              "system" : "http://nucc.org/provider-taxonomy",
              "code" : "208D00000X",
              "display" : "Allopathic &amp; Osteopathic Physicians:General Practice"
            }
          ]
        }
      ],
      "member" : {
        "reference" : "Practitioner/practitioner-2",
        "display" : "Kathy Fielding, MD"
      }
    },
    {
      "role" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "116154003",
              "display" : "Patient (person)"
            }
          ]
        }
      ],
      "member" : {
        "reference" : "Patient/example",
        "display" : "Amy V. Shaw"
      }
    }
  ]
}
</pre>



[Next Page - US Core Condition](USCoreCondition.html)
