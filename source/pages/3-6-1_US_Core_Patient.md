---
title: 3-6-1 US Core Patient
layout: default
active: 3-6-1 US Core Patient
---

An example mapping of Health Plan data for Members to the [US Core Patient profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html) is shown below:

| Line | PayerSource | CMS BB 2.0 Field      | Data Descriptor        | FHIR Profile    | Profile Field               | ValueSet                                                       | Notes                |
|------|-------------|-----------------------|------------------------|-----------------|-----------------------------|----------------------------------------------------------------|----------------------|
| 1.1  | Member      | BENE_ID               | Patientid              | US Core Patient | .identifier.value           |                                                                |                      |
| 2.1  | Member      | DOB_DT                | Date of birth          | US Core Patient | .birthDate                  |                                                                |                      |
| 3.1  | Member      |                       | Date of Death          | US Core Patient | .deceased[dateTime]         |                                                                |                      |
| 4.1  | Member      | BENE_COUNTY_CD        | County                 | US Core Patient | .contact.address.district   |                                                                |                      |
| 5.1  | Member      | BENE_STATE_CD         | State                  | US Core Patient | .contact.address.state      |                                                                |                      |
| 6.1  | Member      | BENE_CNTY_CD          | Country                | US Core Patient | .contact.address.country    |                                                                |                      |
| 7.1  | Member      | BENE_RACE_CD          | Race code              | US Core Patient | .us-core-race               |                                                                |                      |
| 8.1  | Member      |                       | Ethnicity              | US Core Patient | .us-core-ethnicity          |                                                                |                      |
| 9.1  | Member      | GNDR_CD               | Gender code            | US Core Patient | .gender                     | http://build.fhir.org/valueset-administrative-gender.html      |                      |
| 10.1 | Member      |                       | Name                   | US Core Patient | .name                       |                                                                |                      |
| 11.1 | Member      | BENE_MLG_CNTCT_ZIP_CD | Zip code               | US Core Patient | .contact.address.postalCode |                                                                |                      |
| 7.1  | Claim       |                       | Patient account number | US Core Patient | .identifier.value           |                                                                |                      |
| 8.1  | Claim       |                       | Medical record number  | US Core Patient | .identifier.value           |                                                                |                      |
| F.1  | R4          |                       | Birth sex              | US Core Patient | .us-core-birthsex           | http://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-birthsex.html | UNK                  |
| F.2  | R4          |                       | Telecom                | US Core Patient | .telecom                    |                                                                | Provide If Available |
| F.3  | R4          |                       | Language               | US Core Patient | .communication              |                                                                | Provide If Available |


Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-1-1 Example Patient Resource

An example mapping of a Patient resource is shown here:

<pre>
TODO: Add Patient Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [Patient Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html).

