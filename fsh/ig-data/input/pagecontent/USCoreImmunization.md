[Previous Page - US Core Goal](USCoreGoal.html)

Where a Health Plan has access to structured and coded Immunization information for a member the health plan **SHALL** present the information using the [US Core Immunization](http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html) resource when information is available in a structured and coded form.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core Immunization resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                  | Name           | Cardinality | Type                                                        |
|---------------------------------------------|----------------|-------------|-------------------------------------------------------------|
|  Immunization.status                        |  status        | 1..1        | code                                                        |
|  Immunization.statusReason                  |  statusReason  | 0..1        | CodeableConcept                                             |
|  Immunization.vaccineCode                   |  vaccineCode   | 1..1        | CodeableConcept                                             |
|  Immunization.patient                       |  patient       | 1..1        | Reference(US Core Patient Profile)                          |
|  Immunization.occurrence[x]                 |  occurrence[x] | 1..1        |                                                             |
|  Immunization.primarySource                 |  primarySource | 1..1        | boolean                                                     |
|  Immunization.performer.actor               |  actor         | 1..1        | Reference(Practitioner \| PractitionerRole \| Organization) |
|  Immunization.protocolApplied.doseNumber[x] |  doseNumber[x] | 1..1        |                                                             |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Example Immunization Resource:

An example mapping of an Immunization resource is shown below:

<pre>
{
  "resourceType" : "Immunization",
  "id" : "imm-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: imm-1</p><p><b>meta</b>: </p><p><b>status</b>: completed</p><p><b>vaccineCode</b>: influenza, injectable, quadrivalent, contains preservative <span style=\"background: LightGoldenRodYellow\">(Details : {http://hl7.org/fhir/sid/cvx code '158' = 'influenza, injectable, quadrivalent', given as 'influenza, injectable, quadrivalent, contains preservative'}; {http://hl7.org/fhir/sid/ndc code '49281-0621-15' = '49281-0621-15', given as 'FLUZONE QUADRIVALENT'})</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>occurrence</b>: Jan 8, 2016, 12:00:00 AM</p><p><b>primarySource</b>: false</p></div>"
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/sid/cvx",
        "code" : "158",
        "display" : "influenza, injectable, quadrivalent, contains preservative"
      },
      {
        "system" : "http://hl7.org/fhir/sid/ndc",
        "code" : "49281-0621-15",
        "display" : "FLUZONE QUADRIVALENT"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "occurrenceDateTime" : "2016-01-08",
  "primarySource" : false
}
</pre>



[Next Page - US Core ImplantableDevice](USCoreImplantableDevice.html)
