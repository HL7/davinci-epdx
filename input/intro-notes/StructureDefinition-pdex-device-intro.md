

US Core supports the [US Core Implantable Device](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-implantable-device.html) resource. However, 
 payers may need to record information about other non-implantable devices that are used by their members. The PDex-Device profile is used to record this type of information. 

NOTE: FHIR-29796: PDex Device uses base resource not US Core Implantable Device Profile. 
Pdex-Device enables payers to record non-implantable device data. 
CGP Voted on variance approval: Drew Torres/Eric Haas: 9-0-0

In future versions of this IG there is a desire to ensure that all Device identification information is exchanged using the PDex Device or US Core Implantable Device resource.  

{% include style_insert_table_blue.html %}

he essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [PDex Device](StructureDefinition-pdex-device.html) resource are:

{% include style_insert_table_blue.html %}

| R4 Element                         | Name              | Cardinality | Type                               |
|------------------------------------|-------------------|:-----------:|------------------------------------|
| Device.type                        |  type             |     1..1    | CodeableConcept                    |
| Device.patient                     |  patient          |     1..1    | Reference(US Core Patient Profile) |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>


