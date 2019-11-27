---
title: 6-4 Hook Configuration
layout: default
active: 6-4 Hook Configuration
---

[Previous Page](6-3_PDex_Hooks.html)

<ul id="markdown-toc">
	Section Guide:
  <li><a href="6_CDS-Hooks.html" id="markdown-toc-cds-hooks">6 CDS-Hooks</a></li>
  <li><a href="6-1_Support_for_FHIR_R4.html" id="markdown-toc-r4-support">6-1 Support for FHIR R4</a></li>
  <li><a href="6-2_Additional_or_Modified_Hooks.html" id="markdown-toc-additional">6-2 Additional or Modified Hooks</a></li>
  <li><a href="6-3_PDex_Hooks.html" id="markdown-toc-pdex-hooks">6-3 PDex Hooks</a></li>
  <li><a href="6-4_Hook_Configuration.html" id="markdown-toc-hook-configuration">6-4 Hook Configuration</a></li>
	<li><a href="6-5_Systems.html" id="markdown-toc-systems">6-5 Systems</a></li>
	<li><a href="6-6_Workflow_Examples.html" id="markdown-toc-examples">6-6 Workflow Examples</a></li>
	<li><a href="6-6-1_First_Visit_with_New_Provider.html" id="markdown-toc-first-visit">6-6-1 First Visit with New Provider</a></li>
	<li><a href="6-6-2_Return_Visit_with_Provider.html" id="markdown-toc-return-visit">6-6-2 Return Visit with Provider</a></li>
  <li><a href="6-6-3_FHIR_Profiles_and_CDS_Hooks_Context.html" id="markdown-toc-profiles-and-context">6-6-3 FHIR Profiles and CDS Hooks Context</a></li>
	<li><a href="6-7_Handling_Data_Provenance.html" id="markdown-toc-provenance">6-7 Handling Data Provenance</a></li>
</ul>

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
 
 Examples of preset search queries parameters **MAY** include, but are not limited to:
- Period (Start and optionally End date)
- Excluded Practitioner(s)
- Excluded Organization(s)
- Excluded Location(s)

The later three items are used to enable the Provider to exclude information that they may already have in their system.
These query parameters are examples of FHIR API queries. Any valid FHIR search query for a Patient **MAY** be constructed by the Provider.
The potentially valid search query parameters will be limited by the options provided in the Health Plan's FHIR API CapabilityStatement.

As a minimum the Health Plan's FHIR API **SHALL** limit returned results to the records that are related to the Patient/Member that is:
- The subject of the Provider query.
- The member authorizing the sharing of their information.

As a minimum searches of FHIR Resources **SHOULD** support the following query parameters where appropriate for a Resource Type:

- \_lastUpdated (e.g. Last Updated after yyyy-mm-dd.HH:MM:ss
- Period (ie. Date / Time filters)
- Inclusions or exclusions based upon Organization, Location or Practitioners


<ul>
  <li><a href="6-3_PDex_Hooks.html" >Previous</a></li>
  <li><a href="6-5_Systems.html" >Next</a></li>
</ul>

[Next Page](6-5_Systems.html)