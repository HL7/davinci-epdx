---
title: 3-6-5 MedicationDispense
layout: default
active: 3-6-5 MedicationDispense
---

An example mapping of Health Plan data for Members to the [PDex MedicationDispense profile]() is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor             | FHIR Profile              | Profile Field                                                          | ValueSet                                                | Notes                          |
|------|-------------------|------------------|-----------------------------|---------------------------|------------------------------------------------------------------------|---------------------------------------------------------|--------------------------------|
| 1.3  | Member            | BENE_ID          | Patientid                   | MedicationDispense        | .subject                                                               |                                                         | Reference(Patient)             |
| 1.1  | Claim-Pharmacy    |                  | Days supply                 | MedicationDispense        | .daysSupply                                                            |                                                         |                                |
| 2.1  | Claim-Pharmacy    |                  | RX service reference number | MedicationDispense        | .identifier                                                            |                                                         |                                |
| 4.1  | Claim-Pharmacy    |                  | Refill number               | MedicationDispense        | .type                                                                  | http://hl7.org/fhir/R4/v3/ActPharmacySupplyType/vs.html | Calculate First Fill or Refill |
| 7.1  | Claim-Line        |                  | Number of units             | MedicationDispense        |                                                                        |                                                         |                                |
| 9.1  | Claim-Line        |                  | National drug code          | MedicationDispense        | .medication.medcationCodeeableConcept                                  |                                                         | SNOMED CT Code                 |
| 10.1 | Claim-Line        |                  | Compound code               | MedicationDispense        | .medication.medcationReference(Medication)                             |                                                         |                                |
| 11.1 | Claim-Line        |                  | Quantity dispensed          | MedicationDispense        | .quantity                                                              |                                                         |                                |
| 12.1 | Claim-Line        |                  | Quantity qualifier code     | MedicationDispense        | .category                                                              |                                                         |                                |
| 5.1  | Claim-Pharmacy    |                  | Prescription origin code    | US Core MedicationRequest | .authorizingPrescription.Reference(MedicationRequest).identifier.value |                                                         |                                |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

The minimum fields to be provided in the MedicationDispense resource are:

| R4 Hierarchical Name             | R4 Name            | Card. | Type                       |
|----------------------------------|--------------------|-------|----------------------------|
| MedicationDispense               | MedicationDispense |       | DomainResource             |
| MedicationDispense.identifier    | identifier         | 0..*  | Identifier                 |
| MedicationDispense.status        | status             | 1..1  | code                       |
| MedicationDispense.medication[x] | medication[x]      | 1..1  |                            |
| MedicationDispense.subject       | subject            | 0..1  | Reference(Patient | Group) |

#### 3-6-5-1 Example MedicationDispense Resource

An example mapping of a MedicationDispense resource is shown here:

<pre>
TODO: Add MedicationDispense Resource in JSON format
</pre>




