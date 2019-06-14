---
title: 3-6-3 US Core Encounter
layout: default
active: 3-6-3 US Core Encounter
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


An example mapping of Health Plan data for Members to the [US Core Encounter profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor                       | FHIR Profile      | Profile Field                                                            | ValueSet                                                                      | Notes                              |
|------|-------------------|------------------|---------------------------------------|-------------------|--------------------------------------------------------------------------|-------------------------------------------------------------------------------|------------------------------------|
| 1.5  | Member            | BENE_ID          | Patientid                             | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 1.1  | Claim             |                  | Claim service start date              | US Core Encounter | .period.start                                                            |                                                                               |                                    |
| 2.1  | Claim             |                  | Claim service end date                | US Core Encounter | .period.end                                                              |                                                                               |                                    |
| 5.1  | Claim             |                  | Member admission date                 | US Core Encounter | .period.start                                                            |                                                                               | Overrides claim service start date |
| 6.1  | Claim             |                  | Member discharge date                 | US Core Encounter | .period.end                                                              |                                                                               | Overrides claim service end date   |
| 7.2  | Claim             |                  | Patient account number                | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 9.1  | Claim             |                  | Claim unique identifier               | US Core Encounter | .identifier.id                                                           |                                                                               |                                    |
| 12.1 | Claim             |                  | Claim diagnosis related group         | US Core Encounter | .diagnosis.id                                                            |                                                                               | .diagnosis.use                     |
| 13.1 | Claim             |                  | Claim inpatient source admission code | US Core Encounter | .class                                                                   | http://build.fhir.org/v3/ActEncounterCode/vs.html                             |                                    |
| 14.1 | Claim             |                  | Claim inpatient admission type code   | US Core Encounter | .type                                                                    | https://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-us-core-encounter-type.html | CPT Coding                         |
| 21.1 | Claim             |                  | Patient discharge status code         | US Core Encounter | .hospitalization.dischargeDisposition                                    |                                                                               |                                    |
| 2.1  | Claim-Line        |                  | Line number                           | US Core Encounter | .diagnosis.id                                                            |                                                                               |                                    |
| 3.1  | Claim-Line        |                  | Service to date                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).occurence.occurrencePeriod.end |                                                                               |                                    |
| 4.1  | Claim-Line        |                  | Type of service                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).type                           |                                                                               |                                    |
| 5.1  | Claim-Line        |                  | Place of service code                 | US Core Encounter | .location.location.Reference(Location).type                              |                                                                               |                                    |
| 1.1  | Diagnosis         |                  | Diagnosis code                        | US Core Encounter | .diagnosis.condition                                                     |                                                                               |                                    |
| 2.1  | Diagnosis         |                  | Present on admission                  | US Core Encounter | .diagnosis.condition                                                     | http://build.fhir.org/valueset-diagnosis-role.html                            | .diagnosis.use                     |
| 3.1  | Diagnosis         |                  | Diagnosis code type                   | US Core Encounter | .diagnosis.condition.Reference(Condition).code                           |                                                                               |                                    |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

The minimum fields to be provided in the US Core Encounter resource are:

| R4 Hierarchical Name                           | R4 Name              | Card. | Type                                                             |
|------------------------------------------------|----------------------|-------|------------------------------------------------------------------|
| Encounter                                      | Encounter            | 0..*  |                                                                  |
| Encounter.id                                   | id                   | 0..1  | id                                                               |
| Encounter.identifier                           | identifier           | 0..*  | Identifier                                                       |
| Encounter.identifier.system                    | system               | 1..1  | uri                                                              |
| Encounter.identifier.value                     | value                | 1..1  | string                                                           |
| Encounter.status                               | status               | 1..1  | code                                                             |
| Encounter.class                                | class                | 1..1  | Coding                                                           |
| Encounter.type                                 | type                 | 1..*  | CodeableConcept                                                  |
| Encounter.subject                              | subject              | 1..1  | Reference(US Core Patient Profile)                               |
| Encounter.participant                          | participant          | 0..*  | BackboneElement                                                  |
| Encounter.participant.type                     | type                 | 0..*  | CodeableConcept                                                  |
| Encounter.participant.period                   | period               | 0..1  | Period                                                           |
| Encounter.participant.individual               | individual           | 0..1  | Reference(US Core Practitioner Profile)                          |
| Encounter.period                               | period               | 0..1  | Period                                                           |
| Encounter.reasonCode                           | reasonCode           | 0..*  | CodeableConcept                                                  |
| Encounter.diagnosis                            | diagnosis            | 0..*  | BackboneElement                                                  |
| Encounter.diagnosis.condition                  | condition            | 1..1  | Reference(US Core Condition Profile | US Core Procedure Profile) |
| Encounter.diagnosis.rank                       | rank                 | 0..1  | positiveInt                                                      |
| Encounter.hospitalization                      | hospitalization      | 0..1  | BackboneElement                                                  |
| Encounter.hospitalization.dischargeDisposition | dischargeDisposition | 0..1  | CodeableConcept                                                  |
| Encounter.location                             | location             | 0..*  | BackboneElement                                                  |
| Encounter.location.location                    | location             | 1..1  | Reference(US Core Location Profile)                              |

#### 3-6-3-1 Example Encounter Resource

An example mapping of an Encounter resource is shown here:

<pre>
TODO: Add Encounter Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [Encounter Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html).


<ul>
  <li><a href="3-6-2_Coverage.html" >Previous</a></li>
  <li><a href="3-6-4_US_Core_Location.html" >Next</a></li>
</ul>