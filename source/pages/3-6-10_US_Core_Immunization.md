---
title: 3-6-10 US Core Immunization
layout: default
active: 3-6-10 US Core Immunization
---

<ul id="markdown-toc">
	Section Guide:
  <table>
		<tr>
			<td>
	<li><a href="3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" id="markdown-toc-section3">Implementation...</a></li>
  <li><a href="3-1_Actors.html" id="markdown-toc-actors">- Actors</a></li>
  <li><a href="3-2_Exchange_Interactions.html" id="markdown-toc-interactions">- Exchange Interactions</a></li>
	<li><a href="3-3_Data_Payloads.html" id="markdown-toc-payloads">- Data Payloads</a></li>
	<li><a href="3-4_Interaction_Methods.html" id="markdown-toc-interactions">- Interaction Methods</a></li>
	<li><a href="3-5_Interaction_and_Payload_Matrix.html" id="markdown-toc-matrix">- Interaction and Payload Matrix</a></li>
	<li><a href="3-6_Data_Mapping.html" id="markdown-toc-mapping">- Data Mapping</a></li>
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


Where a Health Plan has access to Immunization information for a member the health plan **SHOULD** present the information using the [US Core Immunization](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-immunization.html) resource.

The essential fields to be provided in the US Core Immunization resource are:

| R4 Hierarchical Name                       | R4 Name       | Card. | Type                                                      |
|--------------------------------------------|---------------|-------|-----------------------------------------------------------|
| Immunization                               | Immunization  | 0..*  |                                                           |
| Immunization.id                            | id            | 0..1  | id                                                        |
| Immunization.status                        | status        | 1..1  | code                                                      |
| Immunization.statusReason                  | statusReason  | 0..1  | CodeableConcept                                           |
| Immunization.vaccineCode                   | vaccineCode   | 1..1  | CodeableConcept                                           |
| Immunization.patient                       | patient       | 1..1  | Reference(US Core Patient Profile)                        |
| Immunization.occurrence[x]                 | occurrence[x] | 1..1  | dateTime, string                                          |
| Immunization.primarySource                 | primarySource | 1..1  | boolean                                                   |
| Immunization.performer.actor               | actor         | 1..1  | Reference(Practitioner | PractitionerRole | Organization) |
| Immunization.protocolApplied.doseNumber[x] | doseNumber[x] | 1..1  | positiveInt, string                                       |


#### 3-6-10-1 Example Immunization Resource:

An example mapping of an Immunization resource is shown below:

<pre>
{
  "resourceType" : "Immunization",
  "id" : "imm-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: imm-1</p><p><b>meta</b>: </p><p><b>status</b>: completed</p><p><b>vaccineCode</b>: influenza, injectable, quadrivalent, contains preservative <span style=\"background: LightGoldenRodYellow\">(Details : {http://hl7.org/fhir/sid/cvx code '158' = 'influenza, injectable, quadrivalent', given as 'influenza, injectable, quadrivalent, contains preservative'}; {http://hl7.org/fhir/sid/ndc code '49281-0621-15' = '49281-0621-15', given as 'FLUZONE QUADRIVALENT'})</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>occurrence</b>: Jan 8, 2016, 12:00:00 AM</p><p><b>primarySource</b>: false</p></div>"
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/sid/cvx",
        "code" : "158",
        "display" : "influenza, injectable, quadrivalent, contains preservative"
      },
      {
        "system" : "http://hl7.org/fhir/sid/ndc",
        "code" : "49281-0621-15",
        "display" : "FLUZONE QUADRIVALENT"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "occurrenceDateTime" : "2016-01-08",
  "primarySource" : false
}
</pre>


<ul>
  <li><a href="3-6-9_US_Core_AllergyIntolerance.html" >Previous</a></li>
  <li><a href="3-6-11_US_Core_DiagnosticReport.html" >Next</a></li>
</ul>