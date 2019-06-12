---
title: 2-6 Implementation Hierarchy and Priorities
layout: default
active: 2-6 Implementation Hierarchy and Priorities
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="./2_Introduction.html" id="markdown-toc-introduction">Introduction</a></li>
  <li><a href="./2-1_Implementation_Guide_Scope.html" id="markdown-toc-scope">- Implementation Guide Scope</a></li>
  <li><a href="./2-2_Member_Consent.html" id="markdown-toc-consent">- Member Consent</a></li>
	<li><a href="./2-3_FHIR.html" id="markdown-toc-fhir">- FHIR</a></li>
	<li><a href="./2-4_Supporting_Specifications.html" id="markdown-toc-supportingspecifications">- Supporting Specifications</a></li>
	<li><a href="./2-5_Implementation_Assumptions.html" id="markdown-toc-assumptions">- Implementation Assumptions</a></li>
	<li><a href="./2-6_Implementation_Hierarchy_and_Priorities.html" id="markdown-toc-hierarchy">- Implementation Hierarchy and Priorities</a></li>
	<li><a href="./2-7_PDex_Data_Payloads.html" id="markdown-toc-payloads">- PDex Data Payloads</a></li>
</ul>

The PDex Implementation Guide (IG) will utilize existing HL7 FHIR Profiles in the following order of descending priority:
 
1. Da Vinci HRex IG profiles (based on FHIR R4 - http://build.fhir.org/ig/HL7/davinci-hrex/index.html )
2. HL7 FHIR US Core STU3 (based on FHIR R4 - https://build.fhir.org/ig/HL7/US-Core-R4/ ) 
3. HL7 Argonaut Profiles (based on FHIR DSTU2 - http://www.fhir.org/guides/argonaut/r2/ )
4. HL7 FHIR US Core STU2 (based on FHIR STU3 - http://hl7.org/fhir/us/core/STU2/ )


This Implementation Guide recognizes that Electronic Medical Record systems used by providers may have existing FHIR APIs that are based on versions of FHIR prior to FHIR R4.

Amongst Health Plans there has been limited adoption of FHIR APIs. Therefore for Health Plan APIs identified in this IG the FHIR R4 version **SHALL** be used.
