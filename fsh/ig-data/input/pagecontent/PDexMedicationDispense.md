[Previous Page - US Core Medication](USCoreMedication.html)

The  [Da Vinci PDex MedicationDispense profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense.html)  **SHALL** be used to record a member's prescription drug claims.

The essential fields to be provided in the MedicationDispense resource are:

| R4 Hierarchical Name             | R4 Name            | Card. | Type                       |
|----------------------------------|--------------------|-------|----------------------------|
| MedicationDispense               | MedicationDispense |       | DomainResource             |
| MedicationDispense.identifier    | identifier         | 0..*  | Identifier                 |
| MedicationDispense.status        | status             | 1..1  | code                       |
| MedicationDispense.medication[x] | medication[x]      | 1..1  |                            |
| MedicationDispense.subject       | subject            | 0..1  | Reference(Patient | Group) |

#### Health Plan Mapping Assistance

A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [PDex MedicationDispence profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense.html). This is shown below as an assistance  to implementers:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor             | FHIR Profile              | Profile Field                                                          | ValueSet                                                | Notes                          |
|------|-------------------|------------------|-----------------------------|---------------------------|------------------------------------------------------------------------|---------------------------------------------------------|--------------------------------|
| 1.3  | Member            | [BENE_ID](https://bluebutton.cms.gov/resources/variables/bene_id)          | Patientid                   | MedicationDispense        | .subject                                                               |                                                         | Reference(Patient)             |
| 1.1  | Claim-Pharmacy    |  N/A                | Days supply                 | MedicationDispense        | .daysSupply                                                            |                                                         |                                |
| 2.1  | Claim-Pharmacy    |  N/A                | RX service reference number | MedicationDispense        | .identifier                                                            |                                                         |                                |
| 4.1  | Claim-Pharmacy    |   N/A               | Refill number               | MedicationDispense        | .type                                                                  | http://hl7.org/fhir/R4/v3/ActPharmacySupplyType/vs.html | Calculate First Fill or Refill |
| 7.1  | Claim-Line        |  N/A                | Number of units             | MedicationDispense        |                                                                        |                                                         |                                |
| 9.1  | Claim-Line        |  N/A                | National drug code          | MedicationDispense        | .medication.medcationCodeeableConcept                                  |                                                         | SNOMED CT Code                 |
| 10.1 | Claim-Line        |  N/A                | Compound code               | MedicationDispense        | .medication.medcationReference(Medication)                             |                                                         |                                |
| 11.1 | Claim-Line        |  N/A                | Quantity dispensed          | MedicationDispense        | .quantity                                                              |                                                         |                                |
| 12.1 | Claim-Line        |  N/A                | Quantity qualifier code     | MedicationDispense        | .category                                                              |                                                         |                                |
| 5.1  | Claim-Pharmacy    |  N/A                | Prescription origin code    | US Core MedicationRequest | .authorizingPrescription.Reference(MedicationRequest).identifier.value |                                                         |                                |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### Example MedicationDispense Resource

An example mapping of a MedicationDispense resource is shown here for a Dispense for Over the Counter medication - Tylenol PM (NDC code) - on hold with as needed dosage with a condition, a dose Range and an Event History:




[Next Page - US Core MedicationRequest](USCoreMedicationRequest.html)