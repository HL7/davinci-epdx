---
title: Providing data provenance 
layout: default
active: Providing data provenance 
---

A Provenance resource is provided with each Encounter, Medication and Procedure resource to identify the source of the information. The Provenance resource should also identify whether the data came via a clinical record or a claim record.

The Provenance record will be populated as follows:

<table>
	<tr><td>Field</td>
		<td>Value</td>
	</tr>
  <tr><td>
		occurredPeriod or occurredDataTime</td>	
		<td>dateTime or Period of the encounter/procedure/medication being provided</td>
	</tr>
	<tr><td>
		recorded</td>
		<td>Time of this transaction</td>
	</tr>
<tr><td>agent.[0].type<.td>
	<td>AMENDER (for conversion of claims data to clinical resources) | TRANS (for information taken from manual input)| REVIEWER (for clinical resources)</td>
	</tr>
	<tr><td>
		agent.[0].role</td>
		<td>informant | custodian</td>
	</tr>
	<tr>
<td>agent.[0].who</td>
		<td>Organization resource identifying the health plan</td>
	</tr>
<tr><td>
	agent.[1].type</td>	
	<td>SOURCE</td>
	</tr>
	<tr><td>
		agent.[1].role</td>	
		<td>enterer | performer | author</td>
	</tr>
<tr><td>
	agent.[1].who</td>
	<td>Organization | Practitioner or other resource identifying the entity providing the source information</td>
	</tr>
</table>
