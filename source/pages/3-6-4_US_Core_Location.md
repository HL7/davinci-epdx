---
title: 3-6-4 US Core Location
layout: default
active: 3-6-4 US Core Location
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


The  [US Core Location profile](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-location.html)  **SHALL** be used to record location/facility-specific information.

The essential fields to be provided in the US Core Location resource are:

| R4 Hierarchical Name          | R4 Name              | Card. | Type                                    |
|-------------------------------|----------------------|-------|-----------------------------------------|
| Location                      | Location             | 0..*  |                                         |
| Location.id                   | id                   | 0..1  | id                                      |
| Location.status               | status               | 0..1  | code                                    |
| Location.name                 | name                 | 1..1  | string                                  |
| Location.telecom              | telecom              | 0..*  | ContactPoint                            |
| Location.address              | address              | 0..1  | Address                                 |
| Location.address.line         | line                 | 0..*  | string                                  |
| Location.address.city         | city                 | 0..1  | string                                  |
| Location.address.state        | state                | 0..1  | string                                  |
| Location.address.postalCode   | postalCode           | 0..1  | string                                  |
| Location.managingOrganization | managingOrganization | 0..1  | Reference(US Core Organization Profile) |

#### 3-6-4-1 Health Plan Mapping Assistance

A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of data for Members to the [US Core Location profile](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-location.html). This is shown below as an assistance  to implementers:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor               | FHIR Profile     | Profile Field     | ValueSet                                                         | Notes |
|------|-------------------|------------------|-------------------------------|------------------|-------------------|------------------------------------------------------------------|-------|
| 15.1 | Claim             |                  | Claim bill facility type code | US Core Location | .type             | http://build.fhir.org/v3/ServiceDeliveryLocationRoleType/vs.html |       |
| 5.1  | Claim-Provider    |                  | Claim site of service NPI     | US Core Location | .identifier.value |                                                                  |       |
| 16.1 | Claim-Provider    |                  | Claim service location NPI    | US Core Location | .identifier.value |                                                                  |       |
| 7.1  | Claim-Pharmacy    |                  | Pharmacy service type code    | US Core Location | .type             |                                                                  |       |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-4-2 Example Location Resource

An example mapping of a Location resource is shown here:

<pre>
{
  "resourceType" : "Location",
  "id" : "hl7east",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: hl7east</p><p><b>meta</b>: </p><p><b>identifier</b>: 29</p><p><b>status</b>: active</p><p><b>name</b>: Health Level Seven International - Amherst</p><p><b>description</b>: HL7 Headquarters - East</p><p><b>telecom</b>: ph: (+1) 734-677-7777</p><p><b>address</b>: 3300 Washtenaw Avenue, Suite 227 Amherst MA 01002 USA </p><h3>Positions</h3><table class=\"grid\"><tr><td>-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td>*</td><td>-72.519854</td><td>42.373222</td></tr></table><p><b>managingOrganization</b>: Health Level Seven International</p></div>"
  },
  "identifier" : [
    {
      "system" : "http://www.acme.org/location",
      "value" : "29"
    }
  ],
  "status" : "active",
  "name" : "Health Level Seven International - Amherst",
  "description" : "HL7 Headquarters - East",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(+1) 734-677-7777"
    }
  ],
  "address" : {
    "line" : [
      "3300 Washtenaw Avenue, Suite 227"
    ],
    "city" : "Amherst",
    "state" : "MA",
    "postalCode" : "01002",
    "country" : "USA"
  },
  "position" : {
    "longitude" : -72.519854,
    "latitude" : 42.373222
  },
  "managingOrganization" : {
    "display" : "Health Level Seven International"
  }
}
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/STU3/index.html) for further examples of completed [US Core Location Profiles ](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-location.html).



<ul>
  <li><a href="3-6-3_US_Core_Encounter.html" >Previous</a></li>
  <li><a href="3-6-5_MedicationDispense.html" >Next</a></li>
</ul>