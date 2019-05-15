---
title: 3-6-1 US Core Patient
layout: default
active: 3-6-1 US Core Patient
---

An example mapping of Health Plan data for Members to the [US Core Patient profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html) is shown below:

| Line | Payer Source | Payer Source Field    | Data DescripTor         | FHIR Profile    | Profile Field               | ValueSet                                                       | Notes                                                                     |
|------|-------------|-----------------------|------------------------|-----------------|-----------------------------|----------------------------------------------------------------|----------|
| 1.1  | Member      | BENE_ID               | Patientid              | US Core Patient | .identifier.value           |                                                                |          |
| 2.1  | Member      | DOB_DT                | Date of birth          | US Core Patient | .birthDate                  |                                                                |          |
| 3.1  | Member      |                       | Date of Death          | US Core Patient | .deceased[dateTime]         |                                                                |         |
| 4.1  | Member      | BENE_COUNTY_CD        | County                 | US Core Patient | .contact.address.district   |                                                                |          |
| 5.1  | Member      | BENE_STATE_CD         | State                  | US Core Patient | .contact.address.state      |                                                                |           |
| 6.1  | Member      | BENE_CNTY_CD          | Country                | US Core Patient | .contact.address.country    |                                                                |          |
| 7.1  | Member      | BENE_RACE_CD          | Race code              | US Core Patient | .us-core-race               |                                                                |          | 
| 8.1  | Member      |                       | Ethnicity              | US Core Patient | .us-core-ethnicity          |                                                                |          | 
| 9.1  | Member      | GNDR_CD               | Gender code            | US Core Patient | .gender                     | http://build.fhir.org/valueset-administrative-gender.html      |          |
| 10.1 | Member      |                       | Name                   | US Core Patient | .name                       |                                                                |           |
| 11.1 | Member      | BENE_MLG_CNTCT_ZIP_CD | Zip code               | US Core Patient | .contact.address.postalCode |                                                                |          |
| 7.1  | Claim       |                       | Patient account number | US Core Patient | .identifier.value           |                                                                |          |
| 8.1  | Claim       |                       | Medical record number  | US Core Patient | .identifier.value           |                                                                |           |
| F.1  | R4          |                       | Birth sex              | US Core Patient | .us-core-birthsex           | http://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-birthsex.html | UNK      |
| F.2  | R4          |                       | Telecom                | US Core Patient | .telecom                    |                                                                | optional  |
| F.3  | R4          |                       | Language               | US Core Patient | .communication              |                                                                |          | 