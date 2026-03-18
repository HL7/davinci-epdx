# US Core AllergyIntolerance - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core AllergyIntolerance**

## US Core AllergyIntolerance

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - Data Mapping](datamapping.md)

Where a Health Plan has information about a member's allergies the US Core AllergyIntolerance profile §pdex-18: **SHALL** be used to record them. §

The US Core AllergyIntolerance profile is found here:

* [US Core 3.1.1 AllergyIntolerance](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-allergyintolerance.html)
* [US Core 6.1.0 AllergyIntolerance](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html)

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core AllergyIntolerance resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| AllergyIntolerance.clinicalStatus | clinicalStatus | 0..1 | CodeableConcept |
| AllergyIntolerance.verificationStatus | verificationStatus | 0..1 | CodeableConcept |
| AllergyIntolerance.code | code | 1..1 | CodeableConcept |
| AllergyIntolerance.patient | patient | 1..1 | Reference(US Core Patient Profile) |
| AllergyIntolerance.reaction | reaction | 0..* | BackboneElement |
| AllergyIntolerance.reaction.manifestation | manifestation | 1..* | CodeableConcept |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example AllergyIntolerance Resource

An example mapping of an AllergyIntolerance resource is shown below:

```

{
  "resourceType" : "AllergyIntolerance",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: examplemeta: clinicalStatus: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical code 'active' = 'Active)</span>verificationStatus: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-verification code 'confirmed' = 'Confirmed)</span>category: medicationcriticality: highcode: sulfonamide antibacterial <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '387406002' = 'Sulfonamide (substance)', given as 'Sulfonamide (substance)'})</span>patient: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a>Reactions<table class=\"grid\">-ManifestationSeverity*skin rash <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '271807003' = 'Eruption of skin (disorder)', given as 'skin rash'})</span>mild</table></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    "medication"
  ],
  "criticality" : "high",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387406002",
        "display" : "Sulfonamide (substance)"
      }
    ],
    "text" : "sulfonamide antibacterial"
  },
  "patient" : {
    "reference" : "Patient/example",
    "display" : "Amy V. Shaw"
  },
  "reaction" : [
    {
      "manifestation" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "271807003",
              "display" : "skin rash"
            }
          ],
          "text" : "skin rash"
        }
      ],
      "severity" : "mild"
    }
  ]
}

```

[Next Page - US Core CarePlan](USCoreCarePlan.md)

