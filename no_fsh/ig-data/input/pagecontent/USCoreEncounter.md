[Previous Page - US Core DocumentReference](USCoreDocumentReference.html)

An example mapping of Health Plan data for Members to the [US Core Encounter profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html) is shown below:

{% include style_insert_table_blue.html %}

When populating the encounter resource period - if claim has period, populate period; if only a date, populate the end date in a period element.

Add warning text to alert the user that Claims consider the date of service to be the date when the service is completed therefore one generally cannot infer the start date of a diagnosis or the encounter to be the same as the service date of a line item.


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core Encounter resource are:

| R4 Element                                     | Name                  | Cardinality | Type                                    |
|------------------------------------------------|-----------------------|:-----------:|-----------------------------------------|
| Encounter.identifier                           |  identifier           |     0..*    | Identifier                              |
| Encounter.identifier.system                    |  system               |     1..1    | uri                                     |
| Encounter.identifier.value                     |  value                |     1..1    | string                                  |
| Encounter.status                               |  status               |     1..1    | code                                    |
| Encounter.statusHistory.status                 |  status               |     1..1    | code                                    |
| Encounter.statusHistory.period                 |  period               |     1..1    | Period                                  |
| Encounter.class                                |  class                |     1..1    | Coding                                  |
| Encounter.classHistory.class                   |  class                |     1..1    | Coding                                  |
| Encounter.classHistory.period                  |  period               |     1..1    | Period                                  |
| Encounter.type                                 |  type                 |     1..*    | CodeableConcept                         |
| Encounter.subject                              |  subject              |     1..1    | Reference(US Core Patient Profile)      |
| Encounter.participant                          |  participant          |     0..*    | BackboneElement                         |
| Encounter.participant.type                     |  type                 |     0..*    | CodeableConcept                         |
| Encounter.participant.period                   |  period               |     0..1    | Period                                  |
| Encounter.participant.individual               |  individual           |     0..1    | Reference(US Core Practitioner Profile) |
| Encounter.period                               |  period               |     0..1    | Period                                  |
| Encounter.length                               |  length               |     0..1    | Duration                                |
| Encounter.reasonCode                           |  reasonCode           |     0..*    | CodeableConcept                         |
| Encounter.diagnosis.condition                  |  condition            |     1..1    | Reference(Condition \| Procedure)       |
| Encounter.hospitalization                      |  hospitalization      |     0..1    | BackboneElement                         |
| Encounter.hospitalization.dischargeDisposition |  dischargeDisposition |     0..1    | CodeableConcept                         |
| Encounter.location                             |  location             |     0..*    | BackboneElement                         |
| Encounter.location.location                    |  location             |     1..1    | Reference(Location)                     |

<i>[Table Definition](index.html#mapping-adjudicated-claims-information-to-clinical-resources)</i>

Fields that can be mapped from the CARIN Blue Button IG CPCDS File are included in the table below.

| US Core Element                                | MustSupport | Cardinality | CARIN-BB Element                                                                                   | CPCDS Element Mapping                                                                                                                                                                                      |
|------------------------------------------------|:-----------:|:-----------:|----------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Encounter.identifier                           |      S      |     0..*    | ExplanationOfBenefit.identifier                                                                    | [{"35":"Payer claim unique identifier"}]                                                                                                                                                                   |
| Encounter.identifier.system                    |      S      |     1..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.identifier.value                     |      S      |     1..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.status                               |      S      |     1..1    | ExplanationOfBenefit.status                                                                        | [{"140":"Claim processing status code<br>"}]                                                                                                                                                               |
| Encounter.class                                |      S      |     1..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.classHistory.period                  |             |     1..1    | ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"18, 19":"Member Admission Date<br>Member Discharge Date"}, {"90, 119":"Service from date, Service to date"}                                                                                             |
| Encounter.type                                 |      S      |     1..*    | ExplanationOfBenefit.type                                                                          | [{"16":"Claim type"}]                                                                                                                                                                                      |
| Encounter.subject                              |      S      |     1..1    | ExplanationOfBenefit.patient                                                                       | [{"Ref (1), Ref (109)":"Member id, Patient account number"}, {"Ref (191)":"Unique Member ID"}, {"Ref (110)":"Medical record number"}                                                                       |
| Encounter.participant                          |      S      |     0..*    |                                                                                                    | [{"Ref (93, 96, 98, 99, 173)":"Provider attending, PCP, operating, refering and supervising NPIs"}, {"Ref (166, 169, 182, 171, 174)":"Provider attending, PCP, operating, refering and supervising names"} |
| Encounter.participant.type                     |      S      |     0..*    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.participant.period                   |      S      |     0..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.participant.individual               |      S      |     0..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.period                               |      S      |     0..1    | ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"18, 19":"Member Admission Date<br>Member Discharge Date"}, {"90, 119":"Service from date, Service to date"}                                                                                             |
| Encounter.length                               |      S      |     0..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.reasonCode                           |      S      |     0..*    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.diagnosis                            |             |     0..*    |                                                                                                    | [{"33, 32, 113":"Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"}, {"21, 22, 23, 30, 31":"Diagnosis Code"}, {"28, 29":"Present on admission"}          |
| Encounter.hospitalization                      |      S      |     0..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.hospitalization.dischargeDisposition |      S      |     0..1    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.location                             |      S      |     0..*    |                                                                                                    |                                                                                                                                                                                                            |
| Encounter.location.location                    |      S      |     1..1    |                                                                                                    |                                                                                                                                                                                                            |


<i>[Table Definition](index.html#mapping-adjudicated-claims-information-to-clinical-resources)</i>


#### Example Encounter Resource

An example mapping of an Encounter resource is shown here:

<pre>
{
  "resourceType" : "Encounter",
  "id" : "example-1",
  "meta" : {
    "lastUpdated" : "2017-05-26T11:56:57.250-04:00",
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: example-1</p><p><b>meta</b>: </p><p><b>status</b>: finished</p><p><b>class</b>: <span title=\"{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span></p><p><b>type</b>: <span title=\"Codes: {http://www.ama-assn.org/go/cpt 99201}\">Office Visit</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a></p><p><b>period</b>: Nov 1, 2015, 10:00:14 PM --&gt; Nov 1, 2015, 11:00:14 PM</p></div>"
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://www.ama-assn.org/go/cpt",
          "code" : "99201"
        }
      ],
      "text" : "Office Visit"
    }
  ],
  "subject" : {
    "reference" : "Patient/example"
  },
  "period" : {
    "start" : "2015-11-01T17:00:14-05:00",
    "end" : "2015-11-01T18:00:14-05:00"
  }
}
</pre>


Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/index.html) for further examples of completed [Encounter Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html).




[Next Page - US Core Goal](USCoreGoal.html)
