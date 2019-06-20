---
title: 3-6-21 US Core MedicationStatement
layout: default
active: 3-6-21 US Core MedicationStatement
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


Where a Health Plan has access to medication information for a member they **SHALL** make the information available using the [US Core MedicationStatement](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-medicationstatement.html) resource.

The essential fields to be provided in the MedicationStatement resource are:

| R4 Hierarchical Name              | R4 Name             | Flags | Card. | Type                                                   |
|-----------------------------------|---------------------|-------|-------|--------------------------------------------------------|
| MedicationStatement               | MedicationStatement | I     | 0..*  |                                                        |
| MedicationStatement.id            | id                  |      | 0..1  | id                                                     |
| MedicationStatement.status        | status              | ?!S  | 1..1  | code                                                   |
| MedicationStatement.medication[x] | medication[x]       | S    | 1..1  | CodeableConcept, Reference(US Core Medication Profile) |
| MedicationStatement.subject       | subject             | S    | 1..1  | Reference(US Core Patient Profile)                     |
| MedicationStatement.effective[x]  | effective[x]        | S    | 0..1  | dateTime, Period                                       |
| MedicationStatement.dateAsserted  | dateAsserted        | S    | 1..1  | dateTime                                               |
| MedicationStatement.derivedFrom   | derivedFrom         | S     | 0..*  | Reference(Resource)                                    |

#### 3-6-21-1 Example MedicationStatement Resource

An example mapping of a MedicationStatement is shown below:

<pre>
{
  "resourceType" : "MedicationStatement",
  "id" : "uscore-ms2",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationstatement"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: uscore-ms2</p><p><b>meta</b>: </p><p><b>contained</b>: </p><p><b>status</b>: active</p><p><b>medication</b>: lisinopril oral 10 mg. Generated Summary: unknown resource contained</p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>effective</b>: May 1, 2010, 12:00:00 AM --&gt; (ongoing)</p><p><b>dateAsserted</b>: May 1, 2016, 4:13:03 PM</p></div>"
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "med1",
      "code" : {
        "coding" : [
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "206765",
            "display" : "Lisinopril 10 MG Oral Tablet [Prinivil]"
          }
        ],
        "text" : "lisinopril oral 10 mg"
      }
    }
  ],
  "status" : "active",
  "medicationReference" : {
    "reference" : "#med1",
    "display" : "lisinopril oral 10 mg"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "effectivePeriod" : {
    "start" : "2010-05-01"
  },
  "dateAsserted" : "2016-05-01T16:13:03Z"
}
</pre>

<ul>
  <li><a href="3-6-20_US_Core_MedicationRequest.html" >Previous</a></li>
  <li><a href="3-6-22_US_Core_Goal_Profile.html" >Next</a></li>
</ul>