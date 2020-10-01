[Previous Page - US Core PractitionerRole](USCorePractitionerRole.html)

The  [US Core Procedure profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)  **SHALL** be used to record a members health events.

The essential fields to be provided in the US Core Procedure resource are:
{% include style_insert_table_blue.html %}

| R4 Hierarchical Name      | R4 Name      | Card. | Type                                                                                         |
|---------------------------|--------------|-------|----------------------------------------------------------------------------------------------|
| Procedure                 | Procedure    | 0..*  |                                                                                              |
| Procedure.id              | id           | 0..1  | id                                                                                           |
| Procedure.status          | status       | 1..1  | code                                                                                         |
| Procedure.code            | code         | 1..1  | CodeableConcept                                                                              |
| Procedure.subject         | subject      | 1..1  | Reference(US Core Patient Profile)                                                           |
| Procedure.performed[x]    | performed[x] | 1..1  | dateTime, Period                                                                             |
| Procedure.performer.actor | actor        | 1..1  | Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device) |


#### Health Plan Mapping Assistance
A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [US Core Procedure profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html). This is shown below as an assistance  to implementers:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor     | FHIR Profile      | Profile Field                     | ValueSet | Notes              |
|------|-------------------|------------------|---------------------|-------------------|-----------------------------------|----------|--------------------|
| 1.4  | Member            | [BENE_ID](https://bluebutton.cms.gov/resources/variables/bene_id)          | Patientid           | US Core Procedure | .subject                          |          | Reference(Patient) |
| 1.1  | Claim-Line        | N/A                 | Service (from) date | US Core Procedure | .occurence.occurrencePeriod.start |          |                    |
| 1.1  | Procedure         | N/A                 | Procedure code      | US Core Procedure | .code                             |          |                    |
| 2.1  | Procedure         | N/A                 | Procedure date      | US Core Procedure | .performed.dateTime               |          |                    |
| 3.1  | Procedure         | N/A                 | Procedure code type | US Core Procedure | .category                         |          |                    |
| 4.1  | Procedure         | N/A                 | Procedure type      | US Core Procedure | .code.coding.system               |          |                    |
| 5.1  | Procedure         | N/A                 | Modifier Code -1    | US Core Procedure | .modifierExtension                |          |                    |
| 6.1  | Procedure         | N/A                 | Modifier Code -2    | US Core Procedure | .modifierExtension                |          |                    |
| 7.1  | Procedure         | N/A                 | Modifier Code -3    | US Core Procedure | .modifierExtension                |          |                    |
| 8.1  | Procedure         | N/A                 | Modifier Code -4    | US Core Procedure | .modifierExtension                |          |                    |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/


#### Example Procedure Resource

An example mapping of an Procedure resource for a medical impiant is shown here:

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

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/index.html) for further examples of completed [US Core Procedure Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html).



[Next Page - PDex Provenance](PDexProvenance.html)
