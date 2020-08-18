[Previous Page - US Core Provenance](USCoreProvenance.html)

This IG supports the full complement of US Core profiles. They are supported to 
enable a payer to produce FHIR resources from data provided in other formats.

For some resources payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core Pulse Oximetry](http://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html) is one potential example of an Observation profile that payers may be unable to create from the source clinical data they have available.

A Pulse Oximetry observation requires codes and values for oxygen saturation in the blood. Payers may not have access to the detail measurement data needed to create a valid observation resource.


[Next Page - US Core Smoking Status Observation](USCoreSmokingStatusObservation.html)
