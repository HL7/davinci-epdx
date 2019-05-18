---
title: 5 Provider-controlled Information Requests and Filtering
layout: default
active: 5 Provider-controlled Information Requests and Filtering
---

<table style="background-color:rgb(195,231,244);width:100%;">
<tr><td>Question_For_Comment (Q_F_05):</td></tr>
<tr><td>
    <i>
	How could Health Plan initiated data exchange be handled?
    </i>
</td></tr>
</table>

The Payer Data exchange Implementation Guide defines methods for Providers to request information from Health Plans.

This IG does not cover the Payer-initiated transfer of unsolicited information to a provider. All transfers will be initiated as part of a Provider workflow, such as when a new patient presents for an appointment, using CDS-Hooks or triggered via a manual interaction with a SMART-on-FHIR app that generates the necessary CDS-Hook.

All search parameters and subsequent filtering of returned information **SHALL** be controlled by the Provider making the information request.  The Payer does not filter information that has been requested by the provider.

