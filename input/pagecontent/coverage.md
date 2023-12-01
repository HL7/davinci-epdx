[Previous Page - US Core Condition](USCoreCondition.html)

The [Coverage resource](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html) is profiled in the Da Vinci HRex IG. 

NOTE: This resource is not included in the resource set returned by Payer-to-Payer exchange. The resource is used to submit coverage information to the $MemberMatch operation.

{% include style_insert_table_blue.html %}

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [HRex Coverage resource](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html) are:

| R4 Element              | Name          | Cardinality | Type                                         |
|-------------------------|---------------|:-----------:|----------------------------------------------|
| Coverage.identifier     |  identifier   |    0..1     | Identifier                                   |
| Coverage.status         |  status       |    1..1     | code                                         |
| Coverage.subscriberId   |  subscriberId |    0..1     | string                                       |
| Coverage.beneficiary    |  beneficiary  |    1..1     | Reference(HRex Patient Demographics Profile) |
| Coverage.payor          |  payor        |    1..1     | Reference(HRex Organization Profile)         |



<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Health Plan Mapping Assistance
A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [Coverage profile](http://hl7.org/fhir/R4/coverage.html). This is shown below as an assistance  to implementers:

| PDex Element              | Must Support | Cardinality | CARIN-BB Element          | CPCDS Element Mapping  or Implementer Note                                     |
|---------------------------|-------------|:-----------:|---------------------------|-----------------------------------------------------------|
| Coverage.meta.lastUpdated |             |     0..1    | Coverage.meta.lastUpdated | [{"163":"Coverage Last Updated Date"}]                    |
| Coverage.identifier       |      S      |     0..*    | Coverage.identifier       | [{"Ref (1)":"Member id"}]                                 |
| Coverage.status           |             |     1..1    | Coverage.status           | [{"133":"Coverage status"}]                               |
| Coverage.subscriberId     |      S      |     0..1    | Coverage.subscriberId     | [{"132":"Subscriber id"}]                                 |
| Coverage.beneficiary      |      S      |     1..1    | Coverage.beneficiary      | Use [{"Ref (1)":"Member id"}] to find Ratient/id Reference |
| Coverage.relationship     |             |     0..1    | Coverage.relationship     | [{"72":"Relationship to subscriber"}]                     |
| Coverage.payor            |      S      |     1..*    | Coverage.payor            | [{"Ref (2)<br>":"Claim Payer Identifier"}                 |
| Coverage.class.value      |             |     1..1    | Coverage.class.value      | [{"Plan=154":"Plan Identifier"}, {"Group=134":"Group Id"} |
| Coverage.class.name       |             |     0..1    | Coverage.class.name       | [{"Plan=155":"Plan Name"}, {"Group=135":"Group Name"}     |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

It is important to note a difference between Coverage information provided in the CARIN-BB IG and the PDex IG. The PDex IG Coverage expresses the current state of health plan coverage whereas the CARIN-BB Coverage is intended to express the coverage that was valid at the date of service or admission.


SubscriberId may not uniquely identify a health plan member. 
If beneficiary is subscriber, also set .relationship to "self".

It may, for example, identify the parent who obtains coverage for a child. Therefore, the Coverage resource may provide a combination of identifiers and point to demographic information to uniquely identify a patient/member.

Coverage.identifier **MAY** include a member identifier in the Coverage resource.

#### Example Coverage Resource

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
      "reference": "Organization/Payer1"
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



[Next Page - Pdex Device](PdexDevice.html)
