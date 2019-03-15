---
title: Useful Patient History for Providers
layout: default
active: Useful Patient History for Providers
---

When providers are building a health history for a new patient the information they are interested in includes:

* Ambulatory events
* In-patient events
* Medications

The PDex Implementation Guide will focus on examples related to Ambulatory events.

<table style="background-color:rgb(195,231,244);width:100%">
	<tr><td>Question_For_Comment(Q_F_C02):</td></tr>
  <tr><td><i>
		Are there other categories of clinical data that providers wish to see?
	</i></td></tr>	
</table>

As part of an event or episode of care the provider will be interested in the following types of data:

* Consultations
* Practitioners who the patient has seen
* Care Plan 
* Lab test results
* Image Studies
* Medical Devices
* Procedures
* Diagnoses
* Vital Signs
* Medications
* Immunizations
* Allergies
* Notes 
* Family History

These types of data can be mapped to FHIR clinical resources as follows:

<table style="background-color:rgb(195,231,244);width:100%">
	<tr><td>Question_For_Comment(Q_F_C03):</td></tr>
  <tr><td><i>
		Are these mappings from data types to FHIR R4/US Core profiles appropriate?
	</i></td></tr>	
</table>

<table style="width:100%">
	<tr><td>Data type</td><td>FHIR R4/US Core STU3 profile</td></tr>
  <tr>
		<td>Consultation</td>
		<td>Encounter: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-encounter.html"></a></td>
	</tr>	
	<tr>
		<td>Practitioners who the patient has seen</td>
		<td>CareTeam: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careteam.html"></a></td>
	</tr>	
	<tr>
		<td>Care Plan</td>
		<td>CarePlan: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careplan.html"></a></td>
	</tr>	
  <tr>
    <td>Lab test results</td>
    <td>DiagnosticReport: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html"></a></td>
  </tr> 
  <tr>
    <td>Image studies</td>
    <td>DocumentReference: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html"></a></td>
  </tr> 
  <tr>
    <td>Medical Devices</td>
    <td>Device: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-device.html"></a></td>
  </tr> 
	  <tr>
    <td>Procedures</td>
    <td>Procedure: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-procedure.html"></a></td>
  </tr> 
	  <tr>
    <td>Diagnoses</td>
    <td>DiagnosticReport: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html"></a></td>
  </tr> 
	  <tr>
    <td>Vital signs</td>
    <td>Observation: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-observation.html"></a></td>
  </tr> 
	    <tr>
    <td>Medications</td>
    <td>MedicationStatement: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-medicationstatement.html"></a></td>
  </tr> 
    <tr>
    <td>Immunizations</td>
    <td>Immunization: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-immunization.html"></a></td>
  </tr> 
    <tr>
    <td>Allergies</td>
    <td>AllergyIntolerance: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-allergyintolerance.html"></a></td>
  </tr> 
    <tr>
    <td>Notes</td>
    <td>DiagnosticReport: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html"></a></td>
  </tr> 
 <tr>
    <td>FamilyHistory</td>
    <td>DocumentReference: <a href="http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html"></a></td>
  </tr> 
</table>
<br/>
<br/>



