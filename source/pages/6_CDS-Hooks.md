---
title: 6 CDS-Hooks
layout: default
active: 6 CDS-Hooks
---

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

This section of the implementation guide defines the specific conformance requirements for systems wishing to conform to this Payer Data Exchange (PDex) Implementation Guide. The bulk of it focuses on the implementation of the CDS Hooks Specification to meet PDex use-cases. It also describes the use of SMART on FHIR and provides guidance on privacy, security and other implementation requirements.

This IG uses a combination of CDS-Hooks and SMART-on-FHIR to enable Providers to issue a query to a Health Plan and to retrieve information about their patient (the Health Plan member) that they **MAY** review and choose to commit to the patient record in their EMR.

CDS Hooks enables the Health Plan to be queried either via an on-demand transaction triggered from a SMRT-on-FHIR app, or from a workflow event in the EMR that triggers the hook, such as when an apppointment is booked for a patient.

The bulk of the functionality of this specification is implemented using CDS Hooks. The [Hooks specification](https://cds-hooks.org/) is small. Implementers should read and be familiar with all of it.

CDS Hooks is a relatively new technology. It is considered a Standard for Trial Use, meaning that it will continue to evolve based on implementer feedback and may change in ways that are not compatible with the current draft. As well, the initial version of the specification has focused on the core architecture and a relatively simple set of capabilities. Additional capabilities will be introduced in future versions.

To meet requirements identified by Da Vinci project participants, it is necessary to introduce some additional capabilities above and beyond what is currently found in the CDS Hooks specification. This section of the PDex implementation guide describes those additional capabilities and the mechanism the implementation guide proposes to implement them. The purpose of these customizations is to enable testing at connectathons and to support feedback into the CDS Hooks design process.

Each capability listed here has been proposed to the CDS Hooks community and may well become part of the official specification either in the initial release or in some future release. However, there is a significant likelihood that the manner in which the requirements are met may vary somewhat from a syntax or even an architectural approach. Future versions of this implementation guide will be updated to align with how these requirements are addressed in future versions of the CDS Hook specification. This implementation guide will not be able to be Normative (locked into backward compatibility mode) until the underlying CDS Hooks content is also normative.

This IG **SHOULD** be used in conjunction with the Da Vinci Health Record Exchange (HRex) Implementation Guide. The HRex IG defines CDS Hooks that are used across one or more Da Vinci Use Case-related IG. The PDex IG defines the payload(s) that are required to support each PDex use case using the relevant HRex defined Hooks.  

This implementation guide extends/customizes CDS Hooks in 4 ways: support for FHIR R4, extending the appointment-book hook, a hook configuration mechanism and additional response capabilities. Each are described below:

<ul>
  <li><a href="5_Provider-controlled_Information_Requests_and_Filtering.html" >Previous</a></li>
  <li><a href="6-1_Support_for_FHIR_R4.html" >Next</a></li>
</ul>