---
title: Member Medication History Response
layout: default
active: Member Medication History Response
---

When a Health Plan's CDS Service receives a data request that includes a Task with task.code = "MemberHistory-Medication" the Health Plan constructs a response. The response is a FHIR bundle of US Core MedicationDispense records. 

The MedicationDispense records will require other US Core Profiles:

* Patient
* Practitioner
* PractitionerRole
* Organization
* Location
* Condition
* EpisodeOfCare
* Encounter
* Procedure
* Observation
* DiagnosticReport
* DocumentReference
* CarePlan
* ServiceRequest
* Device
* Medication

The MedicationDispense records returned to the Provider will be restricted based upon Task.input.historyRange.valuePeriod.

If any part of an MedicationDispense record MedicationDispense.whenHandedOut spans the required period range specified as an input value the MedicationDispense record should be included in the returned set of records.

The MemberHistory-Medication Task can also specify one or more Practitioner, Organization or Locations to be excluded from the returned set of MedicationDispense records. The task.MemberHistory-Medication.input.valueExpression contains the exclusion value to be applied.


