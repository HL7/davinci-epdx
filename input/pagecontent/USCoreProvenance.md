[Previous Page - PDex Provenance](PDexProvenance.html)


[US Core 3.1.1 Procvenance]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-provenance.html) or
[US Core 6.1.0 Provenance]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-provenance.html)
is provided as a reference for situations where payers receive detailed clinical data 
via formats such as C-CDA and in converting to a FHIR format are able to identify the detailed information about the 
originating event and can therefore create an appropriate Provenance record.

In all other cases a payer SHALL create a [PDex Provenance](PDexProvenance.html) profile that identifies their role as a "Transmitter" of the information.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
[US Core 3.1.1 Procvenance]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-provenance.html) or
[US Core 6.1.0 Provenance]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-provenance.html)
are:

{% include style_insert_table_blue.html %}

| R4 Element                                                 | Name                         | Cardinality | Type                                                                                               |
|------------------------------------------------------------|------------------------------|:-----------:|----------------------------------------------------------------------------------------------------|
|  Provenance.target                                         |  target                      |     1..*    | Reference(Resource)                                                                                |
|  Provenance.recorded                                       |  recorded                    |     1..1    | instant                                                                                            |
|  Provenance.agent                                          |  agent                       |     1..*    | (Slice Definition)                                                                                 |
|  Provenance.agent:All Slices.type                          |  type                        |     0..1    | CodeableConcept                                                                                    |
|  Provenance.agent:All Slices.who                           |  who                         |     1..1    | Reference(US Core Practitioner Profile \| US Core Patient Profile \| US Core Organization Profile) |
|  Provenance.agent:All Slices.onBehalfOf                    |  onBehalfOf                  |     0..1    | Reference(US Core Organization Profile)                                                            |
|  Provenance.agent:ProvenanceAuthor                         |  agent:ProvenanceAuthor      |     0..*    | BackboneElement                                                                                    |
|  Provenance.agent:ProvenanceAuthor.type                    |  type                        |     1..1    | CodeableConcept                                                                                    |
|  Provenance.agent:ProvenanceAuthor.type.coding             |  coding                      |     1..*    | Coding                                                                                             |
|  Provenance.agent:ProvenanceAuthor.type.coding.system      |  system                      |     1..1    | uri                                                                                                |
|  Provenance.agent:ProvenanceAuthor.type.coding.code        |  code                        |     1..1    | code                                                                                               |
|  Provenance.agent:ProvenanceTransmitter                    |  agent:ProvenanceTransmitter |     0..1    | BackboneElement                                                                                    |
|  Provenance.agent:ProvenanceTransmitter.type               |  type                        |     1..1    | CodeableConcept                                                                                    |
|  Provenance.agent:ProvenanceTransmitter.type.coding        |  coding                      |     1..*    | Coding                                                                                             |
|  Provenance.agent:ProvenanceTransmitter.type.coding.system |  system                      |     1..1    | uri                                                                                                |
|  Provenance.agent:ProvenanceTransmitter.type.coding.code   |  code                        |     1..1    | code                                                                                               |
|                 |  who                         |     1..1    | Reference(Practitioner\| PractitionerRole \| RelatedPerson \| Patient \| Device \| Organization)   |
|  Provenance.entity.role                                    |  role                        |     1..1    | code                                                                                               |
|  Provenance.entity.what                                    |  what                        |     1..1    | Reference(Resource)                                                                                |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example US Core Provenance Resource

The example below is for a Provenance resource that is provided for an Allergyintolerance resource.

<pre>
{
  "resourceType" : "Bundle",
  "id" : "c887e62f-6166-419f-8268-b5ecd6c7b901",
  "meta" : {
    "lastUpdated" : "2019-07-09T18:49:01.235+00:00"
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "http://example.org/fhir/AllergyIntolerance?_revinclude=Provenance%3Atarget&patient=Examples"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "http://example.org/fhir/AllergyIntolerance/79613",
      "resource" : {
        "resourceType" : "AllergyIntolerance",
        "id" : "79613",
        "meta" : {
          "versionId" : "1",
          "lastUpdated" : "2019-07-09T15:26:23.217+00:00",
          "profile" : [
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: 79613</p><p><b>meta</b>: </p><p><b>clinicalStatus</b>: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>category</b>: medication</p><p><b>criticality</b>: high</p><p><b>code</b>: <span title=\"Codes: {http://snomed.info/sct 762952008}\">Peanuts</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Generated Summary: id: example; Medical Record Number: 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a></p><p><b>onset</b>: 2017-06-09</p><h3>Reactions</h3><table class=\"grid\"><tr><td>-</td><td><b>Manifestation</b></td><td><b>Onset</b></td></tr><tr><td>*</td><td><span title=\"Codes: {http://snomed.info/sct 247472004}\">Hives</span></td><td>2017-06-09</td></tr></table></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
              "code" : "confirmed",
              "display" : "Confirmed"
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
              "code" : "762952008",
              "display" : "Peanuts"
            }
          ],
          "text" : "Peanuts"
        },
        "patient" : {
          "reference" : "Patient/example"
        },
        "onsetDateTime" : "2017-06-09",
        "reaction" : [
          {
            "manifestation" : [
              {
                "coding" : [
                  {
                    "system" : "http://snomed.info/sct",
                    "code" : "247472004",
                    "display" : "Hives"
                  }
                ]
              }
            ],
            "onset" : "2017-06-09"
          }
        ]
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "http://example.org/fhir/Provenance/79614",
      "resource" : {
        "resourceType" : "Provenance",
        "id" : "79614",
        "meta" : {
          "versionId" : "1",
          "lastUpdated" : "2019-07-09T15:26:23.217+00:00",
          "profile" : [
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: 79614</p><p><b>meta</b>: </p><p><b>target</b>: <a href=\"#AllergyIntolerance_79613\">See above (AllergyIntolerance/79613)</a></p><p><b>recorded</b>: 10/07/2019 1:26:23 AM</p><h3>Agents</h3><table class=\"grid\"><tr><td>-</td><td><b>Type</b></td><td><b>Who</b></td><td><b>OnBehalfOf</b></td></tr><tr><td>*</td><td><span title=\"Codes: {http://terminology.hl7.org/CodeSystem/provenance-participant-type author}\">Author</span></td><td><a href=\"Practitioner-practitioner-1.html\">Generated Summary: id: practitioner-1; id: 9941339108, id: 25456; Ronald Bone </a></td><td><a href=\"Organization-saint-luke-w-endpoint.html\">Generated Summary: id: saint-luke-w-endpoint; id: 1063494177, id: 00-0000000; active; name: Saint Luke's Hospital of Kansas City; ph: (816)932-2000(WORK), http://www.saintlukeshealthsystem.org/locations/saint-lukes-hospital-kansas-city(WORK)</a></td></tr></table></div>"
        },
        "target" : [
          {
            "reference" : "AllergyIntolerance/79613"
          }
        ],
        "recorded" : "2019-07-09T15:26:23.217+00:00",
        "agent" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                  "code" : "author",
                  "display" : "Author"
                }
              ]
            },
            "who" : {
              "reference" : "Practitioner/practitioner-1"
            },
            "onBehalfOf" : {
              "reference" : "Organization/saint-luke-w-endpoint"
            }
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    }
  ]
}

</pre>

[Next Page - US Core Pulse Oximetry](USCorePulseOximetry.html)
