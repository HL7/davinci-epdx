---
title: Member Encounter History Response
layout: default
active: Member Encounter History Response
---

When a Health Plan's CDS Service receives a data request that includes a Task with task.code = "MemberHistory-Encounter" the Health Plan constructs a response. The response is a FHIR bundle of US Core Encounter records and subsidiary related resources. 

The Encounter records will require other US Core Profiles:

* Patient
* Practitioner
* Organization
* Location
* Condition
* Procedure
* Observation
* EpisodeOfCare
* ServiceRequest

The Encounter records returned to the Provider will be restricted based upon Task.input.historyRange.valuePeriod.

If any part of an Encounter records Encounter.period spans the required period range specified as an input value the Encounter record should be included in the returned set of records.

The MemberHistory-Encounter Task can also specify one or more Practitioner, Organization or Locations to be excluded from the returned set of Encounter records. The task.MemberHistory-Encounter.input.valueExpression contains the exclusion value to be applied.

