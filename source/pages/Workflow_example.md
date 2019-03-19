---
title: Workflow example
layout: default
active: Workflow example
---

# First Visit with new Provider
Arthur calls his new provider to arrange for his annual physical.

The receptionist in the doctors office collects Arthur's personal information, health plan coverage information and creates an appointment, a patient record and an initial encounter record.  

A Physicians assistant reviews the planned encounter to determine if any tests need to be ordered prior to the patient visit.

The review of an Encounter Record by a Nurse, PA or Provider activates a CDS Hook transaction. The provider's system is pre-configured to apply the following search criteria:

	- Encounters in the previous 12 months, excluding encounters at the providers organization
	- All Procedures and Conditions known by the health plan
	- All medications dispensed in the past 6 months.