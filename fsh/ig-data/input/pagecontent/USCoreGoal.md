[Previous Page - US Core Encounter](USCoreEncounter.html)

This IG supports the full complement of US Core profiles. 
They are supported to enable a payer to produce FHIR resources from 
data provided in other formats.

For some resources payers are unlikely to have the clinical information
necessary to create a valid US Core resource. The [US Core Goal Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html) is one potential example of a resource that payers may be 
unable to create from the source clinical data they have available.

A valid US Core Goal profile in addition to a reference to a member, using the US Core Patient resource, will require a lifecycleStatus, a description of the goal and, optionally, a target date.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the Goal resource are:

{% include style_insert_table_blue.html %}

| R4 Element            | Name             | Cardinality | Type                               |
|-----------------------|------------------|:-----------:|------------------------------------|
|  Goal.lifecycleStatus |  lifecycleStatus |     1..1    | code                               |
|  Goal.description     |  description     |     1..1    | CodeableConcept                    |
|  Goal.subject         |  subject         |     1..1    | Reference(US Core Patient Profile) |
|  Goal.target          |  target          |     0..*    | BackboneElement                    |
|  Goal.due[x]:dueDate  |  due[x]:dueDate  |     0..1    | date                               |

<i>[Table Definition](index.html#mapping-adjudicated-claims-information-to-clinical-resources)</i>

#### Example Goal Resource

An example mapping of a Goal resource is shown here:

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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: goal-1</p><p><b>meta</b>: </p><p><b>lifecycleStatus</b>: active</p><p><b>description</b>: <span title=\"Codes: \">Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a></p><h3>Targets</h3><table class=\"grid\"><tr><td>-</td><td><b>Due[x]</b></td></tr><tr><td>*</td><td>2016-04-05</td></tr></table></div>"
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

[Next Page - US Core Immunization](USCoreImmunization.html)
