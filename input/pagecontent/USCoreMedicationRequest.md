[Previous Page - PDex MedicationDispense](PDexMedicationDispense.html)

Where a Health Plan has access to Prescription information, they **SHALL** make the information available using the
[US Core 3.1.1 MedicationRequest]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medicationrequest.html) or
[US Core 6.1.0 MedicationRequest]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-medicationrequest.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
[US Core 3.1.1 MedicationRequest]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medicationrequest.html) or
[US Core 6.1.0 MedicationRequest]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-medicationrequest.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                | Name               | Cardinality | Type                                                                                               |
|-------------------------------------------|--------------------|:-----------:|----------------------------------------------------------------------------------------------------|
|  MedicationRequest.status                 |  status            |     1..1    | code                                                                                               |
|  MedicationRequest.intent                 |  intent            |     1..1    | code                                                                                               |
|  MedicationRequest.reported[x]            |  reported[x]       |     0..1    |                                                                                                    |
|  MedicationRequest.medication[x]          |  medication[x]     |     1..1    |                                                                                                    |
|  MedicationRequest.subject                |  subject           |     1..1    | Reference(US Core Patient Profile)                                                                 |
|  MedicationRequest.encounter              |  encounter         |     0..1    | Reference(Encounter)                                                                               |
|  MedicationRequest.authoredOn             |  authoredOn        |     1..1    | dateTime                                                                                           |
|  MedicationRequest.requester              |  requester         |     1..1    | Reference(US Core Practitioner Profile \| US Core Organization Profile \| US Core Patient Profile) |
|  MedicationRequest.dosageInstruction      |  dosageInstruction |     0..*    | Dosage                                                                                             |
|  MedicationRequest.dosageInstruction.text |  text |     0..1    | String                                                                                             |


<i>[Table Definition](index.html#mapping-adjudicated-claims-encounter-and-prior-authorization-information)</i>

#### Example MedicationRequest Resource

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




[Next Page - US Core Organization](USCoreOrganization.html)
