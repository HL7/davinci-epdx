---
title: 3-6-16 US Core Organization
layout: default
active: 3-6-16 US Core Organization
---

[Previous Page](3-6-15_US_Core_Device.html)

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
When a Health Plan is documenting information about organizations in relation to the Member's Health History they **SHOULD** use the [US Core Organization](http://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html) resource.
=======
When a Health Plan is documenting information about organizations in relation to the Member's Health History they **SHOULD** use the [US Core Organization](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-organization.html) resource.
>>>>>>> 1aa5b274a3cd68f250b556457bc83699490f4480

The essential fields to be provided in the US Core Organization resource are:

| R4 Hierarchical Name            | R4 Name      | Flags | Card. | Type                |
|---------------------------------|--------------|-------|-------|---------------------|
| Organization                    | Organization | I     | 0..*  |                     |
| Organization.id                 | id           |      | 0..1  | id                  |
| Organization.identifier         | identifier   | SI   | 1..*  | Identifier          |
| Organization.identifier.system  | system       | S    | 1..1  | uri                 |
| Organization.active             | active       | ?!S  | 1..1  | boolean             |
| Organization.name               | name         | SI   | 1..1  | string              |
| Organization.telecom            | telecom      | SI    | 1..*  | ContactPoint        |
| Organization.address            | address      | SI    | 1..*  | Address             |
| Organization.address.line       | line         | S    | 0..*  | string              |
| Organization.address.city       | city         | S    | 0..1  | string              |
| Organization.address.state      | state        | S    | 0..1  | string              |
| Organization.address.postalCode | postalCode   | S    | 0..1  | string              |
| Organization.endpoint           | endpoint     | S     | 0..*  | Reference(Endpoint) |

#### 3-6-16-1 Example Organization resource

An example mapping of an Organization resource is shown below:

<pre>
{
  "resourceType" : "Organization",
  "id" : "saint-luke-w-endpoint",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n            <h1>Organization</h1>\n            <div>\n                <p>ID: 393872</p>\n                <p>Name: Saint Luke's Hospital of Kansas City </p>\n                <p>NPI: 1063494177</p>\n                <p>Phone:(816)932-2000</p>\n                <p>Address:4401 Wornall Rd,, MO, 64111</p>\n            </div>\n        </div>"
  },
  "contained" : [
    {
      "resourceType" : "Endpoint",
      "id" : "75",
      "status" : "active",
      "connectionType" : {
        "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
        "code" : "direct-project"
      },
      "name" : "Dr. Ronald Bone Direct Address",
      "managingOrganization" : {
        "reference" : "Organization/example-organization-2"
      },
      "payloadType" : [
        {
          "coding" : [
            {
              "system" : "urn:oid:1.3.6.1.4.1.19376.1.2.3",
              "code" : "urn:hl7-org:sdwg:ccda-structuredBody:1.1"
            }
          ]
        }
      ],
      "payloadMimeType" : [
        "text/xml"
      ],
      "address" : "mailto:Interoperability@DirectAddress.com"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/sid/us-npi",
      "value" : "1063494177"
    },
    {
      "system" : "http://example.org/fhir/us/argo/sid/us-ein",
      "value" : "00-0000000"
    }
  ],
  "active" : true,
  "name" : "Saint Luke's Hospital of Kansas City",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(816)932-2000",
      "use" : "work"
    },
    {
      "system" : "other",
      "value" : "http://www.saintlukeshealthsystem.org/locations/saint-lukes-hospital-kansas-city",
      "use" : "work"
    }
  ],
  "address" : [
    {
      "text" : "3300 Washtenaw Avenue, Suite 227 Amherst MA 01002",
      "line" : [
        "4401 Wornall Rd,"
      ],
      "city" : "Amherst",
      "state" : "MA",
      "postalCode" : "64111"
    }
  ],
  "endpoint" : [
    {
      "reference" : "#75"
    }
  ]
}
</pre>

<ul>
  <li><a href="3-6-15_US_Core_Device.html" >Previous</a></li>
  <li><a href="3-6-17_US_Core_CarePlan.html" >Next</a></li>
</ul>

[Next Page](3-6-17_US_Core_CarePlan.html)