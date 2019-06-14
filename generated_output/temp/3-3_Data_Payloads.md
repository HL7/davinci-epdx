---
title: 3-3 Data Payloads
layout: default
active: 3-3 Data Payloads
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="./3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" id="markdown-toc-section3">Implementation...</a></li>
  <li><a href="./3-1_Actors.html" id="markdown-toc-actors">- Actors</a></li>
  <li><a href="./3-2_Exchange_Interactions.html" id="markdown-toc-interactions">- Exchange Interactions</a></li>
	<li><a href="./3-3_Data_Payloads.html" id="markdown-toc-payloads">- Data Payloads</a></li>
	<li><a href="./3-4_Interaction_Methods.html" id="markdown-toc-interactions">- Interaction Methods</a></li>
	<li><a href="./3-5_Interaction_and_Payload_Matrix.html" id="markdown-toc-matrix">- Interaction and Payload Matrix</a></li>
	<li><a href="./3-6_Data_Mapping.html" id="markdown-toc-mapping">- Data Mapping</a></li>
</ul>

The PDex IG defines four types of data payload:

1. Member Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

All resources and operations available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

See [Section 2-7](./2-7_PDex_Data_Payloads.html) for details of the Data Payloads and operations.

The Network Directory and Medication Formulary data payloads are defined in their respective subsidiary PDex IGs.
