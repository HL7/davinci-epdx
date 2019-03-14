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
		<td>[Encounter](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-encounter.html)</td>
	</tr>	
	<tr>
		<td>Practitioners who the patient has seen</td>
		<td>[CareTeam](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careteam.html)</td>
	</tr>	
	<tr>
		<td>Care Plan</td>
		<td>[CarePlan](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careplan.html)</td>
	</tr>	
  <tr>
    <td>Lab test results</td>
    <td>[DiagnosticReport](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html)</td>
  </tr> 
  <tr>
    <td>Image studies</td>
    <td>[DocumentReference](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html)</td>
  </tr> 
  <tr>
    <td>Medical Devices</td>
    <td>[Device](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-device.html)</td>
  </tr> 
	  <tr>
    <td>Procedures</td>
    <td>[Procedure](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-procedure.html)</td>
  </tr> 
	  <tr>
    <td>Diagnoses</td>
    <td>[DiagnosticReport](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html)</td>
  </tr> 
	  <tr>
    <td>Vital signs</td>
    <td>[Observation](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-observation.html)</td>
  </tr> 
	    <tr>
    <td>Medications</td>
    <td>[MedicationStatement](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-medicationstatement.html)</td>
  </tr> 
    <tr>
    <td>Immunizations</td>
    <td>[Immunization](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-immunization.html)</td>
  </tr> 
    <tr>
    <td>Allergies</td>
    <td>[AllergyIntolerance](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-allergyintolerance.html)</td>
  </tr> 
    <tr>
    <td>Notes</td>
    <td>[DiagnosticReport](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html)</td>
  </tr> 
 <tr>
    <td>FamilyHistory</td>
    <td>[DocumentReference](http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html)</td>
  </tr> 
</table>


