[Previous Page - US Core CarePlan](USCoreCarePlan.html)

Where a Health Plan has access to Information about the CareTeam for a member they **SHALL** make the information available using the [US Core CareTeam](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core CareTeam](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html) resource are:

| R4 Element           | Name         | Cardinality | Type                                                                                               |
|----------------------|--------------|:-----------:|----------------------------------------------------------------------------------------------------|
| CareTeam.status      |  status      |     0..1    | code                                                                                               |
| CareTeam.subject     |  subject     |     1..1    | Reference(US Core Patient Profile)                                                                 |
| CareTeam.participant |  participant |     1..*    | BackboneElement                                                                                    |
| CareTeam.role        |  role        |     1..1    | CodeableConcept                                                                                    |
| CareTeam.member      |  member      |     1..1    | Reference(US Core Patient Profile \| US Core Practitioner Profile \| US Core Organization Profile) |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

Claims information typically represents a particular event, such as a procedure or encounter. The CareTeam resource is intended to represent the parties involved in supporting a subject/patient. Where a claim represents an Episode of Care it may be appropriate to record the parties involved in the claim as members of the CareTeam involved in that EpisodeOfCare. For discrete procedures or encounters it **MAY** not be appropriate to create a CareTeam record from the claims information.

The essential fields to be provided in the CareTeam resource from the CPCDS file, where appropriate, are:

{% include style_insert_table_blue.html %}

| US Core Element                   | Must Support | Cardinality | CARIN-BB Element                                                                   | CPCDS Element Mapping or Implementer Note                                                                                                                                                                                                                                               |
|-----------------------------------|--------------|-------------|------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CareTeam.status                   |       S      |     0..1    |                                                                                    | . Note: When generated from claim set to [ active]                                                                                                                                                                                                                                      |
| CareTeam.subject                  |       S      |     1..1    | ExplanationOfBenefit.patient                                                       | [{"Ref (1)":"Member id"}]                                                                                                                                                                                                                                                                |
| CareTeam.encounter                |              |     0..1    |                                                                                    | . Note: Reference Encounter generated from claim/EOB                                                                                                                                                                                                                                    |
| CareTeam.period                   |              |     0..1    | ExplanationOfBenefit.item.servicedPeriod \| ExplanationOfBenefit.item.servicedDate | [{"Ref (177, 178)":"Statement from date, Statement through date<br>"}, {"Ref (90,119)":"Service From date, Service to date"}]                                                                                                                                                            |
| CareTeam.participant              |       S      |     1..*    | ExplanationOfBenefit.careTeam.provider                                             | . Note: Enter practitioner information in sub-elements below                                                                                                                                                                                                                            |
|  - CareTeam.participant.role      |       S      |     1..1    | ExplanationOfBenefit.careTeam.role                                                 | [{"165":"Care Team Role"}]                                                                                                                                                                                                                                                              |
|  - CareTeam.participant.member    |       S      |     1..1    | ExplanationOfBenefit.careTeam.member                                               | [{"Ref (93, 96, 98, 99, 173)":"Provider attending, PCP, operating, <br/>referring and supervising NPIs"}, {"Ref (166, 169, 182, 171, 174)":"Provider <br/>attending, PCP, operating, referring and supervising names"},<br/>{"Ref (94, 167)":"Claim Billing Provider NPI, <br/>Claim Billing Provider Name"}] |





<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

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
