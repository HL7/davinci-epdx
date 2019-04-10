---
title: Hooks
layout: default
active: Hooks
---

The hook used by this specification (appointment-book) identifies specific resources that can be passed as part of the hook invocation.

* appointment-book
This hook is described in the CDS Hook specification [here](https://cds-hooks.org/hooks/encounter-start/). This version of the PDex implementation guide refers to version 1.0.

Two additional fields are appended to the context segment of the appointment-book hook to support the PDex use case:

<table>
	<tr>
		<td>Field</td>
		<td>Optionality</td>
		<td>Prefetch Token</td>
		<td>Type</td>
		<td>Description</td>
	</tr>	
	<tr>
   <td>subscriberId</td>
		<td>Optional</td>
		<td>Yes</td>
		<td>string</td>
		<td>The subscriber.Id from the FHIR Coverage resource representing a uniquely identifying number for a member of a health plan</td>
  </tr>
	<tr>
		<td>Tasks</td>
		<td>Optional</td>
		<td>object</td>
		<td>An array of tasks that define the resource entry point for a member enquiry to a health plan and the scope of the search parameters for that enquiry.</td> 
	</tr>
	</table>
	
<table style="background-color:rgb(195,231,244);width:100%;">
	<tr><td>Question_For_Comment (Q_F_12):</td></tr>
  <tr><td><i>
		Should health plans include the patient portal URL on the health plan coverage card issued to members and then should CDS Hooks discovery be at {baseURI}/cds-services where {BaseURI} is the patient portal address provided on the insurance card.
		</i></td></tr>	
</table>

