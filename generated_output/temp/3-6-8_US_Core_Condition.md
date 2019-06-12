---
title: 3-6-8 US Core Condition
layout: default
active: 3-6-8 US Core Condition
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


The essential fields to be provided in the US Core Condition resource are:

| R4 Hierarchical Name         | R4 Name            | Card. | Type                               |
|------------------------------|--------------------|-------|------------------------------------|
| Condition                    | Condition          | 0..*  |                                    |
| Condition.id                 | id                 | 0..1  | id                                 |
| Condition.clinicalStatus     | clinicalStatus     | 0..1  | CodeableConcept                    |
| Condition.verificationStatus | verificationStatus | 1..1  | CodeableConcept                    |
| Condition.category           | category           | 1..*  | CodeableConcept                    |
| Condition.code               | code               | 1..1  | CodeableConcept                    |
| Condition.subject            | subject            | 1..1  | Reference(US Core Patient Profile) |

#### 3-6-8-1 Example Condition Resource

An example mapping of a problem using the Condition is shown below:

<pre>
{
  "resourceType" : "Condition",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>meta</b>: </p><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-clinical code 'active' = 'Active', given as 'Active'})</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-ver-status code 'confirmed' = 'Confirmed', given as 'Confirmed'})</span></p><p><b>category</b>: Problem <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-category code 'problem-list-item' = 'Problem List Item', given as 'Problem List Item'})</span></p><p><b>code</b>: Single liveborn, born in hospital <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '442311008' = 'Liveborn born in hospital', given as 'Liveborn born in hospital'})</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>onset</b>: Aug 10, 2016, 12:00:00 AM</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ],
    "text" : "Active"
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed",
        "display" : "Confirmed"
      }
    ],
    "text" : "Confirmed"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }
      ],
      "text" : "Problem"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "442311008",
        "display" : "Liveborn born in hospital"
      }
    ],
    "text" : "Single liveborn, born in hospital"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy V. Shaw"
  },
  "onsetDateTime" : "2016-08-10"
}
</pre>

