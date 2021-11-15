
{% include style_insert_table_blue.html %}

## STU 2.0.0

The following changes were applied in the Proposed STU 2.0.0 update:

| JIRA Ticket | Change          |
|------------|-----------------|
| [FHIR-33382](https://jira.hl7.org/browse/FHIR-33382) | Change references to US Core to link to the current 4.0.0 version. |
|[FHIR-33217](https://jira.hl7.org/browse/FHIR-33217)| Add an [PDex Prior Authorization profile](StructureDefinition-pdex-priorauthorization.html), based on the EOB resource to support the exchange of Prior Authorization information with Members.  Added Slices to item adjudication and added consumedunits slice |

## STU Update 1.1.0
The following changes were applied in the STU 1.1.0 update:

| JIRA Ticket | Change         |
|------------|-----------------|
|[FHIR-33141](https://jira.hl7.org/browse/FHIR-33141)|Revert [PDex Provenance](StructureDefinition-pdex-provenance.html) Recorded definition to the US Core Provenance version |
|[FHIR-33173](https://jira.hl7.org/browse/FHIR-33173)|Add clarification to use of [$everything operation](PDexImplementationActorsInteractionsDataPayloadsandMethods.html#patient-everything-via-alternate-secure-transport)|
|[FHIR-33216](https://jira.hl7.org/browse/FHIR-33216)|Add guidance for use of Consent resource in [$member-match operation](PayerToPayerExchange.html#operation-member-match-on-patient)|
