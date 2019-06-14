---
title: 3-6-20 US Core MedicationRequest
layout: default
active: 3-6-20 US Core MedicationRequest
---

[Previous Page](3-6-19_US_Core_Medication.html)

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


Where a Health Plan has access to Prescription information they **SHALL** make the information available using the [US Core MedicationRequest](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationrequest.html) resource.

The essential fields to be provided in the MedicationRequest resource are:

| R4 Hierarchical Name                                             | R4 Name                | Card. | Type                         |
|------------------------------------------------------------------|------------------------|-------|------------------------------|
| MedicationRequest                                                | MedicationRequest      |       | DomainResource               |
| MedicationRequest.identifier                                     | identifier             | 0..*  | Identifier                   |
| MedicationRequest.status                                         | status                 | 1..1  | code                         |
| MedicationRequest.intent                                         | intent                 | 1..1  | code                         |
| MedicationRequest.medication[x]                                  | medication[x]          | 1..1  |                              |
| MedicationRequest.subject                                        | subject                | 1..1  | Reference(Patient | Group)   |
| MedicationRequest.substitution.allowed[x].allowedCodeableConcept | allowedCodeableConcept |       | CodeableConcept              |
| MedicationRequest.substitution.reason                            | reason                 | 0..1  | CodeableConcept              |
| MedicationRequest.priorPrescription                              | priorPrescription      | 0..1  | Reference(MedicationRequest) |
| MedicationRequest.detectedIssue                                  | detectedIssue          | 0..*  | Reference(DetectedIssue)     |
| MedicationRequest.eventHistory                                   | eventHistory           | 0..*  | Reference(Provenance)        |

#### 3-6-20-1 Example MedicationRequest Resource

An example mapping of a MedicationRequest is shown below:

<pre>
{
  "resourceType": "MedicationRequest",
  "id": "medrx0303",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: medrx0303</p><p><b>contained</b>: </p><p><b>identifier</b>: 12345689 (OFFICIAL)</p><p><b>status</b>: active</p><p><b>intent</b>: order</p><p><b>medication</b>: id: med0311; Prednisone 5mg tablet (Product) <span>(Details : {SNOMED CT code '373994007' = 'Prednisone 5mg tablet', given as 'Prednisone 5mg tablet (Product)'})</span></p><p><b>subject</b>: <a>Donald Duck</a></p><p><b>encounter</b>: <a>encounter who leads to this prescription</a></p><p><b>authoredOn</b>: 15/01/2015</p><p><b>requester</b>: <a>Patrick Pump</a></p><p><b>basedOn</b>: <a>CarePlan/gpvisit</a></p><p><b>groupIdentifier</b>: 983939393 (OFFICIAL)</p><p><b>note</b>: Patient told to take with food</p><p><b>dosageInstruction</b>: , , </p><h3>DispenseRequests</h3><table><tr><td>-</td><td><b>ValidityPeriod</b></td><td><b>NumberOfRepeatsAllowed</b></td><td><b>Quantity</b></td><td><b>ExpectedSupplyDuration</b></td><td><b>Performer</b></td></tr><tr><td>*</td><td>15/01/2015 --&gt; 15/01/2016</td><td>1</td><td>51 TAB<span> (Details: http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm code TAB = 'Tablet')</span></td><td>21 days<span> (Details: UCUM code d = 'd')</span></td><td><a>Organization/f001</a></td></tr></table><h3>Substitutions</h3><table><tr><td>-</td><td><b>Allowed[x]</b></td><td><b>Reason</b></td></tr><tr><td>*</td><td>Therapeutic Brand <span>(Details : {http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution code 'TB' = 'therapeutic brand', given as 'Therapeutic Brand'})</span></td><td>formulary policy <span>(Details : {http://terminology.hl7.org/CodeSystem/v3-ActReason code 'FP' = 'formulary policy', given as 'formulary policy'})</span></td></tr></table></div>"
  },
  "contained": [
    {
      "resourceType": "Medication",
      "id": "med0311",
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "373994007",
            "display": "Prednisone 5mg tablet (Product)"
          }
        ]
      }
    }
  ],
  "identifier": [
    {
      "use": "official",
      "system": "http://www.bmc.nl/portal/prescriptions",
      "value": "12345689"
    }
  ],
  "status": "active",
  "intent": "order",
  "medicationReference": {
    "reference": "#med0311"
  },
  "subject": {
    "reference": "Patient/pat1",
    "display": "Donald Duck"
  },
  "encounter": {
    "reference": "Encounter/f001",
    "display": "encounter who leads to this prescription"
  },
  "authoredOn": "2015-01-15",
  "requester": {
    "reference": "Practitioner/f007",
    "display": "Patrick Pump"
  },
  "basedOn": [
    {
      "reference": "CarePlan/gpvisit"
    }
  ],
  "groupIdentifier": {
    "use": "official",
    "system": "http://www.bmc.nl/portal/prescriptions",
    "value": "983939393"
  },
  "note": [
    {
      "text": "Patient told to take with food"
    }
  ],
  "dosageInstruction": [
    {
      "sequence": 1,
      "text": "Take 4 tablets daily for 7 days starting January 16, 2015",
      "timing": {
        "repeat": {
          "boundsPeriod": {
            "start": "2015-01-16",
            "end": "2015-01-20"
          },
          "frequency": 1,
          "period": 1,
          "periodUnit": "d"
        }
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
      "method": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "421521009",
            "display": "Swallow - dosing instruction imperative (qualifier value)"
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
          "doseQuantity": {
            "value": 4,
            "unit": "TAB",
            "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code": "TAB"
          }
        }
      ]
    },
    {
      "sequence": 2,
      "text": "Take 2 tablets daily for 7 days starting January 23, 2015",
      "timing": {
        "repeat": {
          "boundsPeriod": {
            "start": "2015-01-23",
            "end": "2015-01-30"
          },
          "frequency": 1,
          "period": 1,
          "periodUnit": "d"
        }
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
      "method": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "421521009",
            "display": "Swallow - dosing instruction imperative (qualifier value)"
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
          "doseQuantity": {
            "value": 2,
            "unit": "TAB",
            "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code": "TAB"
          }
        }
      ]
    },
    {
      "sequence": 3,
      "text": "Take 1 tablets daily for 7 days starting January 31, 2015",
      "timing": {
        "repeat": {
          "boundsPeriod": {
            "start": "2015-01-31",
            "end": "2015-02-06"
          },
          "frequency": 1,
          "period": 1,
          "periodUnit": "d"
        }
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
      "method": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "421521009",
            "display": "Swallow - dosing instruction imperative (qualifier value)"
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
          "doseQuantity": {
            "value": 1,
            "unit": "TAB",
            "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code": "TAB"
          }
        }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": {
      "start": "2015-01-15",
      "end": "2016-01-15"
    },
    "numberOfRepeatsAllowed": 1,
    "quantity": {
      "value": 51,
      "unit": "TAB",
      "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
      "code": "TAB"
    },
    "expectedSupplyDuration": {
      "value": 21,
      "unit": "days",
      "system": "http://unitsofmeasure.org",
      "code": "d"
    },
    "performer": {
      "reference": "Organization/f001"
    }
  },
  "substitution": {
    "allowedCodeableConcept": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution",
          "code": "TB",
          "display": "Therapeutic Brand"
        }
      ]
    },
    "reason": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code": "FP",
          "display": "formulary policy"
        }
      ]
    }
  }
}
</pre>


[Next Page](3-6-21_US_Core_MedicationStatement.html)