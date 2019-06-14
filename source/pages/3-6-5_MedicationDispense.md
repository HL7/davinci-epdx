---
title: 3-6-5 MedicationDispense
layout: default
active: 3-6-5 MedicationDispense
---

[Previous Page](3-6-4_US_Core_Location.html)

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


The  [Da Vinci HRex MedicationDispense profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-hrex-medicationdispense.html)  **SHALL** be used to record a member's prescription drug claims.

The essential fields to be provided in the MedicationDispense resource are:

| R4 Hierarchical Name             | R4 Name            | Card. | Type                       |
|----------------------------------|--------------------|-------|----------------------------|
| MedicationDispense               | MedicationDispense |       | DomainResource             |
| MedicationDispense.identifier    | identifier         | 0..*  | Identifier                 |
| MedicationDispense.status        | status             | 1..1  | code                       |
| MedicationDispense.medication[x] | medication[x]      | 1..1  |                            |
| MedicationDispense.subject       | subject            | 0..1  | Reference(Patient | Group) |

#### 3-6-5-1 Health Plan Mapping Assistance

A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [MedicationDispence profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-hrex-medicationdispense.html). This is shown below as an assistance  to implementers:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor             | FHIR Profile              | Profile Field                                                          | ValueSet                                                | Notes                          |
|------|-------------------|------------------|-----------------------------|---------------------------|------------------------------------------------------------------------|---------------------------------------------------------|--------------------------------|
| 1.3  | Member            | BENE_ID          | Patientid                   | MedicationDispense        | .subject                                                               |                                                         | Reference(Patient)             |
| 1.1  | Claim-Pharmacy    |                  | Days supply                 | MedicationDispense        | .daysSupply                                                            |                                                         |                                |
| 2.1  | Claim-Pharmacy    |                  | RX service reference number | MedicationDispense        | .identifier                                                            |                                                         |                                |
| 4.1  | Claim-Pharmacy    |                  | Refill number               | MedicationDispense        | .type                                                                  | http://hl7.org/fhir/R4/v3/ActPharmacySupplyType/vs.html | Calculate First Fill or Refill |
| 7.1  | Claim-Line        |                  | Number of units             | MedicationDispense        |                                                                        |                                                         |                                |
| 9.1  | Claim-Line        |                  | National drug code          | MedicationDispense        | .medication.medcationCodeeableConcept                                  |                                                         | SNOMED CT Code                 |
| 10.1 | Claim-Line        |                  | Compound code               | MedicationDispense        | .medication.medcationReference(Medication)                             |                                                         |                                |
| 11.1 | Claim-Line        |                  | Quantity dispensed          | MedicationDispense        | .quantity                                                              |                                                         |                                |
| 12.1 | Claim-Line        |                  | Quantity qualifier code     | MedicationDispense        | .category                                                              |                                                         |                                |
| 5.1  | Claim-Pharmacy    |                  | Prescription origin code    | US Core MedicationRequest | .authorizingPrescription.Reference(MedicationRequest).identifier.value |                                                         |                                |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-5-2 Example MedicationDispense Resource

An example mapping of a MedicationDispense resource is shown here for a Dispense for Over the Counter medication - Tylenol PM (NDC code) - on hold with as needed dosage with a condition, a dose Range and an Event History:

<pre>
{
  "resourceType": "MedicationDispense",
  "id": "meddisp0312",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: meddisp0312</p><p><b>contained</b>: </p><p><b>status</b>: on-hold</p><p><b>medication</b>: Tylenol PM. Generated Summary: id: med0309; Tylenol PM <span>(Details : {http://hl7.org/fhir/sid/ndc code '50580-506-02' = '50580-506-02', given as 'Tylenol PM'})</span></p><p><b>subject</b>: <a>Donald Duck</a></p><h3>Performers</h3><table><tr><td>-</td><td><b>Actor</b></td></tr><tr><td>*</td><td><a>Practitioner/f006</a></td></tr></table><p><b>authorizingPrescription</b>: <a>MedicationRequest/medrx0310</a></p><p><b>type</b>: First Fill <span>(Details : {http://terminology.hl7.org/CodeSystem/v3-ActCode code 'FF' = 'First Fill', given as 'First Fill'})</span></p><p><b>quantity</b>: 100 TAB<span> (Details: http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm code TAB = 'Tablet')</span></p><p><b>daysSupply</b>: 30 Day<span> (Details: UCUM code d = 'd')</span></p><p><b>whenPrepared</b>: 15/01/2015 10:20:00 AM</p><p><b>whenHandedOver</b>: 15/01/2015 4:20:00 PM</p><p><b>dosageInstruction</b>: </p></div>"
  },
  "contained": [
    {
      "resourceType": "Medication",
      "id": "med0309",
      "code": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/sid/ndc",
            "code": "50580-506-02",
            "display": "Tylenol PM"
          }
        ]
      }
    }
  ],
  "status": "on-hold",
  "medicationReference": {
    "reference": "#med0309",
    "display": "Tylenol PM"
  },
  "subject": {
    "reference": "Patient/pat1",
    "display": "Donald Duck"
  },
  "performer": [
    {
      "actor": {
        "reference": "Practitioner/f006"
      }
    }
  ],
  "authorizingPrescription": [
    {
      "reference": "MedicationRequest/medrx0310"
    }
  ],
  "type": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code": "FF",
        "display": "First Fill"
      }
    ]
  },
  "quantity": {
    "value": 100,
    "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
    "code": "TAB"
  },
  "daysSupply": {
    "value": 30,
    "unit": "Day",
    "system": "http://unitsofmeasure.org",
    "code": "d"
  },
  "whenPrepared": "2015-01-15T10:20:00Z",
  "whenHandedOver": "2015-01-15T16:20:00Z",
  "dosageInstruction": [
    {
      "sequence": 1,
      "text": "Take 1-2 tablets once daily at bedtime as needed for restless legs",
      "additionalInstruction": [
        {
          "text": "Take at bedtime"
        }
      ],
      "timing": {
        "repeat": {
          "frequency": 1,
          "period": 1,
          "periodUnit": "d"
        }
      },
      "asNeededCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "32914008",
            "display": "Restless Legs"
          }
        ]
      },
      "route": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "26643006",
            "display": "Oral Route"
          }
        ]
      },
      "doseAndRate": [
        {
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/dose-rate-type",
                "code": "ordered",
                "display": "Ordered"
              }
            ]
          },
          "doseRange": {
            "low": {
              "value": 1,
              "unit": "TAB",
              "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
              "code": "TAB"
            },
            "high": {
              "value": 2,
              "unit": "TAB",
              "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
              "code": "TAB"
            }
          }
        }
      ]
    }
  ]
}
</pre>






[Next Page](3-6-6_US_Core_Practitioner.html)