---
title: 3-6-3 US Core Encounter
layout: default
active: 3-6-3 US Core Encounter
---

An example mapping of Health Plan data for Members to the [US Core Encounter profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor                       | FHIR Profile      | Profile Field                                                            | ValueSet                                                                      | Notes                              |
|------|-------------------|------------------|---------------------------------------|-------------------|--------------------------------------------------------------------------|-------------------------------------------------------------------------------|------------------------------------|
| 1.5  | Member            | BENE_ID          | Patientid                             | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 1.1  | Claim             |                  | Claim service start date              | US Core Encounter | .period.start                                                            |                                                                               |                                    |
| 2.1  | Claim             |                  | Claim service end date                | US Core Encounter | .period.end                                                              |                                                                               |                                    |
| 5.1  | Claim             |                  | Member admission date                 | US Core Encounter | .period.start                                                            |                                                                               | Overrides claim service start date |
| 6.1  | Claim             |                  | Member discharge date                 | US Core Encounter | .period.end                                                              |                                                                               | Overrides claim service end date   |
| 7.2  | Claim             |                  | Patient account number                | US Core Encounter | .subject                                                                 |                                                                               | Reference(Patient)                 |
| 9.1  | Claim             |                  | Claim unique identifier               | US Core Encounter | .identifier.id                                                           |                                                                               |                                    |
| 12.1 | Claim             |                  | Claim diagnosis related group         | US Core Encounter | .diagnosis.id                                                            |                                                                               | .diagnosis.use                     |
| 13.1 | Claim             |                  | Claim inpatient source admission code | US Core Encounter | .class                                                                   | http://build.fhir.org/v3/ActEncounterCode/vs.html                             |                                    |
| 14.1 | Claim             |                  | Claim inpatient admission type code   | US Core Encounter | .type                                                                    | https://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-us-core-encounter-type.html | CPT Coding                         |
| 21.1 | Claim             |                  | Patient discharge status code         | US Core Encounter | .hospitalization.dischargeDisposition                                    |                                                                               |                                    |
| 2.1  | Claim-Line        |                  | Line number                           | US Core Encounter | .diagnosis.id                                                            |                                                                               |                                    |
| 3.1  | Claim-Line        |                  | Service to date                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).occurence.occurrencePeriod.end |                                                                               |                                    |
| 4.1  | Claim-Line        |                  | Type of service                       | US Core Encounter | .diagnosis.condition.Reference(Procedure).type                           |                                                                               |                                    |
| 5.1  | Claim-Line        |                  | Place of service code                 | US Core Encounter | .location.location.Reference(Location).type                              |                                                                               |                                    |
| 1.1  | Diagnosis         |                  | Diagnosis code                        | US Core Encounter | .diagnosis.condition                                                     |                                                                               |                                    |
| 2.1  | Diagnosis         |                  | Present on admission                  | US Core Encounter | .diagnosis.condition                                                     | http://build.fhir.org/valueset-diagnosis-role.html                            | .diagnosis.use                     |
| 3.1  | Diagnosis         |                  | Diagnosis code type                   | US Core Encounter | .diagnosis.condition.Reference(Condition).code                           |                                                                               |                                    |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-3-1 Example Encounter Resource

An example mapping of an Encounter resource is shown here:

<pre>
TODO: Add Encounter Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [Encounter Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html).


