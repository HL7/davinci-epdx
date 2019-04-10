---
title: Additional Hooks
layout: default
active: Additional Hooks
---

The base CDS hooks 1.0 specification defines the following hooks: 

* patient-view
* medication-prescribe
* order-review
* order-select
* order-sign
* appointment-book
* encounter-start
* encounter-discharge

The expectation is that new hooks will be defined by and eventually formally approved by the community. The formal process for this proposal and maturity development process is still evolving. Individuals interested in this process can provide feedback [here](https://cds-hooks.hl7.org).

Defining new hooks is an expected part of the CDS Hooks specification and there is no need for hooks to be officially registered with the community for them to be used. However, using registered hooks increases the likelihood of broad adoption by the community - which increases the likelihood of broad uptake of this implementation guide. The project is proposing hooks that build on proposals made in the Da Vinci CRD IG. 

Sharing of member health information via PDex will therefore use the CDS Hooks specification. Connection to health plan systems will be supported via the following hook:

* appointment-book

It is possible that this hook will change over the course of the review/approval process, including changes to the names of the hooks, their context parameters or other information. Future versions of this implementation guide will be updated to align with such changes. Additional hooks may also be added.

This IG defines an extension to the appointment-book hook. The additional optional context fields are:

* SubscirberId (optional): The number that identifies the unique person in the health plan system
* Tasks (optional): An array of Task Resources that define the information required from the health plan together with the inclusions and exclusions to be added as search parameters. 

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
    "Tasks" : [
       {
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfca-44eb-be6d-1a05a953b2db"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Encounter".
       "description" : "Request for Member Encounter History",
       "focus" : "Patient/{\{Patient.Id}\}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "resourceType",
           "valueString" : "Encounter"
           },
           {
           "type: : "historyRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
           },
           {
           "type" : "entityExcluded",
           "valueExpression" : "organization:not=XYZ123ABC"
           },
        {
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfcb-44ec-be6d-2a05a953b2bc"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Procedure",
       "description" : "Request for Member Procedure History",
       "focus" : "Patient/{\{Patient.Id}\}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "resourceType",
           "valueString" : "Procedure"
           },
          {
           "type: : "historyRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
             }
       }]
    },
    {
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfcc-44ed-be6d-3a05a953b2cb"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Medication",
       "description" : "Request for Member Medication History",
       "focus" : "Patient/{\{Patient.Id}\}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "resourceType",
           "valueString" : "medicationDispense"
           },
           {
           "type: : "historyRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
           }
       }]
    }]
  }
</pre>