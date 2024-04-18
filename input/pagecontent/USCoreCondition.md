[Previous Page - US Core CareTeam](USCoreCareTeam.html)

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
[US Core 3.1.1 Condition]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-condition.html) or
[US Core 6.1.0 Condition]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-condition.html)resource are:

{% include style_insert_table_blue.html %}

| R4 Element                   | Name                | Cardinality | Type                               |
|------------------------------|---------------------|:-----------:|------------------------------------|
| Condition.clinicalStatus     |  clinicalStatus     |     0..1    | CodeableConcept                    |
| Condition.verificationStatus |  verificationStatus |     0..1    | CodeableConcept                    |
| Condition.category           |  category           |     1..*    | CodeableConcept                    |
| Condition.code               |  code               |     1..1    | CodeableConcept                    |
| Condition.subject            |  subject            |     1..1    | Reference(US Core Patient Profile) |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

The essential fields to be provided in the Condition resource from the CPCDS file are:

| US Core Element               | Must Support | Cardinality | CARIN-BB Element                         | CPCDS Element Mapping or Implementer Note                                                                                                      |
|-------------------------------|:------------:|:-----------:|------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Condition.clinicalStatus      |       S      |     0..1    |                                          | . Note: active \| recurrence \| relapse \| inactive \| remission \| resolved                                                                   |
| Condition.verificationStatus  |       S      |     0..1    |                                          | . Note: active \| recurrence \| relapse \| inactive \| remission \| resolved                                                                   |
| Condition.category            |       S      |     1..*    |                                          | . Note: Based on Diagnosis from claim pick appropriate condition category from: [problem-list-item \| encounter-diagnosis \| health-concern]     |
| Condition.code                |       S      |     1..1    | ExplanationOfBenefit.diagnosis.diagnosis | [{"6, 7, 8, 21, 22, 23, 30":"Diagnosis Code"}]                                                                                                                   |
| Condition.subject             |       S      |     1..1    | ExplanationOfBenefit.patient             | [{"Ref (1)":"Member id"}]                                                                                                                       |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Example Condition Resource

An example mapping of a problem using the Condition is shown below:

<pre>
{
  "resourceType" : "Condition",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>meta</b>: </p><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-clinical code 'active' = 'Active', given as 'Active'})</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-ver-status code 'confirmed' = 'Confirmed', given as 'Confirmed'})</span></p><p><b>category</b>: Problem <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-category code 'problem-list-item' = 'Problem List Item', given as 'Problem List Item'})</span></p><p><b>code</b>: Single liveborn, born in hospital <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '442311008' = 'Liveborn born in hospital', given as 'Liveborn born in hospital'})</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>onset</b>: Aug 10, 2016, 12:00:00 AM</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ],
    "text" : "Active"
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed",
        "display" : "Confirmed"
      }
    ],
    "text" : "Confirmed"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }
      ],
      "text" : "Problem"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "442311008",
        "display" : "Liveborn born in hospital"
      }
    ],
    "text" : "Single liveborn, born in hospital"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy V. Shaw"
  },
  "onsetDateTime" : "2016-08-10"
}
</pre>



[Next Page - Coverage](coverage.html)
