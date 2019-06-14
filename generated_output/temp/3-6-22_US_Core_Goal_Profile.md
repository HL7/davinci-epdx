---
title: 3-6-22 US Core Goal Profile
layout: default
active: 3-6-22 US Core Goal Profile
---

<ul id="markdown-toc">
	Section Guide:
  <table>
		<tr>
			<td>
	<li><a href="./3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" id="markdown-toc-section3">Implementation...</a></li>
  <li><a href="./3-1_Actors.html" id="markdown-toc-actors">- Actors</a></li>
  <li><a href="./3-2_Exchange_Interactions.html" id="markdown-toc-interactions">- Exchange Interactions</a></li>
	<li><a href="./3-3_Data_Payloads.html" id="markdown-toc-payloads">- Data Payloads</a></li>
	<li><a href="./3-4_Interaction_Methods.html" id="markdown-toc-interactions">- Interaction Methods</a></li>
	<li><a href="./3-5_Interaction_and_Payload_Matrix.html" id="markdown-toc-matrix">- Interaction and Payload Matrix</a></li>
	<li><a href="./3-6_Data_Mapping.html" id="markdown-toc-mapping">- Data Mapping</a></li>
			</td>
			<td>
				<ul>
              <li><a href="3-6-1_US_Core_Patient.html">3-6-1 US Core Patient</a></li>
              <li><a href="3-6-2_Coverage.html">3-6-2 Coverage</a></li>
              <li><a href="3-6-3_US_Core_Encounter.html">3-6-3 US Core Encounter</a></li>
              <li><a href="3-6-4_US_Core_Location.html">3-6-4 US Core Location</a></li>
              <li><a href="3-6-5_MedicationDispense.html">3-6-5 MedicationDispense</a></li>
              <li><a href="3-6-6_US_Core_Practitioner.html">3-6-6 US Core Practitioner</a></li>
              <li><a href="3-6-7_US_Core_Procedure.html">3-6-7 US Core Procedure</a></li>
              <li><a href="3-6-8_US_Core_Condition.html">3-6-8 US Core Condition</a></li>
				</ul>
				</td>
			<td>
				<ul>
              <li><a href="3-6-9_US_Core_AllergyIntolerance.html">3-6-9 US Core AllergyIntolerance</a></li>
              <li><a href="3-6-10_US_Core_Immunization.html">3-6-10 US Core Immunization</a></li>
              <li><a href="3-6-11_US_Core_DiagnosticReport.html">3-6-11 US Core DiagnosticReport</a></li>
              <li><a href="3-6-12_US_Core_Observation.html">3-6-12 US Core Observation</a></li>
              <li><a href="3-6-13_US_Core_DocumentReference.html">3-6-13 US Core DocumentReference</a></li>
              <li><a href="3-6-14_US_Core_PractitionerRole.html">3-6-14 US Core PractitionerRole</a></li>
              <li><a href="3-6-15_US_Core_Device.html">3-6-15 US Core Device</a></li>
              <li><a href="3-6-16_US_Core_Organization.html">3-6-16 US Core Organization</a></li>
				</ul>
				</td>
			<td>
				<ul>
					    <li><a href="3-6-17_US_Core_CarePlan.html">3-6-17 US Core CarePlan</a></li>
              <li><a href="3-6-18_US_Core_CareTeam.html">3-6-18 US Core CareTeam</a></li>
              <li><a href="3-6-19_US_Core_Medication.html">3-6-19 US Core Medication</a></li>
              <li><a href="3-6-20_US_Core_MedicationRequest.html">3-6-20 US Core MedicationRequest</a></li>
              <li><a href="3-6-21_US_Core_MedicationStatement.html">3-6-21 US Core MedicationStatement</a></li>
              <li><a href="3-6-22_US_Core_Goal_Profile.html">3-6-22 US Core Goal Profile</a></li>
            </ul>
			</td>	
		</tr>
	</table>
</ul>

Where a Health Plan has access to a Member's health goal information they **SHALL** make the information available using the [US Core Goal](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html) resource.

The essential fields to be provided in the Goal resource are:

| R4 Hierarchical Name  | R4 Name          | Flags | Card. | Type                               |
|-----------------------|------------------|-------|-------|------------------------------------|
| Goal                  | Goal             | I     | 0..*  |                                    |
| Goal.id               | id               |      | 0..1  | id                                 |
| Goal.lifecycleStatus  | lifecycleStatus  | ?!S  | 1..1  | code                               |
| Goal.description      | description      | S    | 1..1  | CodeableConcept                    |
| Goal.subject          | subject          | S    | 1..1  | Reference(US Core Patient Profile) |
| Goal.target           | target           | SI    | 0..*  | BackboneElement                    |
| Goal.target.due[x]    | due[x]           | S    | 0..1  | date, Duration                     |
| Goal.outcomeCode      | outcomeCode      |       | 0..*  | CodeableConcept                    |
| Goal.outcomeReference | outcomeReference |       | 0..*  | Reference(Observation)             |

#### 3-6-22-1 Example Goal Resource

An example mapping of a Goal is shown below:

<pre>
{
  "resourceType" : "Goal",
  "id" : "goal-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: goal-1</p><p><b>meta</b>: </p><p><b>lifecycleStatus</b>: active</p><p><b>description</b>: Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs <span style=\"background: LightGoldenRodYellow\">(Details )</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><h3>Targets</h3><table class=\"grid\"><tr><td>-</td><td><b>Due[x]</b></td></tr><tr><td>*</td><td>Apr 5, 2016</td></tr></table></div>"
  },
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Patient is targeting a pulse oximetry of 92% and a weight of 195 lbs"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "target" : [
    {
      "dueDate" : "2016-04-05"
    }
  ]
}
</pre>

<ul>
  <li><a href="3-6-21_US_Core_MedicationStatement.html" >Previous</a></li>
  <li><a href="4_Use_Case_Scenarios.html" >Next</a></li>
</ul>