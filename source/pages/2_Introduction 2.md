---
title: 2 Introduction
layout: default
active: 2 Introduction
---

[Previous Page](1-2_Conventions.html)

<ul id="markdown-toc">
	Section Guide:
  <li><a href="2_Introduction.html" id="markdown-toc-introduction">Introduction</a></li>
  <li><a href="2-1_Implementation_Guide_Scope.html" id="markdown-toc-scope">- Implementation Guide Scope</a></li>
  <li><a href="2-2_Member_Consent.html" id="markdown-toc-consent">- Member Consent</a></li>
	<li><a href="2-3_FHIR.html" id="markdown-toc-fhir">- FHIR</a></li>
	<li><a href="2-4_Supporting_Specifications.html" id="markdown-toc-supportingspecifications">- Supporting Specifications</a></li>
	<li><a href="2-5_Implementation_Assumptions.html" id="markdown-toc-assumptions">- Implementation Assumptions</a></li>
	<li><a href="2-6_Implementation_Hierarchy_and_Priorities.html" id="markdown-toc-hierarchy">- Implementation Hierarchy and Priorities</a></li>
	<li><a href="2-7_PDex_Data_Payloads.html" id="markdown-toc-payloads">- PDex Data Payloads</a></li>
</ul>

The PDex IG identifies three actors and specifies three interactions that occur. Each interaction differs based upon the actors involved and the data payload that **SHALL** be communicated. 

**Actors:**
1. Health Plans
2. Providers
3. Third-Party Applications
  
**Interactions:**
1. Payer to Provider Exchange
2. Member-authorized Health Plan to Health Plan Exchange
3. Member-authorized Health Plan to Third Party Applications 
	
Whereas the Blue Button 2.0 initiative is specifying the profiles used to communicate claims information between health plans and their members. The PDex Implementation Guide (IG) is focused on presenting a members health and claims information in FHIR clinical profiles that are more easily consumed by Electronic Medical Records (EMR) systems. 
                                                                                                                                                   
The same FHIR profiles used to support communication between the health plan and providers will also be used to provide the payload of member health information that will be exchanged between health plans when authorized by a health plan member.

The Patient-everything operation is also included as part of this implementation. This is included to provide Health Plans with the ability to push member-authorized health history via a FHIR bundle that can be exchanged over existing, or future, secure transports between trusted parties.
                                                                                                                                                   
While the authorization and communication mechanisms may differ between the provider-to-payer exchange (P2HPX) and the member-authorized  Payer-to-Payer exchange (MauthHPX) or member-authorized Payer to Third-Party Application exchange (Mauth3PX)  the payload of member history will be the same.  
                                                                                                                                                   
The objective with the above approach is to:
- Minimize the proliferation of FHIR profiles by encouraging the re-use of FHIR profiles that have seen significant development effort invested in development and implementation
- Consolidate the number of operational interfaces that health plans and  EMR systems need to maintain in order to meet regulatory requirements.

<ul>
  <li><a href="1-2_Conventions.html" >Previous</a></li>
  <li><a href="2-1_Implementation_Guide_Scope.html" id="markdown-toc-scope" >Next</a></li>
</ul>

[Next Page](2-1_Implementation_Guide_Scope.html)