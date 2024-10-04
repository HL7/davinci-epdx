[Previous Page - US Core DocumentReference](USCoreDocumentReference.html)

An example mapping of Health Plan data for Members to the
[US Core 3.1.1 Encounter]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-encounter.html) or
[US Core 6.1.0 Encounter]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-encounter.html) resource 
is shown below:

{% include style_insert_table_blue.html %}

When populating the encounter resource period - if claim has period, populate period; if only a date, populate the end date in a period element.

Add warning text to alert the user that Claims consider the date of service to be the date when the service is completed therefore one generally cannot infer the start date of a diagnosis or the encounter to be the same as the service date of a line item.


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the 
[US Core 3.1.1 Encounter]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-encounter.html) or
[US Core 6.1.0 Encounter]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-encounter.html) resource are:

| R4 Element                                     | Name                  | Cardinality | Type                                    |
|------------------------------------------------|-----------------------|:-----------:|-----------------------------------------|
| Encounter.identifier                           |  identifier           |     0..*    | Identifier                              |
| Encounter.identifier.system                    |  system               |     1..1    | uri                                     |
| Encounter.identifier.value                     |  value                |     1..1    | string                                  |
| Encounter.status                               |  status               |     1..1    | code                                    |
| Encounter.class                                |  class                |     1..1    | Coding                                  |
| Encounter.type                                 |  type                 |     1..*    | CodeableConcept                         |
| Encounter.subject                              |  subject              |     1..1    | Reference(US Core Patient Profile)      |
| Encounter.participant                          |  participant          |     0..*    | BackboneElement                         |
| Encounter.participant.type                     |  type                 |     0..*    | CodeableConcept                         |
| Encounter.participant.period                   |  period               |     0..1    | Period                                  |
| Encounter.participant.individual               |  individual           |     0..1    | Reference(US Core Practitioner Profile) |
| Encounter.period                               |  period               |     0..1    | Period                                  |
| Encounter.reasonCode                           |  reasonCode           |     0..*    | CodeableConcept                         |
| Encounter.hospitalization                      |  hospitalization      |     0..1    | BackboneElement                         |
| Encounter.hospitalization.dischargeDisposition |  dischargeDisposition |     0..1    | CodeableConcept                         |
| Encounter.location                             |  location             |     0..*    | BackboneElement                         |
| Encounter.location.location                    |  location             |     1..1    | Reference(Location)                     |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

Fields that can be mapped from the CARIN Blue Button IG CPCDS File are included in the table below:

