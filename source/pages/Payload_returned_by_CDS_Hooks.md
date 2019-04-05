---
title: Payload returned by CDS Hooks
layout: default
active: Payload returned by CDS Hooks
---

## FHIR Payload
When the Payer receives an Encounter-start CDS Hooks request it will interpret the Task Resources and construct search queries.
Inclusion and Exclusion parameters are also provided in the Task.input "HistoryRange" and "OrganizationExcluded" input fields (organization.id, location.id or practitioner.id).
The relevant resources and supporting resources should be added to the Transaction Bundle that will be returned in the CDS Hooks response.

## Information Card
Upon completion of the search the CDS Hooks process will construct a response and return a card to the Provider system.
The Card will indicate whether a match was found for the patient and whether information is available for each task (Encounter, Procedure, MedicationDispense).
The card will also provide a link to a SMART-on-FHIR app that has an access token that allows the Smart app to query the Health Plan system to retrieve the Transaction Bundle.

