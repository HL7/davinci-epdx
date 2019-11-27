---
title: 3-6 Data Mapping
layout: default
active: 3-6 Data Mapping
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

Health Plans **SHALL** map claims and clinical information for a member to US Core FHIR Resources based on R4.
Where A US Core FHIR R4 Resource is not defined Health Plans **SHALL** map claims and clinical information to FHIR Profiles defined in this IG, subsidiary PDex IGs (PDex Plan Network and PDex Plan Formulary IGs) or the Da Vinci HRex IG.

The mapping of patient, coverage and claims information to the relevant FHIR US Core and Da Vinci PDex/HRex profiles is covered in this section.

Mapping is also required when data is exchanged between systems. The PDex IG exchanges are centered around Member/Patients. FHIR Platforms generate their own Identifiers when creating resources. Consequently a Patient resource in one system can have a different FHIR Resource ID from a Patient in another system. When a bundle of resources are retrieved from a Health Plan's FHIR API it will be necessary to map identifiers to determine whether a record in the target system needs to be updated or created. The following step-by-step approach is proposed for handling the import of a bundle of resources received as part of a Patient-everything FHIR bundle.

In the steps below "Received" refers to the information requested from a Health Plan's FHIR API. "Target" refers to the target FHIR API of the organization making the request. In the Payer to Payer exchange scenario the New Plan is the Target and the Old Health Plan provides the "Received" bundle. 

1. Use the received Patient resource to match to the target Patient resource. Use the Target Patient Resource ID for any Patient references used in subsequently imported records from the Received bundle.
2. Update the Target Patient Resource to add the Received Patient Identifiers from the Received Patient Resource.
3. Identify Received Practitioner resources in the bundle and use NPI, where available, to map to the Target Practitioner Resources. If the Practitioner is not found in the Target system create a record. Use the Target Practitioner Resource ID for any references to this Practitioner in the received bundle.
4. Identify Received Organization resources in the bundle and use NPI, where available, to map to the Target Organization Resources. If the Organization is not found in the Target system create a record. Use the Target Organization Resource ID for any references to this Organization in the received bundle.
5. Identify Received Location resources in the bundle and map to Target Location resources. If the Location is not found in the Target system create a record. Use the Target Organization Resource ID for any references to this Location in the received bundle.

It is recommended that the Identifier field in a resource be used to record the ID of the corresponding resource imported from a received bundle. This should simplify mapping for subsequent bundles received from the sending FHIR API.

**Providing data in sub-element fields**

In this data mapping section each profile has a listing of the minimum essential fields that are required to enable a US Core profile to be successfully validated. If a field is marked as required the Health Plan **SHOULD** populate the field, or use a [NULL Flavor](https://www.hl7.org/fhir/v3/NullFlavor/cs.html), unless the field is a sub-element of another field where that parent field does NOT have a minimum cardinality of 1. For example, if the parent field has a cardinality of "0..1" or "0..\*" the sub-element field does not need to be populated.

<ul>
  <li><a href="3-5_Interaction_and_Payload_Matrix.html" >Previous</a></li>
  <li><a href="3-6-1_US_Core_Patient.html" >Next</a></li>
</ul>