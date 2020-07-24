[Previous Page - US Core Pulse Oximetry](USCorePulseOximetry.html)

This IG supports the full complement of US Core profiles. They are supported to 
enable a payer to produce FHIR resources from data provided in other formats.

For some resources payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core Smoking Status](http://hl7.org/fhir/us/core/StructureDefinition-us-core-smiokingstatus.html) is one potential example of an Observation profile that payers may be unable to create from the source clinical data they have available.

A Smoking Status observation requires codes and values for smoking observation. Payers may not have access to the detail data needed to create a valid observation resource.


[Next Page - VitalSigns_](VitalSigns_.html)
