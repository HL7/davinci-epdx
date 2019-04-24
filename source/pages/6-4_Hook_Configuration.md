---
title: 6-4 Hook Configuration
layout: default
active: 6-4 Hook Configuration
---

PDex supports three common scenarios where CDS Hooks **SHOULD** be used:

- New Patient presents at Provider
- Patient returns to Provider
- Patient presents at Specialist

The hook interaction for these scenarios is:
* appointment-book

When a Card is returned from the CDS Hooks appointment-book service by a Health Plan it will provide the following elements:

- An Access Token for secure access to the Health Plan's FHIR API
- The URL for the Health Plan's FHIR API 
- A result code indicating the result of a Member Search
- The returned information **MAY** include a link to a SMART-on-FHIR App to enable selection of resources by the Clinician that will be written to the Clinician's EMR system
- An information card with a human readable interpretation of the Member Search Result
- The information card **MAY** include a link to launch the SMART-on-FHIR App using the Access Token and FHIR Endpoint address to enable the Clinician to query information about their patient using the Health Plan's FHIR API.
 

The SMART-on-FHIR App **MAY** be configured with default FHIR search queries that can be set by the Clinician, or their organization. 
 
 Examples of preset search queries parameters **MAY** include:
- Period (Start and optionally End date)
- Excluded Practitioner(s)
- Excluded Organization(s)
- Excluded Location(s)

The later three items are used to enable the Provider to exclude information that they may already have in their system.
