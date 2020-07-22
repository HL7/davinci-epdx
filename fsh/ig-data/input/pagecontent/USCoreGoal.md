[Previous Page - US Core Encounter](USCoreEncounter.html)

This IG supports the full complement of US Core profiles. 
They are supported to enable a payer to produce FHIR resources from 
data provided in other formats.

For some resources payers are unlikely to have the clinical information
necessary to create a valid US Core resource. The [US Core Goal Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html) is one potential example of a resource that payers may be 
unable to create from the source clinical data they have available.

A valid US Core Goal profile in addition to a reference to a member, using the US Core Patient resource, will require a lifecycleStatus, a description of the goal and, optionally, a target date.


[Next Page - US Core Immunization](USCoreImmunization.html)
