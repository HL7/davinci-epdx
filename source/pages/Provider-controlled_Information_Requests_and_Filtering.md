---
title: Provider-controlled Information Requests and Filtering
layout: default
active: Provider-controlled Information Requests and Filtering
---

<table style="background-color:rgb(195,231,244);width:100%;">
	<tr><td>Question_For_Comment (Q_F_C1):</td></tr>
  <tr><td><i>
		This is a question we require comment on. 
		</i></td></tr>	
</table>

The Payer Data exchange Implementation Guide defines methods for Providers to request information from Payers.

This IG does not cover the Payer-initiated transfer of unsolicited information to a provider. All transfers will be initiated as part of a Provider workflow, such as when a new patient presents for an appointment, using CDS-Hooks.

All search parameters and subsequent filtering of returned information is controlled by the Provider making the information request.  The Payer does not filter information that has been requested by the provider.
