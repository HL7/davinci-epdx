---
title: 3-6-15 US Core Device
layout: default
active: 3-6-15 US Core Device
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


Where a Health Plan has information about devices used by the Member that information **SHOULD** be published using the [US Core DEvice](http://hl7.org/fhir/us/core/STU3/StructureDefinition-us-core-device.html) resource. 

The essential fields to be provided in the US Core Device resource are:

| R4 Hierarchical Name             | R4 Name    | Flags | Card. | Type                               |
|----------------------------------|------------|-------|-------|------------------------------------|
| Device                           | Device     | I     | 0..*  |                                    |
| Device.id                        | id         |      | 0..1  | id                                 |
| Device.udiCarrier                | udiCarrier | SI   | 1..1  | BackboneElement                    |
| Device.deviceName.name           | name       |       | 1..1  | string                             |
| Device.deviceName.type           | type       |       | 1..1  | code                               |
| Device.type                      | type       | S     | 1..1  | CodeableConcept                    |
| Device.specialization.systemType | systemType |       | 1..1  | CodeableConcept                    |
| Device.version.value             | value      |       | 1..1  | string                             |
| Device.property.type             | type       |       | 1..1  | CodeableConcept                    |
| Device.patient                   | patient    | S     | 1..1  | Reference(US Core Patient Profile) |


#### 3-6-15-1 Example Device Resource

An example mapping of a device resource is shown below:

<pre>
{
  "resourceType" : "Device",
  "id" : "udi-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-device"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: udi-1</p><p><b>meta</b>: </p><h3>UdiCarriers</h3><table class=\"grid\"><tr><td>-</td><td><b>CarrierHRF</b></td></tr><tr><td>*</td><td>(01)09504000059118(17)141120(10)7654321D(21)10987654d321</td></tr></table><p><b>status</b>: active</p><p><b>type</b>: Coated femoral stem prosthesis, modular <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '468063009' = 'Coated femoral stem prosthesis, modular (physical object)', given as 'Coated femoral stem prosthesis, modular'})</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p></div>"
  },
  "udiCarrier" : [
    {
      "carrierHRF" : "(01)09504000059118(17)141120(10)7654321D(21)10987654d321"
    }
  ],
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "468063009",
        "display" : "Coated femoral stem prosthesis, modular"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  }
}
</pre>

<ul>
  <li><a href="3-6-14_US_Core_PractitionerRole.html" >Previous</a></li>
  <li><a href="3-6-16_US_Core_Organization.html" >Next</a></li>
</ul>