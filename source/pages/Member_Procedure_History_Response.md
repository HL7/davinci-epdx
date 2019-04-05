---
title: Member Procedure History Response
layout: default
active: Member Procedure History Response
---

When a Health Plan's CDS Service receives a data request that includes a Task with task.code = "MemberHistory-Procedure" the Health Plan constructs a response. The response is a FHIR bundle of US Core Procedure and related records. 

The Procedure records will require other US Core Profiles:

* Patient
* Practitioner
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

The Procedure records returned to the Provider will be restricted based upon Task.input.historyRange.valuePeriod.

If any part of an Procedure record Procedure.performed spans the required period range specified as an input value the Procedure record should be included in the returned set of records.

The MemberHistory-Procedure Task can also specify one or more Practitioner, Organization or Locations to be excluded from the returned set of Procedure records. The task.MemberHistory-Procedure.input.valueExpression contains the exclusion value to be applied.

