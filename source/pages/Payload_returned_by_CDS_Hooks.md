---
title: Payload returned by CDS Hooks
layout: default
active: Payload returned by CDS Hooks
---

## FHIR Payload
When the Payer receives an appointment-book CDS Hooks request it shall interpret the Task Resources and construct search queries.
If Inclusion and Exclusion parameters are provided in the Task.input "HistoryRange" and "OrganizationExcluded" input fields (organization.id, location.id or practitioner.id) these shall be incorporated into the search request.
The relevant resources and supporting resources shall be added to the Transaction Bundle that will be returned in the CDS Hooks response.

## Information Card
Upon completion of the search the CDS Hooks process shall construct a response and return a card to the Provider system.
The Card shall indicate whether a match was found for the patient and whether information is available for each task (Encounter, Procedure, MedicationDispense).
The card should provide a link to a SMART-on-FHIR app that shall receive an access token that allows the Smart app to query the Health Plan system to retrieve the Transaction Bundle.

