# US Core MedicationRequest - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core MedicationRequest**

## US Core MedicationRequest

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - PDex MedicationDispense](PDexMedicationDispense.md)

§pdex-30: Where a Health Plan has access to Prescription information, they **SHALL** make the information available using the § [US Core 3.1.1 MedicationRequest](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-medicationrequest.html) or [US Core 6.1.0 MedicationRequest](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 MedicationRequest](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-medicationrequest.html) or [US Core 6.1.0 MedicationRequest](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| MedicationRequest.status | status | 1..1 | code |
| MedicationRequest.intent | intent | 1..1 | code |
| MedicationRequest.reported[x] | reported[x] | 0..1 |   |
| MedicationRequest.medication[x] | medication[x] | 1..1 |   |
| MedicationRequest.subject | subject | 1..1 | Reference(US Core Patient Profile) |
| MedicationRequest.encounter | encounter | 0..1 | Reference(Encounter) |
| MedicationRequest.authoredOn | authoredOn | 1..1 | dateTime |
| MedicationRequest.requester | requester | 1..1 | Reference(US Core Practitioner Profile | US Core Organization Profile | US Core Patient Profile) |
| MedicationRequest.dosageInstruction | dosageInstruction | 0..* | Dosage |
| MedicationRequest.dosageInstruction.text | text | 0..1 | String |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example MedicationRequest Resource

An example mapping of a MedicationRequest is shown below:

```

{
  "resourceType": "MedicationRequest",
  "id": "medrx0303",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: medrx0303contained: identifier: 12345689 (OFFICIAL)status: activeintent: ordermedication: id: med0311; Prednisone 5mg tablet (Product) (Details : {SNOMED CT code '373994007' = 'Prednisone 5mg tablet', given as 'Prednisone 5mg tablet (Product)'})subject: Donald Duckencounter: encounter who leads to this prescriptionauthoredOn: 15/01/2015requester: Patrick PumpbasedOn: CarePlan/gpvisitgroupIdentifier: 983939393 (OFFICIAL)note: Patient told to take with fooddosageInstruction: , , DispenseRequests-ValidityPeriodNumberOfRepeatsAllowedQuantityExpectedSupplyDurationPerformer*15/01/2015 --> 15/01/2016151 TAB (Details: http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm code TAB = 'Tablet')21 days (Details: UCUM code d = 'd')Organization/f001Substitutions-Allowed[x]Reason*Therapeutic Brand (Details : {http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution code 'TB' = 'therapeutic brand', given as 'Therapeutic Brand'})formulary policy (Details : {http://terminology.hl7.org/CodeSystem/v3-ActReason code 'FP' = 'formulary policy', given as 'formulary policy'})</div>"
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

```

[Next Page - US Core Organization](USCoreOrganization.md)

