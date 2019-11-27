---
title: 4-2 Useful Patient History for Providers
layout: default
active: 4-2 Useful Patient History for Providers
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="4_Use_Case_Scenarios.html" id="markdown-toc-scenarios">4 Use Case Scenarios</a></li>
  <li><a href="4-1_Patient_Persona.html" id="markdown-toc-persona">4-1 Patient Persona</a></li>
  <li><a href="4-2_Useful_Patient_History_for_Providers.html" id="markdown-toc-useful-history">4-2 Useful Patient History for Providers</a></li>
</ul>

When providers are building a health history for a new patient the information they are interested in **MAY** include:

- Ambulatory events
- In-patient events
- Medications
- Procedures

The PDex Implementation Guide will focus on examples related to Ambulatory events.

<table style="background-color:rgb(195,231,244);width:100%">
	<tr><td>Question_For_Comment(Q_F_C03):</td></tr>
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

These types of data **SHALL** be mapped to FHIR clinical resources as follows:

| Data type                              | FHIR R4/US Core STU3 profile                                                                                  |
|----------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Consultation                           | Encounter: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-encounter.html                     |
| Practitioners who the patient has seen | CareTeam: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careteam.html                       |
| Care Plan                              | CarePlan: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-careplan.html"                      |
| Lab test results                       | DiagnosticReport: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html       |
| Image studies                          | DocumentReference: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html     |
| Medical Devices                        | Device: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-device.html                           |
| Procedures                             | Procedure: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-procedure.html                     |
| Diagnoses                              | DiagnosticReport: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html       |
| Vital signs                            | Observation: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-observation.html                 |
| Medications                            | MedicationDispense: http://hl7.org/fhir/R4/medicationdispense.html |
| Immunizations                          | Immunization: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-immunization.html               |
| Allergies                              | AllergyIntolerance: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-allergyintolerance.html   |
| Notes                                  | DiagnosticReport: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-diagnosticreport.html       |
| FamilyHistory                          | DocumentReference: http://hl7.org/fhir/us/core/2019Jan/StructureDefinition-us-core-documentreference.html     |


<ul>
  <li><a href="4-1_Patient_Persona.html" >Previous</a></li>
  <li><a href="5_Provider-controlled_Information_Requests_and_Filtering.html" >Next</a></li>
</ul>