---
title: 6-5 Systems
layout: default
active: 6-5 Systems
---

[Previous Page](6-4_Hook_Configuration.html)

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

This implementation guide sets expectations for two types of systems:

1. Client Systems
2. Payer Systems

### 6-5-1 Client Systems
Client systems are electronic medical records, pharmacy systems and other clinical and administrative systems responsible for the ordering and execution of patient-related services. These are systems whose users have a need for discovery of patient information from health plans who have provided coverage to the patient.

### 6-5-2 Payer Systems
Payer systems are systems run by health plans/insurers that provide insurance coverage to the patient and can provide claims history clinical information and benefits information about the patient.

The requirements and expectations described here are not intended to be exhaustive. Health plans and clients **MAY** support additional hooks, additional card patterns, additional resources, additional extensions, etc. The purpose of this implementation guide is to establish a baseline of expected behavior that communication partners can rely on and then build from. Future versions of this specification will evolve based on implementer feedback.

<ul>
  <li><a href="6-4_Hook_Configuration.html" >Previous</a></li>
  <li><a href="6-6_Workflow_Examples.html" >Next</a></li>
</ul>

[Next Page](6-6_Workflow_Examples.html)