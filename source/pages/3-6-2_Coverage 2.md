---
title: 3-6-2 Coverage
layout: default
active: 3-6-2 Coverage
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


The Coverage resource is profiled in the Da Vinci HRex IG. **TODO** Include link to profile.

The minimum fields to be provided in the Coverage resource are:

| R4 Hierarchical Name                      | R4 Name     | Card. | Type                                             |
|-------------------------------------------|-------------|-------|--------------------------------------------------|
| Coverage                                  | Coverage    |       | DomainResource                                   |
| Coverage.identifier                       | identifier  | 0..*  | Identifier                                       |
| Coverage.status                           | status      | 0..1  | code                                             |
| Coverage.beneficiary                      | beneficiary | 0..1  | Reference(Patient)                               |
| Coverage.payor                            | payor       | 0..*  | Reference(Organization| Patient | RelatedPerson) |
| Coverage.class                            | class       | 0..*  | BackboneElement                                  |
| Coverage.class.type                       | type        | 1..1  | Coding                                           |
| Coverage.class.value                      | value       | 1..1  | string                                           |
| Coverage.costToBeneficiary.value[x]       | value[x]    | 1..1  |                                                  |
| Coverage.costToBeneficiary.exception.type | type        | 1..1  | CodeableConcept                                  |


#### 3-6-2-1 Health Plan Mapping Assistance
A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [Coverage profile](http://hl7.org/fhir/R4/coverage.html). This is shown below as an assistance  to implementers:

| Line | Payer Source Record | Payer Source Field | Data Descriptor             | FHIR Profile | Profile Field | ValueSet                                              | Notes                   |
|------|-------------------|--------------------|----------------------------|--------------|---------------|-------------------------------------------------------|-------------------------|
| 1.2  | Member            | BENE_ID            | Patientid                  | Coverage     | .beneficiary  |                                                       | Reference(Patient)      |
| 12.1 | Member            | REL_CD             | relationship to subscriber | Coverage     | .relationship |                                                       |                         |
| 13.1 | Member            |                    | subscriber id              | Coverage     | .subscriberId |                                                       |                         |
| 1.1  | Coverage          |                    | subscriber id              | Coverage     | .subscriberId |                                                       |                         |
| 2.1  | Coverage          |                    | Coverage type              | Coverage     | .class.value  | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type = "Type"    |
| 3.1  | Coverage          |                    | Coverage status            | Coverage     | .status       | https://www.hl7.org/fhir/codesystem-fm-status.html    |                         |
| 4.1  | Coverage          |                    | Start date                 | Coverage     | period.start  |                                                       |                         |
| 5.1  | Coverage          |                    | End date                   | Coverage     | period.end    |                                                       |                         |
| 6.1  | Coverage          |                    | Group id                   | Coverage     | class.value   | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type="group"     |
| 7.1  | Coverage          |                    | Group name                 | Coverage     | class.name    |                                                       |                         |
| 8.1  | Coverage          |                    | Plan                       | Coverage     | class.value   | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type="plan"      |
| 9.1  | Coverage          |                    | Payer                      | Coverage     | .payor        |                                                       | Reference(Organization) |


Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:
https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:
https://bluebutton.cms.gov/resources/variables/bene_id/


#### 3-6-2-2 Example Coverage Resource

An example mapping of a Coverage resource is shown here:

<pre>
{
  "resourceType": "Coverage",
  "id": "9876B1",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>"
  },
  "identifier": [
    {
      "system": "http://benefitsinc.com/certificate",
      "value": "12345"
    }
  ],
  "status": "active",
  "type": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code": "EHCPOL",
        "display": "extended healthcare"
      }
    ]
  },
  "policyHolder": {
    "reference": "http://benefitsinc.com/FHIR/Organization/CBI35"
  },
  "subscriber": {
    "reference": "Patient/4"
  },
  "beneficiary": {
    "reference": "Patient/4"
  },
  "dependent": "0",
  "relationship": {
    "coding": [
      {
        "code": "self"
      }
    ]
  },
  "period": {
    "start": "2011-05-23",
    "end": "2012-05-23"
  },
  "payor": [
    {
      "reference": "Organization/2"
    }
  ],
  "class": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "group"
          }
        ]
      },
      "value": "CB135",
      "name": "Corporate Baker's Inc. Local #35"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "subgroup"
          }
        ]
      },
      "value": "123",
      "name": "Trainee Part-time Benefits"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "plan"
          }
        ]
      },
      "value": "B37FC",
      "name": "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "subplan"
          }
        ]
      },
      "value": "P7",
      "name": "Includes afterlife benefits"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "class"
          }
        ]
      },
      "value": "SILVER",
      "name": "Silver: Family Plan spouse only"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "subclass"
          }
        ]
      },
      "value": "Tier2",
      "name": "Low deductable, max $20 copay"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "sequence"
          }
        ]
      },
      "value": "9"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "rxid"
          }
        ]
      },
      "value": "MDF12345"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "rxbin"
          }
        ]
      },
      "value": "987654"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "rxgroup"
          }
        ]
      },
      "value": "M35PT"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "rxpcn"
          }
        ]
      },
      "value": "234516"
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code": "sequence"
          }
        ]
      },
      "value": "9"
    }
  ]
}
</pre>

<ul>
  <li><a href="3-6-1_US_Core_Patient.html" >Previous</a></li>
  <li><a href="3-6-3_US_Core_Encounter.html" >Next</a></li>
</ul>