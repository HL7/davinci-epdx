---
title: 4 Use Case Scenarios
layout: default
active: 4 Use Case Scenarios
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="./4_Use_Case_Scenarios.html" id="markdown-toc-scenarios">4 Use Case Scenarios</a></li>
  <li><a href="./4-1_Patient_Persona.html" id="markdown-toc-persona"></a>4-1 Patient Persona</li>
  <li><a href="./4-2_Useful_Patient_History_for_Providers.html" id="markdown-toc-useful-history"></a>4-2 Useful Patient History for Providers</li>
</ul>

This implementation guide addresses a Provider-to-Payer use cases:

- Patient at Primary Care Provider

The other use case is for Member/Patient-mediated Payer-to-Payer Exchange:

- Consumer enrolls with new health plan and accesses their prior health plan to authorize sharing of the health history that the prior health plan holds on the consumer.

The examples used in this guide are based on Payers providing claims from events where a member visits an ambulatory provider or when a member switches health plans.


<table style="background-color:rgb(195,231,244);width:100%">

<tr>
<td>Question_For_Comment(Q_F_01):</td>
<\tr>
<tr><td>
<i>
What other claims or categories of data available to payers should be converted to FHIR clinical resources to release to providers? <br/>
	In what sequence should these other categories of data be tackled?
</i>
</td></tr>	
</table>

Three example data requests from Providers to Health Plans are covered in this IG and the associated Reference Implementation:

1. What Encounters has the patient had since mm/dd/yyyy, excluding encounters at my organization.
2. What procedures has the patient had?
3. What medications has the patient received (i.e. A claim for a medication has been settled by the health plan)

Reference Implementations can be found in the Da Vinci Github account:
	- [PDex SMART-on-FHIR+CDS-Hook Patient Import App](https://github.com/HL7-DaVinci/PDex-Patient-Import-App)
	- **TODO** Member-authorized Payer-to-Payer Exchange App
	