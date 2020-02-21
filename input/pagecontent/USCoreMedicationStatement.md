[Previous Page - US Core MedicationRequest](USCoreMedicationRequest.html)


Where a Health Plan has access to medication information for a member they **SHALL** make the information available using the [US Core MedicationStatement](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationstatement.html) resource.

The essential fields to be provided in the MedicationStatement resource are:

| R4 Hierarchical Name              | R4 Name             | Flags | Card. | Type                                                   |
|-----------------------------------|---------------------|-------|-------|--------------------------------------------------------|
| MedicationStatement               | MedicationStatement | I     | 0..*  |                                                        |
| MedicationStatement.id            | id                  |      | 0..1  | id                                                     |
| MedicationStatement.status        | status              | ?!S  | 1..1  | code                                                   |
| MedicationStatement.medication[x] | medication[x]       | S    | 1..1  | CodeableConcept, Reference(US Core Medication Profile) |
| MedicationStatement.subject       | subject             | S    | 1..1  | Reference(US Core Patient Profile)                     |
| MedicationStatement.effective[x]  | effective[x]        | S    | 0..1  | dateTime, Period                                       |
| MedicationStatement.dateAsserted  | dateAsserted        | S    | 1..1  | dateTime                                               |
| MedicationStatement.derivedFrom   | derivedFrom         | S     | 0..*  | Reference(Resource)                                    |

#### Example MedicationStatement Resource

An example mapping of a MedicationStatement is shown below:

<pre>
{
  "resourceType" : "MedicationStatement",
  "id" : "uscore-ms2",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationstatement"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: uscore-ms2</p><p><b>meta</b>: </p><p><b>contained</b>: </p><p><b>status</b>: active</p><p><b>medication</b>: lisinopril oral 10 mg. Generated Summary: unknown resource contained</p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>effective</b>: May 1, 2010, 12:00:00 AM --&gt; (ongoing)</p><p><b>dateAsserted</b>: May 1, 2016, 4:13:03 PM</p></div>"
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "med1",
      "code" : {
        "coding" : [
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "206765",
            "display" : "Lisinopril 10 MG Oral Tablet [Prinivil]"
          }
        ],
        "text" : "lisinopril oral 10 mg"
      }
    }
  ],
  "status" : "active",
  "medicationReference" : {
    "reference" : "#med1",
    "display" : "lisinopril oral 10 mg"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "effectivePeriod" : {
    "start" : "2010-05-01"
  },
  "dateAsserted" : "2016-05-01T16:13:03Z"
}
</pre>



[Next Page - Use Case Scenarios](UseCaseScenarios.html)