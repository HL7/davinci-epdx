[Previous Page - US Core Medication](USCoreMedication.html)

The  [Da Vinci PDex MedicationDispense profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense.html)  **SHALL** be used to record a member's prescription drug claims.

{% include style_insert_table_blue.html %}

#### Health Plan Mapping Assistance

A collaboration of Health Plan experts have performed an evaluation of claims information and developed a mapping of  data for Members to the [PDex MedicationDispence profile](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense.html). This is shown below as an assistance  to implementers:

| US Core Element                        | MustSupport | Cardinality | CARIN-BB Element                                  | CPCDS Element Mapping                                                                                                                                                                                     |
|----------------------------------------|-------------|-------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| MedicationDispense.meta.lastUpdated    |             |     0..1    | ExplanationOfBenefit.meta.lastUpdated             | [{"163":"EOB Last Updated Date"}]                                                                                                                                                                         |
| MedicationDispense.identifier          |             |     0..*    | ExplanationOfBenefit.Identifier                   | [{"35":"RX service reference number"}]                                                                                                                                                                    |
| MedicationDispense.status              |      S      |     1..1    | ExplanationOfBenefit.status                       | [{"140":"Claim processing status code<br>"}]                                                                                                                                                              |
| MedicationDispense.medicationReference |             |             | ExplanationOfBenefit.supportingInfo.code          | [{"79":"NCPDP field # 408-D8 (Dispensed As Written (DAW)/Product Selection Code) https://ushik.ahrq.gov/ViewItemDetails?itemKey=200387000&system=sdo"}, {"38, 78":"National drug code<br>Compound Code"}] |
| MedicationDispense.subject             |      S      |     1..1    | ExplanationOfBenefit.patient                      | [{"Ref (1)":"Member id"}                                                                                                                                                                                  |
| MedicationDispense.performer.function  |             |     0..1    | ExplanationOfBenefit.careTeam.role                | [{"165":"Care Team Roile (Value pcpc\|Prescribing)"}]                                                                                                                                                     |
| MedicationDispense.performer.actor     |             |     1..1    | ExplanationOfBenefit.careTeam.provider            | [{"Ref(96,122)":"Provider NPIs"}, {"Ref(169,172)":"Provider Names"}                                                                                                                                       |
| MedicationDispense.quantity            |             |     0..1    | ExplanationOfBenefit.item.quantity                | [{""39,151"":"Quantity dispensed \| Quantity Qualifier Code"}                                                                                                                                             |
| MedicationDispense.daysSupply          |             |     0..1    | ExplanationOfBenefit.supportingInfo.valueQuantity | [{"77":"Days supply"}]                                                                                                                                                                                    |
| MedicationDispense.whenHandedOver      |             |     0..1    | ExplanationOfBenefit.item.servicedDate            | [{"90":"Service (from) date"}]                                                                                                                                                                            |

<i>[Table Definition](index.html#mapping-adjudicated-claims-information-to-clinical-resources)</i>

#### Example MedicationDispense Resource

An example mapping of a MedicationDispense resource is shown here for a Dispense for Over the Counter medication - Tylenol PM (NDC code) - on hold with as needed dosage with a condition, a dose Range and an Event History:

[MedicationDispense Example](MedicationDispense-1000001.html)



[Next Page - US Core MedicationRequest](USCoreMedicationRequest.html)
