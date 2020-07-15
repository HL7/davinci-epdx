[Previous Page - US Core DocumentReference](USCoreDocumentReference.html)

An example mapping of Health Plan data for Members to the [US Core Encounter profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor                       | FHIR Profile      | Profile Field                                                            | ValueSet                                                                      | Notes                              |
|------|-------------------|------------------|---------------------------------------|-------------------|--------------------------------------------------------------------------|-------------------------------------------------------------------------------|------------------------------------|
| 1.5  | Member            | [BENE_ID](https://bluebutton.cms.gov/resources/variables/bene_id)          | Patientid                             | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 1.1  | Claim             |  N/A                | Claim service start date              | US Core Encounter | .period.start                                                            |                                                                               |                                    |
| 2.1  | Claim             | N/A             | Claim service end date                | US Core Encounter | .period.end                                                              |                                                                               |                                    |
| 5.1  | Claim             | N/A                 | Member admission date                 | US Core Encounter | .period.start                                                            |                                                                               | Overrides claim service start date |
| 6.1  | Claim             | N/A                 | Member discharge date                 | US Core Encounter | .period.end                                                              |                                                                               | Overrides claim service end date   |
| 7.2  | Claim             | N/A                 | Patient account number                | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 9.1  | Claim             | N/A                 | Claim unique identifier               | US Core Encounter | .identifier.id                                                           |                                                                               |                                    |
| 12.1 | Claim             | N/A                 | Claim diagnosis related group         | US Core Encounter | .diagnosis.id                                                            |                                                                               | .diagnosis.use                     |
| 13.1 | Claim             | N/A                 | Claim inpatient source admission code | US Core Encounter | .class                                                                   | http://build.fhir.org/v3/ActEncounterCode/vs.html                             |                                    |
| 14.1 | Claim             | N/A                 | Claim inpatient admission type code   | US Core Encounter | .type                                                                    | https://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-us-core-encounter-type.html | CPT Coding                         |
| 21.1 | Claim             | N/A                 | Patient discharge status code         | US Core Encounter | .hospitalization.dischargeDisposition                                    |                                                                               |                                    |
| 2.1  | Claim-Line        | N/A                 | Line number                           | US Core Encounter | .diagnosis.id                                                            |                                                                               |Without Claim Identifier Claim Line is Not relevant or useful. Hence, .diagnosis.id does not need to be used. |
| 3.1  | Claim-Line        | N/A                 | Service to date                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).occurence.occurrencePeriod.end |                                                                               |                                    |
| 4.1  | Claim-Line        | N/A                 | Type of service                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).type                           |                                                                               |                                    |
| 5.1  | Claim-Line        | N/A                 | Place of service code                 | US Core Encounter | .location.location.Reference(Location).type                              |                                                                               |                                    |
| 1.1  | Diagnosis         | N/A                 | Diagnosis code                        | US Core Encounter | .diagnosis.condition                                                     |                                                                               |                                    |
| 2.1  | Diagnosis         | N/A                 | Present on admission                  | US Core Encounter | .diagnosis.condition                                                     | http://build.fhir.org/valueset-diagnosis-role.html                            | .diagnosis.use                     |
| 3.1  | Diagnosis         | N/A                 | Diagnosis code type                   | US Core Encounter | .diagnosis.condition.Reference(Condition).code                           |                                                                               |                                    |

When populating the encounter resource period - if claim has period, populate period; if only a date, populate the end date in a period element.

Add warning text to alert the user that Claims consider the date of service to be the date when the service is completed therefore one generally cannot infer the start date of a diagnosis or the encounter to be the same as the service date of a line item.

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

The minimum fields to be provided in the US Core Encounter resource are:

| R4 Hierarchical Name                           | R4 Name              | Card. | Type                                                             |
|------------------------------------------------|----------------------|-------|------------------------------------------------------------------|
| Encounter                                      | Encounter            | 0..*  |                                                                  |
| Encounter.id                                   | id                   | 0..1  | id                                                               |
| Encounter.identifier                           | identifier           | 0..*  | Identifier                                                       |
| Encounter.identifier.system                    | system               | 1..1  | uri                                                              |
| Encounter.identifier.value                     | value                | 1..1  | string                                                           |
| Encounter.status                               | status               | 1..1  | code                                                             |
| Encounter.class                                | class                | 1..1  | Coding                                                           |
| Encounter.type                                 | type                 | 1..*  | CodeableConcept                                                  |
| Encounter.subject                              | subject              | 1..1  | Reference(US Core Patient Profile)                               |
| Encounter.participant                          | participant          | 0..*  | BackboneElement                                                  |
| Encounter.participant.type                     | type                 | 0..*  | CodeableConcept                                                  |
| Encounter.participant.period                   | period               | 0..1  | Period                                                           |
| Encounter.participant.individual               | individual           | 0..1  | Reference(US Core Practitioner Profile)                          |
| Encounter.period                               | period               | 0..1  | Period                                                           |
| Encounter.reasonCode                           | reasonCode           | 0..*  | CodeableConcept                                                  |
| Encounter.diagnosis                            | diagnosis            | 0..*  | BackboneElement                                                  |
| Encounter.diagnosis.condition                  | condition            | 1..1  | Reference(US Core Condition Profile | US Core Procedure Profile) |
| Encounter.diagnosis.rank                       | rank                 | 0..1  | positiveInt                                                      |
| Encounter.hospitalization                      | hospitalization      | 0..1  | BackboneElement                                                  |
| Encounter.hospitalization.dischargeDisposition | dischargeDisposition | 0..1  | CodeableConcept                                                  |
| Encounter.location                             | location             | 0..*  | BackboneElement                                                  |
| Encounter.location.location                    | location             | 1..1  | Reference(US Core Location Profile)                              |

#### Example Encounter Resource

An example mapping of an Encounter resource is shown here:

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/) for further examples of completed [Encounter Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html).




[Next Page - US Core Goal](USCoreGoal.html)
