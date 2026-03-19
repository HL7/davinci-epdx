# PDex MedicationDispense - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **PDex MedicationDispense**

## PDex MedicationDispense

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Medication](USCoreMedication.md)

§pdex-02: The [Da Vinci PDex MedicationDispense profile](StructureDefinition-pdex-medicationdispense.md) **SHALL** be used to record a member's prescription drug claims when sharing data using § the [US Core 3.1.1 Implementation Guide](http://hl7.org/fhir/us/core/3.1.1). When using the [US Core 6.1.0 Implementation Guide](http://hl7.org/fhir/us/core/STU6.1) §pdex-03: to exchange data the [US Core MedicationDispense profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationdispense.html) **SHOULD** be used. §

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [Da Vinci PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.md) profile are:

| | | | |
| :--- | :--- | :--- | :--- |
| MedicationDispense.status | status | 1..1 | code |
| MedicationDispense.medication[x] | medication[x] | 1..1 |   |
| MedicationDispense.subject | subject | 1..1 | Reference(US Core Patient ) |
| MedicationDispense.performer.actor | actor | 1..1 | Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson) |
| MedicationDispense.substitution.wasSubstituted | wasSubstituted | 1..1 | boolean |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Health Plan Mapping Assistance

A collaboration of Health Plan experts has performed an evaluation of claims information and developed a mapping of data for Members to the [PDex MedicationDispense profile](StructureDefinition-pdex-medicationdispense.md). This is shown below as an assistance to implementers:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - MedicationDispense.meta.lastUpdated |   | 0..1 | ExplanationOfBenefit.meta.lastUpdated | [{"163":"EOB Last Updated Date"}] |
| MedicationDispense.identifier |   | 0..* | ExplanationOfBenefit.Identifier | [{"35":"RX service reference number"}]. Note: Assign Payer System URI for Unique Claim Id in MedicationDispense.identifier.system. SetClaim Id in MedicationDispense.identifier.value |
| MedicationDispense.status | S | 1..1 | ExplanationOfBenefit.status | [{"140":"Claim processing status code"}] Note: Default to "completed" |
| MedicationDispense.medication[x] |   | 1..1 |   | . Note: Enter prescription information in sub-elements below |
| - MedicationDispense.medicationReference |   |   | ExplanationOfBenefit.supportingInfo.code, ExplanationOfBenefit.detail.productOrService | [{"79":"NCPDP field # 408-D8 (Dispensed As Written (DAW)/Product Selection Code) https://ushik.ahrq.gov/ViewItemDetails?itemKey=200387000&system=sdo"}, {"38, 78":"National drug codeCompound Code"}] |
| MedicationDispense.subject | S | 1..1 | ExplanationOfBenefit.patient | [{"Ref (1), Ref (109)":"Member id, Patient account number"}, {"Ref (191)":"Unique Member ID"}, {"Ref (110)":"Medical record number"}] |
| - MedicationDispense.performer.function |   | 0..1 | ExplanationOfBenefit.careTeam.role | [{"165":"Care Team Role (Value pcp|Prescribing)"}] |
| - MedicationDispense.performer.actor |   | 1..1 | ExplanationOfBenefit.careTeam.provider | [{"Ref(96,122)":"Provider NPIs"}, {"Ref(169,172)":"Provider Names"}, {"94, 167":"Claum billing provider NPI, Claim billing provider name"}] |
| MedicationDispense.quantity |   | 0..1 | ExplanationOfBenefit.item.quantity | [{""39,151"":"Quantity dispensed | Quantity Qualifier Code"}] |
| MedicationDispense.daysSupply |   | 0..1 | ExplanationOfBenefit.supportingInfo.valueQuantity | [{"77":"Days supply"}] |
| MedicationDispense.whenHandedOver |   | 0..1 | ExplanationOfBenefit.item.servicedDate | [{"90":"Service (from) date"}] |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example MedicationDispense Resource

An example mapping of a MedicationDispense resource is shown here for a dispense for Over-The-Counter medication - Tylenol PM (NDC code) - on hold with as needed dosage with a condition, a dose Range and an Event History:

[MedicationDispense Example](MedicationDispense-1000001.md)

[Next Page - US Core MedicationRequest](USCoreMedicationRequest.md)

