[Previous Page - US Core Pediatric Weight for Height Observation](USCorePediatricWeightforHeightObservation.html)

The  [US Core Practitioner profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html)  **SHALL** be used to record information about Practitioners.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core Practitioner resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                 | Name            | Cardinality | Type               |
|--------------------------------------------|-----------------|:-----------:|--------------------|
|  Practitioner.identifier                   |  identifier     |     1..*    | (Slice Definition) |
|  Practitioner.identifier:All Slices.system |  system         |     1..1    | uri                |
|  Practitioner.identifier:All Slices.value  |  value          |     1..1    | string             |
|  Practitioner.identifier:NPI               |  identifier:NPI |     0..1    | Identifier         |
|  Practitioner.identifier:NPI.system        |  system         |     1..1    | uri                |
|  Practitioner.name                         |  name           |     1..*    | HumanName          |
|  Practitioner.name.family                  |  family         |     1..1    | string             |
|  Practitioner.qualification.code           |  code           |     1..1    | CodeableConcept    |

<i>[Table Definition](index.html#mapping-adjudicated-claims-information-to-clinical-resources)</i>


#### Example Practitioner Resource

An example mapping of an Practitioner resource is shown here:

<pre>
{
  "resourceType" : "Practitioner",
  "id" : "practitioner-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: practitioner-1</p><p><b>meta</b>: </p><p><b>identifier</b>: 9941339108, 25456</p><p><b>name</b>: Ronald Bone </p><p><b>address</b>: 1003 Healthcare Drive Amherst MA 01002 (HOME)</p></div>"
  },
  "identifier" : [
    {
      "system" : "http://hl7.org.fhir/sid/us-npi",
      "value" : "9941339108"
    },
    {
      "system" : "http://www.acme.org/practitioners",
      "value" : "25456"
    }
  ],
  "name" : [
    {
      "family" : "Bone",
      "given" : [
        "Ronald"
      ],
      "prefix" : [
        "Dr"
      ]
    }
  ],
  "address" : [
    {
      "use" : "home",
      "line" : [
        "1003 Healthcare Drive"
      ],
      "city" : "Amherst",
      "state" : "MA",
      "postalCode" : "01002"
    }
  ]
}
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/index.html) for further examples of completed [US Core Practitioner Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html).



[Next Page - US Core PractitionerRole](USCorePractitionerRole.html)
