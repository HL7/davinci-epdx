---
title: 3-6-17 US Core CarePlan
layout: default
active: 3-6-17 US Core CarePlan
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


Where a Health Plan has access to Care Plan information for a member they **SHALL** make the information available using the [US Core CarePlan](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html) resource.

The essential fields to be provided in the CarePla  resource are:

| R4 Hierarchical Name            | R4 Name  | Flags | Card. | Type                               |
|---------------------------------|----------|-------|-------|------------------------------------|
| CarePlan                        | CarePlan | I     | 0..*  |                                    |
| CarePlan.id                     | id       |      | 0..1  | id                                 |
| CarePlan.text                   | text     | S     | 1..1  | Narrative                          |
| CarePlan.text.status            | status   | S     | 1..1  | code                               |
| CarePlan.text.div               | div      | I     | 1..1  | xhtml                              |
| CarePlan.status                 | status   | ?!S  | 1..1  | code                               |
| CarePlan.intent                 | intent   | ?!S  | 1..1  | code                               |
| CarePlan.category               | category | SI   | 1..*  | CodeableConcept                    |
| CarePlan.subject                | subject  | S    | 1..1  | Reference(US Core Patient Profile) |
| CarePlan.activity.detail.status | status   | ?!    | 1..1  | code                               |

#### 3-6-17-1 Example CarePlan Resource

An example mapping of a CarePlan for a colonoscopy is shown below:

<pre>
{
  "resourceType" : "CarePlan",
  "id" : "colonoscopy",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan"
    ]
  },
  "text" : {
    "status" : "additional",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t<strong>Assessment</strong>\n\t\t\t<ol>\n\t\t\t\t<li>Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.</li>\n\t\t\t\t<li>Acute on chronic anemia secondary to #1.</li>\n\t\t\t\t<li>Azotemia, acute renal failure with volume loss secondary to #1.</li>\n\t\t\t\t<li>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</li>\n\t\t\t\t<li>Other chronic diagnoses as noted above, currently stable.</li>\n\t\t\t</ol>\n\t\t\t<table>\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Planned Activity</th>\n\t\t\t\t\t\t<th>Planned Date</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Colonoscopy</td>\n\t\t\t\t\t\t<td>April 21, 2000</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t</div>"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
          "code" : "assess-plan"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  }
}
</pre>

<ul>
  <li><a href="3-6-16_US_Core_Organization.html" >Previous</a></li>
  <li><a href="3-6-18_US_Core_CareTeam.html" >Next</a></li>
</ul>