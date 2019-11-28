---
title: 3-6-7 US Core Procedure
layout: default
active: 3-6-7 US Core Procedure
---

[Previous Page](3-6-6_US_Core_Practitioner.html)

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


<<<<<<< HEAD
The  [US Core Procedure profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)  **SHALL** be used to record a members health events.
=======
The  [US Core Procedure profile](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-procedure.html)  **SHALL** be used to record a members health events.
>>>>>>> 1aa5b274a3cd68f250b556457bc83699490f4480

The essential fields to be provided in the US Core Procedure resource are:

| R4 Hierarchical Name      | R4 Name      | Card. | Type                                                                                         |
|---------------------------|--------------|-------|----------------------------------------------------------------------------------------------|
| Procedure                 | Procedure    | 0..*  |                                                                                              |
| Procedure.id              | id           | 0..1  | id                                                                                           |
| Procedure.status          | status       | 1..1  | code                                                                                         |
| Procedure.code            | code         | 1..1  | CodeableConcept                                                                              |
| Procedure.subject         | subject      | 1..1  | Reference(US Core Patient Profile)                                                           |
| Procedure.performed[x]    | performed[x] | 1..1  | dateTime, Period                                                                             |
| Procedure.performer.actor | actor        | 1..1  | Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device) |


#### 3-6-3-1 Health Plan Mapping Assistance
<<<<<<< HEAD
A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [US Core Procedure profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html). This is shown below as an assistance  to implementers:
=======
A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [US Core Procedure profile](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-procedure.html). This is shown below as an assistance  to implementers:
>>>>>>> 1aa5b274a3cd68f250b556457bc83699490f4480

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor     | FHIR Profile      | Profile Field                     | ValueSet | Notes              |
|------|-------------------|------------------|---------------------|-------------------|-----------------------------------|----------|--------------------|
| 1.4  | Member            | BENE_ID          | Patientid           | US Core Procedure | .subject                          |          | Reference(Patient) |
| 1.1  | Claim-Line        |                  | Service (from) date | US Core Procedure | .occurence.occurrencePeriod.start |          |                    |
| 1.1  | Procedure         |                  | Procedure code      | US Core Procedure | .code                             |          |                    |
| 2.1  | Procedure         |                  | Procedure date      | US Core Procedure | .performed.dateTime               |          |                    |
| 3.1  | Procedure         |                  | Procedure code type | US Core Procedure | .category                         |          |                    |
| 4.1  | Procedure         |                  | Procedure type      | US Core Procedure | .code.coding.system               |          |                    |
| 5.1  | Procedure         |                  | Modifier Code -1    | US Core Procedure | .modifierExtension                |          |                    |
| 6.1  | Procedure         |                  | Modifier Code -2    | US Core Procedure | .modifierExtension                |          |                    |
| 7.1  | Procedure         |                  | Modifier Code -3    | US Core Procedure | .modifierExtension                |          |                    |
| 8.1  | Procedure         |                  | Modifier Code -4    | US Core Procedure | .modifierExtension                |          |                    |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/


#### 3-6-7-2 Example Procedure Resource

An example mapping of an Procedure resource for a medical impiant is shown here:

<pre>
{
  "resourceType" : "Procedure",
  "id" : "defib-implant",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: defib-implant</p><p><b>meta</b>: </p><p><b>identifier</b>: urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07aff</p><p><b>status</b>: completed</p><p><b>code</b>: Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber <span style=\"background: LightGoldenRodYellow\">(Details : {http://www.ama-assn.org/go/cpt code '33249' = '33249)</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>performed</b>: Mar 26, 2019, 7:55:26 PM --&gt; Mar 26, 2019, 8:25:26 PM</p><h3>Performers</h3><table class=\"grid\"><tr><td>-</td><td><b>Actor</b></td></tr><tr><td>*</td><td><a href=\"Practitioner-practitioner-1.html\">Generated Summary: id: practitioner-1; 9941339108, 25456; Ronald Bone </a></td></tr></table><h3>FocalDevices</h3><table class=\"grid\"><tr><td>-</td><td><b>Manipulated</b></td></tr><tr><td>*</td><td><a href=\"Device-udi-2.html\">Generated Summary: id: udi-2; status: active; manufacturer: ACME Biomedical; expirationDate: Jan 1, 2022, 12:00:00 AM; lotNumber: M320; serialNumber: AC221; modelNumber: 1.0; <span title=\"Codes: {http://snomed.info/sct 19257004}\">Implant</span></a></td></tr></table></div>"
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07aff"
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.ama-assn.org/go/cpt",
        "code" : "33249"
      }
    ],
    "text" : "Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2019-03-26T12:55:26-07:00",
    "end" : "2019-03-26T13:25:26-07:00"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/practitioner-1"
      }
    }
  ],
  "focalDevice" : [
    {
      "manipulated" : {
        "reference" : "Device/udi-2"
      }
    }
  ]
}
</pre>

<<<<<<< HEAD
Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/) for further examples of completed [US Core Procedure Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html).
=======
Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/STU3/index.html) for further examples of completed [US Core Procedure Profiles ](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-procedure.html).
>>>>>>> 1aa5b274a3cd68f250b556457bc83699490f4480


<ul>
  <li><a href="3-6-6_US_Core_Practitioner.html" >Previous</a></li>
  <li><a href="3-6-8_US_Core_Condition.html" >Next</a></li>
</ul>

[Next Page](3-6-8_US_Core_Condition.html)