| US Core Element                                | Must Support | Cardinality | CARIN-BB Element                                                                                   | CPCDS Element Mapping or Implementer Note                                                                                                                                                                                                                                                                     |
|------------------------------------------------|:------------:|:-----------:|----------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Encounter.identifier                           |       S      |     0..*    | ExplanationOfBenefit.identifier                                                                    | [{"35":"Payer claim unique identifier"}]. Note: Assign Payer System URI for Unique Claim Id in Encounter.identifier.system. SetClaim Id in Encounter.identifier.value                                                                                                                                         |
| Encounter.identifier.system                    |       S      |     1..1    |                                                                                                    | Note: Assign Payer System URI for Unique Claim Id in Encounter.identifier.system. Set Claim Id in Encounter.identifier.value                                                                                                                                                                                  |
| Encounter.identifier.value                     |       S      |     1..1    |                                                                                                    | Note: Assign Claim Id in Encounter.identifier.value                                                                                                                                                                                                                                                           |
| Encounter.status                               |       S      |     1..1    | ExplanationOfBenefit.status                                                                        | [{"140":"Claim processing status code<br>"}]                                                                                                                                                                                                                                                                  |
| Encounter.statusHistory.period                 |              |     1..1    |                                                                                                    | [{"177, 178":"Statement From Date<br>Statement Through Date<br>"}]                                                                                                                                                                                                                                            |
| Encounter.class                                |       S      |     1..1    |                                                                                                    | Note: Use ExplanationOfBenefit.type [institutional\|oral\|pharmacy\|professional\|vision]  to map to ActCode [IMP\|AMB\|AMB\|AMB]  |
| Encounter.classHistory.period                  |              |     1..1    | ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"18, 19":"Member Admission Date<br>Member Discharge Date"}, {"90, 119":"Service from date, Service to date"}]                                                                                                                                                                                               |
| Encounter.type                                 |       S      |     1..*    | ExplanationOfBenefit.type                                                                          | HCPCS codes are contained within CPT Code System.                                                                                                                                                                                                                                                             |
| Encounter.subject                              |       S      |     1..1    | ExplanationOfBenefit.patient                                                                       | [{"Ref (1), Ref (109)":"Member id, Patient account number"}, {"Ref (191)":"Unique Member ID"}, {"Ref (110)":"Medical record number"}]                                                                                                                                                                         |
| Encounter.participant.type                     |       S      |     0..*    | ExplanationOfBenefit.careTeam.role                                                                 | [{"165":"Care Team Role"}]                                                                                                                                                                                                                                                                                    |
| Encounter.participant.period                   |       S      |     0..1    |                                                                                                    | Note: Provide information if available                                                                                                                                                                                                                                                                        |
| Encounter.participant.individual               |       S      |     0..1    | ExplanationOfBenefit.careTeam.provider                                                             | [{"Ref (93, 96, 98, 99, 173)":"Provider attending, PCP, operating, <br/>referring and supervising NPIs"}, {"Ref (166, 169, 182, 171, 174)":"Provider <br/>attending, PCP, operating, referring and supervising names"},<br/>{"Ref (94, 167)":"Claim Billing Provider NPI, <br/>Claim Billing Provider Name"}] |
| Encounter.period                               |       S      |     0..1    | ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"18, 19":"Member Admission Date<br>Member Discharge Date"}, {"90, 119":"Service from date, Service to date"}]                                                                                                                                                                                               |
| Encounter.length                               |       S      |     0..1    |                                                                                                    | . Note: Provide information if available                                                                                                                                                                                                                                                                      |
| Encounter.reasonCode                           |       S      |     0..*    |                                                                                                    | . Note: Provide information if available                                                                                                                                                                                                                                                                      |
| Encounter.diagnosis |              |     0..*    | ExplanationOfBenefit.diagnosis.onAdmission                                                         | [{"21, 22, 23, 30, 31":"Diagnosis Code"}, {"28, 29":"Present on admission"}]                                                                                                                                                                                                                                  |
| Encounter.hospitalization                      |       S      |     0..1    |                                                                                                    | . Note: Provide information if available                                                                                                                                                                                                                                                                      |
| Encounter.hospitalization.dischargeDisposition |       S      |     0..1    |                                                                                                    | Note: Provide information if available                                                                                                                                                                                                                                                                        |
| Encounter.location                             |       S      |     0..*    | ExplanationOfBenefit.locationReference                                                             | Note: Reference to location where Encounter took place                                                                                                                                                                                                                                                        |
| Encounter.location.location                    |       S      |     1..1    |                                                                                                    | Note: Reference to location where Encounter took place                                                                                                                                                                                                                                                        |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>


#### Example Encounter Resource

An example mapping of an Encounter resource is shown here:

<pre class="json">
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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p&gt;&lt;b&gt;Generated Narrative</b></p><p><&lt;b&gt;id&lt;/b&gt;: example-1</p>&lt;p&gt;&lt;b&gt;meta</b>: </p>&lt;p&gt;&lt;b&gt;status</b>: finished</p>&lt;p&gt;&lt;b&gt;class</b>: <span title=\"{http://terminology.hl7.org/CodeSystem/v3-ActCode AMB}\">ambulatory</span></p>&lt;p&gt;&lt;b&gt;type</b>: <span title=\"Codes: {http://www.ama-assn.org/go/cpt 99201}\">Office Visit</span></p>&lt;p&gt;&lt;b&gt;subject</b>: <a href=\"Patient-example.html\">Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw , Amy V. Baxter ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: 1987-02-20</a></p>&lt;p&gt;&lt;b&gt;period</b>: Nov 1, 2015, 10:00:14 PM --&gt; Nov 1, 2015, 11:00:14 PM</p></div>"
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


Refer to the US Core Additional examples of the [US Core 3.1.1 Implementation Guide]({{site.data.fhir.ver.uscore3}}) 
or [US Core 6.1.0 Implementation Guide]({{site.data.fhir.ver.uscore6}}) for further examples of completed 
Encounter Profiles.



[Next Page - US Core Goal](USCoreGoal.html)
