---
title: 3-6-6 US Core Practitioner
layout: default
active: 3-6-6 US Core Practitioner
---

[Previous Page](3-6-5_MedicationDispense.html)

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


The  [US Core Practitioner profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html)  **SHALL** be used to record information about Practitioners.

The essential fields to be provided in the US Core Practitioner resource are:

| R4 Hierarchical Name            | R4 Name      | Card. | Type            |
|---------------------------------|--------------|-------|-----------------|
| Practitioner                    | Practitioner | 0..*  |                 |
| Practitioner.id                 | id           | 0..1  | id              |
| Practitioner.identifier         | identifier   | 1..*  | Identifier      |
| Practitioner.identifier.system  | system       | 1..1  | uri             |
| Practitioner.identifier.value   | value        | 1..1  | string          |
| Practitioner.name               | name         | 1..1  | HumanName       |
| Practitioner.name.family        | family       | 1..1  | string          |
| Practitioner.qualification.code | code         | 1..1  | CodeableConcept |


#### 3-6-6-1 Health Plan Mapping Assistance

A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [US Core Practitioner profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html). This is shown below as an assistance  to implementers:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor               | FHIR Profile         | Profile Field     | ValueSet | Notes |
|------|-------------------|------------------|-------------------------------|----------------------|-------------------|----------|-------|
| 1.1  | Claim-Provider    |                  | Claim billing provider NPI    | US Core Practitioner | .identifier.value |          |       |
| 3.1  | Claim-Provider    |                  | Claim attending physician NPI | US Core Practitioner | .identifier.value |          |       |
| 6.1  | Claim-Provider    |                  | Claim referring provider NPI  | US Core Practitioner | .identifier.value |          |       |
| 8.1  | Claim-Provider    |                  | Claim performing provider NPI | US Core Practitioner | .identifier.value |          |       |
| 10.1 | Claim-Provider    |                  | Claim operating physician NPI | US Core Practitioner | .identifier.value |          |       |
| 12.1 | Claim-Provider    |                  | Claim other physician NPI     | US Core Practitioner | .identifier.value |          |       |
| 14.1 | Claim-Provider    |                  | Claim rendering physician NPI | US Core Practitioner | .identifier.value |          |       |
| 17.1 | Claim-Provider    |                  | Claim PCP                     | US Core Practitioner | .identifier.value |          |       |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-6-2 Example Practitioner Resource

An example mapping of an Practitioner resource is shown here:

<pre>
{
  "resourceType" : "Practitioner",
  "id" : "practitioner-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: practitioner-1</p><p><b>meta</b>: </p><p><b>identifier</b>: 9941339108, 25456</p><p><b>name</b>: Ronald Bone </p><p><b>address</b>: 1003 Healthcare Drive Amherst MA 01002 (HOME)</p></div>"
  },
  "identifier" : [
    {
      "system" : "http://hl7.org.fhir/sid/us-npi",
      "value" : "9941339108"
    },
    {
      "system" : "http://www.acme.org/practitioners",
      "value" : "25456"
    }
  ],
  "name" : [
    {
      "family" : "Bone",
      "given" : [
        "Ronald"
      ],
      "prefix" : [
        "Dr"
      ]
    }
  ],
  "address" : [
    {
      "use" : "home",
      "line" : [
        "1003 Healthcare Drive"
      ],
      "city" : "Amherst",
      "state" : "MA",
      "postalCode" : "01002"
    }
  ]
}
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [US Core Practitioner Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html).






[Next Page](3-6-7_US_Core_Procedure.html)