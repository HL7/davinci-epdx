---
title: New Patient at Primary Care Provider
layout: default
active: New Patient at Primary Care Provider
---

When a new patient registers with a Provider a request for information about the patient can be issued to the Payer providing health coverage. 

This request can be triggered in one of two ways:
1.	When an appointment is being confirmed
2.	When the patient checks-in for the appointment

The Payer hook is defined as an Encounter-start.

The hook can be triggered automatically when an encounter record is created or updated.
The alternative manual trigger is for a SMART-on-FHIR in the Provider's EMR to be launched which collects data from the EMR, allows the input of the Patient's coverage information and constructs the CDS Hooks payload to make the call to the Payer's CDS Hooks endpoint.

These triggers will be configured as CDS-Hooks that are initiated as part of provider workflows. 