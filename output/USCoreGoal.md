# US Core Goal - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Goal**

## US Core Goal

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Encounter](USCoreEncounter.md)

This IG supports the full complement of US Core profiles. They are supported to enable a payer to produce FHIR resources from data provided in other formats.

For some resources, payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core 3.1.1 Goal](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-goal.html) or [US Core 6.1.0 Goal](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html) resource is one potential example of a resource that payers may be unable to create from the source clinical data they have available.

A valid US Core Goal profile in addition to a reference to a member, using the US Core Patient resource, will require a lifecycleStatus, a description of the goal and, optionally, a target date.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Goal](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-goal.html) or [US Core 6.1.0 Goal](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Goal.lifecycleStatus | lifecycleStatus | 1..1 | code |
| Goal.description | description | 1..1 | CodeableConcept |
| Goal.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| Goal.target | target | 0..* | BackboneElement |
| Goal.due[x]:dueDate | due[x]:dueDate | 0..1 | date |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Goal Resource

An example mapping of a Goal resource is shown here:

```

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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrativeid: goal-1meta: lifecycleStatus: activedescription: <span title=\"Codes: \">Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs</span>subject: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a>Targets<table class=\"grid\">-Due[x]*2016-04-05</table></div>"
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


```

[Next Page - US Core Immunization](USCoreImmunization.md)

