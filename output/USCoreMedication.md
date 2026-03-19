# US Core Medication - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Medication**

## US Core Medication

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Location](USCoreLocation.md)

§pdex-32: Where a Health Plan has access to Medication information, they **SHALL** make the information available using the § [US Core 3.1.1 Medication](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-medication.html) or [US Core 6.1.0 Medication](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medication.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Medication](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-medication.html) or [US Core 6.1.0 Medication](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medication.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Medication.code | code | 1..1 | CodeableConcept |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Medication Resource

An example mapping of a Medication is shown below:

```

{
  "resourceType": "Medication",
  "id": "med0311",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: med0311contained: code: Prednisone 5mg tablet (Product) (Details : {SNOMED CT code '373994007' = 'Prednisone 5mg tablet', given as 'Prednisone 5mg tablet (Product)'})form: Tablet dose form (qualifier value) (Details : {SNOMED CT code '385055001' = 'Tablet', given as 'Tablet dose form (qualifier value)'})Ingredients-Item[x]Strength*id: sub03; Prednisone (substance) (Details : {SNOMED CT code '116602009' = 'Prednisone', given as 'Prednisone (substance)'})5 mg (Details: UCUM code mg = 'mg')/1 TAB (Details: http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm code TAB = 'Tablet')</div>"
  },
  "contained": [
    {
      "resourceType": "Substance",
      "id": "sub03",
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "116602009",
            "display": "Prednisone (substance)"
          }
        ]
      }
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "373994007",
        "display": "Prednisone 5mg tablet (Product)"
      }
    ]
  },
  "form": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "385055001",
        "display": "Tablet dose form (qualifier value)"
      }
    ]
  },
  "ingredient": [
    {
      "itemReference": {
        "reference": "#sub03"
      },
      "strength": {
        "numerator": {
          "value": 5,
          "system": "http://unitsofmeasure.org",
          "code": "mg"
        },
        "denominator": {
          "value": 1,
          "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
          "code": "TAB"
        }
      }
    }
  ]
}

```

[Next Page - PDex MedicationDispense](PDexMedicationDispense.md)

