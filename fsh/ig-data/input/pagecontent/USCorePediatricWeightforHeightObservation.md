[Previous Page - US Core Pediatric Head Occipital-frontal Circumference Observation](USCorePediatricHeadOccipital.html)

The US Core IG profiles the Observation resource for a variety of purposes. For example:
- Smoking status
- Pediatric BMI for Age
- Pediatric Weight for Height

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core Observation resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                 | Name              | Cardinality | Type                               |
|--------------------------------------------|-------------------|:-----------:|------------------------------------|
|  Observation.status                        |  status           |     1..1    | code                               |
|  Observation.category                      |  category         |     1..*    | (Slice Definition)                 |
|  Observation.category:VSCat                |  category:VSCat   |     1..1    | CodeableConcept                    |
|  Observation.category:VSCat.coding         |  coding           |     1..*    | Coding                             |
|  Observation.category:VSCat.coding.system  |  system           |     1..1    | uri                                |
|  Observation.category:VSCat.coding.code    |  code             |     1..1    | code                               |
|  Observation.code                          |  code             |     1..1    | CodeableConcept                    |
|  Observation.code.coding                   |  coding           |     1..*    | Coding                             |
|  Observation.code.coding.system            |  system           |     1..1    | uri                                |
|  Observation.code.coding.code              |  code             |     1..1    | code                               |
|  Observation.subject                       |  subject          |     1..1    | Reference(US Core Patient Profile) |
|  Observation.effective[x]                  |  effective[x]     |     1..1    |                                    |
|  Observation.value[x]                      |  value[x]         |     0..1    | (Slice Definition)                 |
|  Observation.value[x]:valueQuantity.value  |  value            |     1..1    | decimal                            |
|  Observation.value[x]:valueQuantity.unit   |  unit             |     1..1    | string                             |
|  Observation.value[x]:valueQuantity.system |  system           |     1..1    | uri                                |
|  Observation.value[x]:valueQuantity.code   |  code             |     1..1    | code                               |
|  Observation.dataAbsentReason              |  dataAbsentReason |     0..1    | CodeableConcept                    |
|  Observation.component                     |  component        |     0..*    | BackboneElement                    |
|  Observation.component.code                |  code             |     1..1    | CodeableConcept                    |
|  Observation.component.value[x]            |  value[x]         |     0..1    |                                    |
|  Observation.dataAbsentReason              |  dataAbsentReason |     0..1    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### An Example Pediatric Weight For Height Observation Resource

US Core Pediatric Weight for Height Observation: [https://hl7.org/fhir/us/core/Observation-pediatric-wt-example.html](https://hl7.org/fhir/us/core/Observation-pediatric-wt-example.html)
<pre>
{
  "resourceType" : "Observation",
  "id" : "pediatric-wt-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: pediatric-wt-example</p><p><b>meta</b>: </p><p></p><p><b>category</b>: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes: {http://loinc.org 77606-2}\">BMI</span></p><p><b>subject</b>: <a href=\"Patient-infant-example.html\">Infant Example. Generated Summary: id: infant-example; Medical Record Number: 1032703 (USUAL); active; Infant Example ; ph: 555-555-5555(HOME); gender: male; birthDate: 2020-06-02</a></p><p><b>encounter</b>: <span>GP Visit</span></p><p><b>effective</b>: 2020-07-02</p><p><b>value</b>: 65 %</p><p><b>note</b>: WHO Males, 0-2 years Chart</p></div>"
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }
      ],
      "text" : "Vital Signs"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "77606-2",
        "display" : "Weight-for-length Per age and sex"
      }
    ],
    "text" : "BMI"
  },
  "subject" : {
    "reference" : "Patient/infant-example",
    "display" : "Infant Example"
  },
  "encounter" : {
    "display" : "GP Visit"
  },
  "effectiveDateTime" : "2020-07-02",
  "valueQuantity" : {
    "value" : 65,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [
    {
      "text" : "WHO Males, 0-2 years Chart"
    }
  ]
}
</pre>




[Next Page - US Core Practitioner](USCorePractitioner.html)
