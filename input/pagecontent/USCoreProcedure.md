[Previous Page - PDex Prior Authorization](PDexPriorAuthorization.html)

The [US Core 3.1.1 Procedure]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-procedure.html) or
[US Core 6.1.0 Procedure]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-procedure.html)
**SHALL** be used to record a member's health events.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
[US Core 3.1.1 Procedure]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-procedure.html) or
[US Core 6.1.0 Procedure]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-procedure.html)
are:

{% include style_insert_table_blue.html %}

| R4 Element                         | Name          | Cardinality | Type                                                                                              |
|------------------------------------|---------------|:-----------:|---------------------------------------------------------------------------------------------------|
|  Procedure.status                  |  status       |     1..1    | code                                                                                              |
|  Procedure.code                    |  code         |     1..1    | CodeableConcept                                                                                   |
|  Procedure.subject                 |  subject      |     1..1    | Reference(US Core Patient Profile)                                                                |
|  Procedure.performed[x]            |  performed[x] |     1..1    |                                                                                                   |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Health Plan Mapping Assistance
A collaboration of Health Plan experts has performed an evaluation of claims information and developed a mapping of data for Members to the [US Core Procedure profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html). This is shown below as an assistance to implementers:

| US Core Element   | Must Support | Cardinality | CARIN-BB Element  | CPCDS Element Mapping or Implementer Note |
|-----------------------|:------------:|:-----------:|-----------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Procedure.meta.lastUpdated |              |     0..1    | ExplanationOfBenefit.meta.lastUpdated                                                                                                   | [{"163":"EOB Last Updated Date"}] |
|  Procedure.identifier |              |     0..*    | ExplanationOfBenefit.identifier + ExplanationOfBenefit.item.id                                                                                     | [{"35":"Payer claim unique identifier"}]. Note: Assign Payer System URI for Unique Claim Id in Procedure.identifier.system. Set Claim Id in Procedure.identifier.value. Add line item.id from EOB to identify multiple procedures on an EOB |
| Procedure.status  |       S      |     1..1    |                                                                                                                                         | Note: Note: EOB Status 0f [active \| cancelled \| draft \| entered-in-error] = [completed\|not-done\|unknown\|entered-in-error]                                      |
|  Procedure.code       |       S      |     1..1    |  ExplanationOfBenefit.procedure.procedure                                                                                               | [{"24, 26, 146":"ICD Procedure Code"}, {"40":"Procedure Code - CPT / HCPCS"}, {"41":"Procedure Code Modifier - CPT / HCPCS"}] |
| Procedure.subject     |       S      |     1..1    | ExplanationOfBenefit.patient                                                                                                            | [{"Ref (1), Ref (109)":"Member id, Patient account number"}, {"Ref (191)":"Unique Member ID"}, {"Ref (110)":"Medical record number"}] |
| Procedure.performed[x] |       S      |     1..1    |                                                                                                                                         | Note: Enter Procedure.performedPeriod or Procedure.performedDateTime (next field below) |
| Procedure.performedDateTime |              |             | ExplanationOfBenefit.procedure.date, ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"25, 27":"Procedure date"}, {"90, 119":"Service from date,  Service to date"}] |
|  Procedure.performedPeriod |              |             | ExplanationOfBenefit.procedure.date, ExplanationOfBenefit.item.serviced.servicedPeriod, ExplanationOfBenefit.item.serviced.servicedDate | [{"25, 27":"Procedure date"}, {"90, 119":"Service from date,  Service to date"}]  |
| Procedure.location |              |     0..1    | ExplanationOfBenefit.item.location. locationCodeableConcept, ExplanationOfBenefit.item.supportingInfo.location. locationCodeableConcept | [{"46":"Place of service code"}, {"97, 170, 176":"Service Facility NPI (if available), Name, Address"}] |
| Procedure.reasonCode  |              |     0..*    | ExplanationOfBenefit.diagnosis.diagnosis  | [{“22, 23”:”Diagnosis Code”}] |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

Note: Procedure records should only be created from ExplanationOfBenefit or CPCDS resources for items that are clinical procedures. Medications, facility charges and supplies should not be created as prodcudure records.

#### Example Procedure Resource

An example mapping of a Procedure resource for a medical implant 
is presented below:

<pre>
{
  "resourceType" : "Procedure",
  "id" : "defib-implant",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: defib-implant</p><p><b>meta</b>: </p><p><b>identifier</b>: urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07aff</p><p><b>status</b>: completed</p><p><b>code</b>: Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber <span style=\"background: LightGoldenRodYellow\">(Details : {http://www.ama-assn.org/go/cpt code '33249' = '33249)</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>performed</b>: Mar 26, 2019, 7:55:26 PM --&gt; Mar 26, 2019, 8:25:26 PM</p><h3>Performers</h3><table class=\"grid\"><tr><td>-</td><td><b>Actor</b></td></tr><tr><td>*</td><td><a href=\"Practitioner-practitioner-1.html\">Generated Summary: id: practitioner-1; 9941339108, 25456; Ronald Bone </a></td></tr></table><h3>FocalDevices</h3><table class=\"grid\"><tr><td>-</td><td><b>Manipulated</b></td></tr><tr><td>*</td><td><a href=\"Device-udi-2.html\">Generated Summary: id: udi-2; status: active; manufacturer: ACME Biomedical; expirationDate: Jan 1, 2022, 12:00:00 AM; lotNumber: M320; serialNumber: AC221; modelNumber: 1.0; <span title=\"Codes: {http://snomed.info/sct 19257004}\">Implant</span></a></td></tr></table></div>"
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07aff"
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.ama-assn.org/go/cpt",
        "code" : "33249"
      }
    ],
    "text" : "Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2019-03-26T12:55:26-07:00",
    "end" : "2019-03-26T13:25:26-07:00"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/practitioner-1"
      }
    }
  ],
  "focalDevice" : [
    {
      "manipulated" : {
        "reference" : "Device/udi-2"
      }
    }
  ]
}
</pre>

Refer to the US Core Additional examples of the [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) or
[US Core 6.1.0]({{site.data.fhir.ver.uscore6}}) Implementation Guide for further examples of completed
Procedure Profiles.


[Next Page - PDex Provenance](PDexProvenance.html)
