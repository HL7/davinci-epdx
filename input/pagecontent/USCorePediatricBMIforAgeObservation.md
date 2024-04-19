[Previous Page - US Core Patient](USCorePatient.html)

The [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) IG profiles the Observation resource for a variety of purposes. 
For example:
- [Smoking status]({{site.data.fhir.ver.uscore3}}/Observation-some-day-smoker.html)
- [Pediatric BMI for Age]({{site.data.fhir.ver.uscore3}}/Observation-pediatric-bmi-example.html)
- [Pediatric Weight for Height]({{site.data.fhir.ver.uscore3}}/Observation-pediatric-wt-example.html)

[US Core 6.1.0 ]({{site.data.fhir.ver.uscore6}}) defines those same profiles:
- [Smoking status]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-smokingstatus.html)
- [Pediatric BMI for Age]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-bmi-for-age.html)
- [Pediatric Weight for Height]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-weight-for-height.html)


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the 
[US Core Observation]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-observation-lab.html) resource are:

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


#### An Example BMI Age Observation Resource

US Core Pediatric BMI for Age example: US Core 3.1.1 Pediatric BMI for Age]({{site.data.fhir.ver.uscore3}}/StructureDefinition-pediatric-bmi-for-age.html)
<pre>
{
  "resourceType" : "Observation",
  "id" : "pediatric-bmi-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: pediatric-bmi-example</p><p><b>meta</b>: </p><p></p><p><b>category</b>: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes: {http://loinc.org 59576-9}\">BMI</span></p><p><b>subject</b>: <a href=\"Patient-child-example.html\">Child Example. Generated Summary: id: child-example; Medical Record Number: 1032704 (USUAL); active; Child Example ; ph: 555-555-5555(HOME); gender: male; birthDate: 2016-01-15</a></p><p><b>encounter</b>: <span>GP Visit</span></p><p><b>effective</b>: 05/05/2019 5:12:29 AM</p><p><b>value</b>: 65 %</p><p><b>note</b>: CDC Males, 2-20 years Chart</p></div>"
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
        "code" : "59576-9",
        "display" : "Body mass index (BMI) [Percentile] Per age and sex"
      }
    ],
    "text" : "BMI"
  },
  "subject" : {
    "reference" : "Patient/child-example",
    "display" : "Child Example"
  },
  "encounter" : {
    "display" : "GP Visit"
  },
  "effectiveDateTime" : "2019-05-04T12:12:29-07:00",
  "valueQuantity" : {
    "value" : 65,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [
    {
      "text" : "CDC Males, 2-20 years Chart"
    }
  ]
}
</pre>


[Next Page - US Core Pediatric Head Occipital-frontal Circumference Observation](USCorePediatricHeadOccipital.html)
