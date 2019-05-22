---
title: 3-6-6 US Core Practitioner
layout: default
active: 3-6-6 US Core Practitioner
---

An example mapping of Health Plan data for Members to the [US Core Practitioner profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor               | FHIR Profile         | Profile Field     | ValueSet | Notes |
|------|-------------------|------------------|-------------------------------|----------------------|-------------------|----------|-------|
| 1.1  | Claim-Provider    |                  | Claim billing provider NPI    | US Core Practitioner | .identifier.value |          |       |
| 3.1  | Claim-Provider    |                  | Claim attending physician NPI | US Core Practitioner | .identifier.value |          |       |
| 6.1  | Claim-Provider    |                  | Claim referring provider NPI  | US Core Practitioner | .identifier.value |          |       |
| 8.1  | Claim-Provider    |                  | Claim performing provider NPI | US Core Practitioner | .identifier.value |          |       |
| 10.1 | Claim-Provider    |                  | Claim operating physician NPI | US Core Practitioner | .identifier.value |          |       |
| 12.1 | Claim-Provider    |                  | Claim other physician NPI     | US Core Practitioner | .identifier.value |          |       |
| 14.1 | Claim-Provider    |                  | Claim rendering physician NPI | US Core Practitioner | .identifier.value |          |       |
| 17.1 | Claim-Provider    |                  | Claim PCP                     | US Core Practitioner | .identifier.value |          |       |


Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

The minimum fields to be provided in the US Core Practitioner resource are:

| R4 Hierarchical Name            | R4 Name      | Card. | Type            |
|---------------------------------|--------------|-------|-----------------|
| Practitioner                    | Practitioner | 0..*  |                 |
| Practitioner.id                 | id           | 0..1  | id              |
| Practitioner.identifier         | identifier   | 1..*  | Identifier      |
| Practitioner.identifier.system  | system       | 1..1  | uri             |
| Practitioner.identifier.value   | value        | 1..1  | string          |
| Practitioner.name               | name         | 1..1  | HumanName       |
| Practitioner.name.family        | family       | 1..1  | string          |
| Practitioner.qualification.code | code         | 1..1  | CodeableConcept |

#### 3-6-6-1 Example Practitioner Resource

An example mapping of an Practitioner resource is shown here:

<pre>
TODO: Add Practitioner Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [US Core Practitioner Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html).




