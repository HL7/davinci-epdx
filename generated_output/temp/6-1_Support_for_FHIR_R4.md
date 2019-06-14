---
title: 6-1 Support for FHIR R4
layout: default
active: 6-1 Support for FHIR R4
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="./6_CDS-Hooks.html" id="markdown-toc-cds-hooks">6 CDS-Hooks</a></li>
  <li><a href="./6-1_Support_for_FHIR_R4.html" id="markdown-toc-r4-support">6-1 Support for FHIR R4</a></li>
  <li><a href="./6-2_Additional_or_Modified_Hooks.html" id="markdown-toc-additional">6-2 Additional or Modified Hooks</a></li>
  <li><a href="./6-3_PDex_Hooks.html" id="markdown-toc-pdex-hooks">6-3 PDex Hooks</a></li>
  <li><a href="./6-4_Hook_Configuration.html" id="markdown-toc-hook-configuration">6-4 Hook Configuration</a></li>
	<li><a href="./6-5_Systems.html" id="markdown-toc-systems">6-5 Systems</a></li>
	<li><a href="./6-6_Workflow_Examples.html" id="markdown-toc-examples">6-6 Workflow Examples</a></li>
	<li><a href="./6-6-1_First_Visit_with_New_Provider.html" id="markdown-toc-first-visit">6-6-1 First Visit with New Provider</a></li>
	<li><a href="./6-6-2_Return_Visit_with_Provider.html" id="markdown-toc-return-visit">6-6-2 Return Visit with Provider</a></li>
<li><a href="./6-6-3_FHIR_Profiles_and_CDS_Hooks_Context.html" id="markdown-toc-profiles-and-context">6-6-3 FHIR Profiles and CDS Hooks Context</a></li>
	<li><a href="./6-7_Handling_Data_Provenance.html" id="markdown-toc-provenance">6-7 Handling Data Provenance</a></li>
</ul>

The hooks published in the CDS Hooks specification provide a list of context resources for the DSTU2 and STU3 versions of FHIR. The CDS Hook specification won't be updated to include R4 resources until after R4 is finalized. Because this implementation guide is being written to support FHIR R4 as well as STU3 and Argonaut (DSTU2), it provides guidance on what R4 resources are relevant for each hook (both pre-existing hooks as well as newly proposed hooks).

It is possible that the actual list of R4 resources provided for the hooks will differ from that proposed in this IG. Future versions of the implementation guide will adjust accordingly.

The CDS Hooks payload received from an EMR can include DSTU2, STU3 or R4 resources. The Payer's CDS Hooks service **SHALL** handle the content in the JSON hooks payload, regardless of version of FHIR used for incorporated resources.

The health plan's CDS Hooks service **SHALL** provide access to FHIR R4 resources based on Profiles identified in the US Core, Da Vinci PDex and HRex IGs.

The SMART-on-FHIR App that **MAY** be called from the returned CDS Hooks card will not translate R4 profiles to earlier versions of FHIR. 

When interacting with EMR systems that support FHIR R4 the SMART App **SHALL** evaluate the EMR System's CapabilityStatement to determine which of the records selected by the Provider can be written to the EMR via the FHIR API. Where the EMR's FHIR API does not enable the SMART App to write a resource via the API the SMART App shall write the records that it is permitted to write to the API. The remaining selected records **SHALL** be compiled into a FHIR bundle, a PDF **SHALL** be created to provide a human-readable version of the bundle and both documents **SHALL** be attached as a DocumentReference and commited to the patient's record. 

Where an EMR providing an R4 API prevents the attaching of a FHIR bundle to a DocumentReference the SMART APP **SHALL** attempt to write the selected records based upon the options listed below for graceful write degradation.

### 6-1-1 Graceful write degradation

When interacting with EMR systems that support FHIR versions prior to FHIR R4 the SMART App **SHALL** , where permitted by the target EMR, create a DocumentReference and encapsulate a PDF, human readable version of the records being committed, together with a document bundle that encapsulates the FHIR resources from the health plan that the provider has selected to commit to the patient's record.

Where the EMR does not support the attachment of FHIR Bundles to a DocumentReference record the SMART App **SHALL** create a human readable PDF version of the selected resources and attach this document to the DocumentReference and commit to the patient's record.

Where the EMR does not support the attachment of PDF Documents to a DocumentRefernece record the SMART App **SHALL** create an HTML or XHTML document that contains the selected resources and attach this document to the DocumentReference and commit to the patient's record.

Where the EMR does not support the attachment of HTML/XHTML documents to a DocumentRefernece record the SMART App **SHALL** create a human readable ASCII text version of the selected resources and attach this to the DocumentReference and commit to the patient's record.

To summarize this graceful degradation in functionality the priority for writing information to a target EMR should be:

1. Write to information to the respective target resources
2. Where data can't be written to target resources then create a Document Reference that comprises a FHIR bundle and a human readable PDF of the records being committed.
3. Where the DocumentReference resource does not support committing a FHIR bundle store the PDF document.
4. Where the DocumentReference does not support writing a PDF store an HTML or XHTML version.
5. Where the DocumentReference does not support HTML or XHTML content write an ASCII text version.





