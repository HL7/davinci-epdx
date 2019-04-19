---
title: PDex Hooks
layout: default
active: PDex Hooks
---

Sharing of Member health information via PDex **SHALL** use the CDS Hooks specification. Connection to health plan systems **SHALL** be supported via the following hook:

- appointment-book

It is possible that this hook will change over the course of the review/approval process, including changes to the names of the hooks, their context parameters or other information. Future versions of this implementation guide will be updated to align with such changes. Additional hooks may also be added.

This IG defines an extension to the appointment-book hook. The additional optional context fields are:

- SubscirberId (optional): The number that identifies the unique person in the health plan system

NOTE: Even pre-existing hooks are not yet locked down as normative and similar changes are possible, though perhaps less likely.

A sample of the CDS Hook for appointment-book is included below:

<pre>
{
  "hookInstance": "d1577c69-dfbe-44ad-ba6d-3e05e953b2ea",
  "fhirServer": "http://fhir.example.com",
  "hook": "appointment-book",
  "user": "Practitioner/example",
  "context": {
    "userId" : "Practitioner/A12365498",
    "patientId" : "EMR1239876",
    "encounterId" : "654",
    "appointments" : [],
    "subscriberId" : "HP567123489",
   "AccessJwt" : { JWT for access to EMR }
		}
  }
</pre>
