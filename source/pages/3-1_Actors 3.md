---
title: 3-1 Actors
layout: default
active: 3-1 Actors
---

[Previous Page](3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html)

<ul id="markdown-toc">
	Section Guide:
  <li><a href="3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" id="markdown-toc-section3">Implementation...</a></li>
  <li><a href="3-1_Actors.html" id="markdown-toc-actors">- Actors</a></li>
  <li><a href="3-2_Exchange_Interactions.html" id="markdown-toc-interactions">- Exchange Interactions</a></li>
	<li><a href="3-3_Data_Payloads.html" id="markdown-toc-payloads">- Data Payloads</a></li>
	<li><a href="3-4_Interaction_Methods.html" id="markdown-toc-interactions">- Interaction Methods</a></li>
	<li><a href="3-5_Interaction_and_Payload_Matrix.html" id="markdown-toc-matrix">- Interaction and Payload Matrix</a></li>
	<li><a href="3-6_Data_Mapping.html" id="markdown-toc-mapping">- Data Mapping</a></li>
</ul>

The following actors are recognized in the PDex IG:

- **Health Plan**: The Insurance entity, or Payer, who handles claims for services provided to their plan members. 
- **Member**: The health plan member / patient who is, or was, a member of a health plan.
- **Provider**: The practitioner or clinician, or their representative, that initiates a data access request to retrieve member data from a health plan.
- **Third Party Application**: Health Plan Members / Patients have a right under the Health Insurance Portability and Accountability Act of 1996 (HIPAA) to direct the information held by a covered entity, such as a Hospital or Health Plan to a third party of their choosing.

For the purposes of this IG there is nothing to prevent a covered entity, such as a Provider, from creating an integration interface or application that they submit for approval and connection to a Health Plan API. In that situation the covered entity operates under the same conditions and authorization processes as any other Third Party Application where any sharing of Member information requires explicit authorization to be given by the member via OAuth2.0.


<ul>
  <li><a href="3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" >Previous</a></li>
  <li><a href="3-2_Exchange_Interactions.html" >Next</a></li>
</ul>

[Next Page](3-2_Exchange_Interactions.html)