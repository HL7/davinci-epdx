---
title: Use Case Scenarios
layout: default
active: Use Case Scenarios
---

This implementation guide addresses three use cases:
* New Patient at Primary Care Provider
* Returning Patient at Primary Care Provider
* New Patient at Specialist

The examples used in this guide are based on Payers providing claims from events where a member visits an ambulatory provider.

<table style="background-color:rgb(195,231,244);width:100%">
	<tr><td>Question_For_Comment(Q_F_01):</td></tr>
  <tr><td><i>
		What other claims or categories of data available to payers should be converted to FHIR clinical resources to release to providers? <br/>
		In what sequence should these other categories of data be tackled?
	</i></td></tr>	
</table>

Three example data requests from Providers to Health Plans are covered in this IG:
1. What Encounters has the patient had since mm/dd/yyyy, excluding encounters at my organization.
2. What procedures has the patient had?
3. What medications has the patient received (i.e. A claim for a medication has been settled by the health plan)

