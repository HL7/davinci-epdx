[Previous Page - Data Mapping](datamapping.html)

Where a Health Plan has information about a member's allergies the  [US Core AllergyIntolerance profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)  **SHALL** be used to record them.


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core AllergyIntolerance resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                | Name                | Cardinality | Type                               |
|-------------------------------------------|---------------------|:-----------:|------------------------------------|
| AllergyIntolerance.clinicalStatus         |  clinicalStatus     |     0..1    | CodeableConcept                    |
| AllergyIntolerance.verificationStatus     |  verificationStatus |     0..1    | CodeableConcept                    |
| AllergyIntolerance.code                   |  code               |     1..1    | CodeableConcept                    |
| AllergyIntolerance.patient                |  patient            |     1..1    | Reference(US Core Patient Profile) |
| AllergyIntolerance.reaction               |  reaction           |     0..*    | BackboneElement                    |
| AllergyIntolerance.reaction.manifestation |  manifestation      |     1..*    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Example AllergyIntolerance Resource

An example mapping of an AllergyIntolerance resource is shown below:
<pre>
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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>meta</b>: </p><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical code 'active' = 'Active)</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-verification code 'confirmed' = 'Confirmed)</span></p><p><b>category</b>: medication</p><p><b>criticality</b>: high</p><p><b>code</b>: sulfonamide antibacterial <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '387406002' = 'Sulfonamide (substance)', given as 'Sulfonamide (substance)'})</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Amy V. Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><h3>Reactions</h3><table class=\"grid\"><tr><td>-</td><td><b>Manifestation</b></td><td><b>Severity</b></td></tr><tr><td>*</td><td>skin rash <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '271807003' = 'Eruption of skin (disorder)', given as 'skin rash'})</span></td><td>mild</td></tr></table></div>"
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
</pre>



[Next Page - US Core CarePlan](USCoreCarePlan.html)
