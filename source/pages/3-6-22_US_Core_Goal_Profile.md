---
title: 3-6-22 US Core Goal Profile
layout: default
active: 3-6-22 US Core Goal Profile
---

Where a Health Plan has access to a Member's health goal information they **SHALL** make the information available using the [US Core Goal](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html) resource.

The essential fields to be provided in the Goal resource are:

| R4 Hierarchical Name  | R4 Name          | Flags | Card. | Type                               |
|-----------------------|------------------|-------|-------|------------------------------------|
| Goal                  | Goal             | I     | 0..*  |                                    |
| Goal.id               | id               |      | 0..1  | id                                 |
| Goal.lifecycleStatus  | lifecycleStatus  | ?!S  | 1..1  | code                               |
| Goal.description      | description      | S    | 1..1  | CodeableConcept                    |
| Goal.subject          | subject          | S    | 1..1  | Reference(US Core Patient Profile) |
| Goal.target           | target           | SI    | 0..*  | BackboneElement                    |
| Goal.target.due[x]    | due[x]           | S    | 0..1  | date, Duration                     |
| Goal.outcomeCode      | outcomeCode      |       | 0..*  | CodeableConcept                    |
| Goal.outcomeReference | outcomeReference |       | 0..*  | Reference(Observation)             |

#### 3-6-22-1 Example Goal Resource

An example mapping of a Goal is shown below:

<pre>
{
  "resourceType" : "Goal",
  "id" : "goal-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: goal-1</p><p><b>meta</b>: </p><p><b>lifecycleStatus</b>: active</p><p><b>description</b>: Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs <span style=\"background: LightGoldenRodYellow\">(Details )</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><h3>Targets</h3><table class=\"grid\"><tr><td>-</td><td><b>Due[x]</b></td></tr><tr><td>*</td><td>Apr 5, 2016</td></tr></table></div>"
  },
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "target" : [
    {
      "dueDate" : "2016-04-05"
    }
  ]
}
</pre>
