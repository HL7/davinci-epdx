[Previous Page - US Core Pulse Oximetry](USCorePulseOximetry.html)

This IG supports the full complement of US Core profiles. They are supported to enable a payer to produce FHIR resources from data provided in other formats.

For some resources, payers are unlikely to have the clinical information necessary to create a valid US Core resource. The [US Core Smoking Status](http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html) is one potential example of an Observation profile that payers may be unable to create from the source clinical data they have available.

A Smoking Status observation requires codes and values for smoking observation. Payers may not have access to the detail data needed to create a valid observation resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core Smoking Status](http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html) Observation resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                 | Name                           | Cardinality | Type                               |
|--------------------------------------------|--------------------------------|:-----------:|------------------------------------|
|  Observation.status                        |  status                        |     1..1    | code                               |
|  Observation.code                          |  code                          |     1..1    | CodeableConcept                    |
|  Observation.subject                       |  subject                       |     1..1    | Reference(US Core Patient Profile) |
|  Observation.issued                        |  issued                        |     1..1    | instant                            |
|  Observation.value[x]                      |  value[x]                      |     1..1    | (Slice Definition)                 |
|  Observation.value[x]:valueCodeableConcept |  value[x]:valueCodeableConcept |     1..1    | CodeableConcept                    |
|  Observation.component.code                |  code                          |     1..1    | CodeableConcept                    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Smoking Status Observation

US Core Smoking Status Observation: [https://hl7.org/fhir/us/core/Observation-some-day-smoker.html](https://hl7.org/fhir/us/core/Observation-some-day-smoker.html)

<pre>
{
  "resourceType" : "Observation",
  "id" : "some-day-smoker",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: some-day-smoker</p><p><b>meta</b>: </p><p></p><p><b>category</b>: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span></p><p><b>code</b>: <span title=\"Codes: {http://loinc.org 72166-2}\">Tobacco smoking status</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number: 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a></p><p><b>issued</b>: 18/03/2016 4:27:04 PM</p><p><b>value</b>: <span title=\"Codes: {http://snomed.info/sct 428041000124106}\">Current some day smoker</span></p></div>"
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }
      ],
      "text" : "Social History"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "72166-2",
        "display" : "Tobacco smoking status"
      }
    ],
    "text" : "Tobacco smoking status"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "issued" : "2016-03-18T05:27:04Z",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "428041000124106"
      }
    ],
    "text" : "Current some day smoker"
  }
}
</pre>


[Next Page - VitalSigns](VitalSigns.html)
