---
title: 3-2 Exchange Interactions
layout: default
active: 3-2 Exchange Interactions
---

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

The PDex IG is specifying three exchange interactions:
 
1. Providers and Health Plans (payers) exchanging information about the Member that a provider is caring for (P2HPX).
2. Health Plans via a Member authorized exchange when a Member has moved from enrollment in one health plan to another health plan (MauthHPX).
3. Health Plans and Third Party Applications that a Member has authorized to share the health information held by the health plan.

Two subsidiary Payer Data exchange Implementation Guides address the Member-authorized sharing of Health Plan information with Third Party Applications (Mauth3PX): 
- Healthcare Network Directory.
- Pharmacy Network Directory.
- Prescription Drug Formulary.

These subsidiary IGs are:
- Payer Data exchange Plan Network Directory (PDex-plan-net) IG covering Healthcare and Pharmacy networks: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/
- Payer Data exchange Drug formulary (PDex-formulart) IG covering prescription drug formulary: http://build.fhir.org/ig/HL7/davinci-pdex-formulary/

<ul>
  <li><a href="3-1_Actors.html" >Previous</a></li>
  <li><a href="3-3_Data_Payloads.html" >Next</a></li>
</ul>