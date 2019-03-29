---
title: Provider-controlled Information Requests and Filtering
layout: default
active: Provider-controlled Information Requests and Filtering
---

<table style="background-color:rgb(195,231,244);width:100%;">
	<tr><td>Question_For_Comment (Q_F_C1):</td></tr>
  <tr><td><i>
		How could Health Plan initiated data exchange be handled? 
		</i></td></tr>	
</table>

The Payer Data exchange Implementation Guide defines methods for Providers to request information from Payers.

This IG does not cover the Payer-initiated transfer of unsolicited information to a provider. All transfers will be initiated as part of a Provider workflow, such as when a new patient presents for an appointment, using CDS-Hooks.

All search parameters and subsequent filtering of returned information is controlled by the Provider making the information request.  The Payer does not filter information that has been requested by the provider.

<table style="background-color:rgb(195,231,244);width:100%;">
	<tr><td>Question_For_Comment (Q_F_C2):</td></tr>
  <tr><td><i>
		Should we create a SMART-on-FHIR App that performs the filtering of received data.
		
		</i></td></tr>	
</table>

CDS-Hooks returns Link to Payer Smart-on-FHIR App.

CDS-Hooks context contains:

ProviderId
PatientId
EncounterId
(SubscriberId)

Patient Record - Add a slice where SubscriberId is a slice with a requirement of "SHOULD".

These are used to query the Providers system to get the patient information.

CDS-Hooks uses Patient Demographic data to search for Health Plan Member SubscriberId.

CDS Hooks returns an Access Token and URL with parameters to a Health Plan's SMART-on-FHIR App.

Access Token to Patient record at Health Plan
SMART app does a GET to Health Plan
App then presents the data for filtering by Provider personnel.
Selected Data is evaluated against the CapabilityStatement at the Provider to determine what data can be written directly as FHIR Resources and what data needs to be be consolidated into a report that can be written as a DocumentReference.


