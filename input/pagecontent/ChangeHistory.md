
{% include style_insert_table_blue.html %}

### STU 2.0.0-ballot:Ballot Reconciliation

| JIRA Ticket | Change          |
|------------|------------------|
| [FHIR-37366](https://jira.hl7.org/browse/FHIR-37366) | Vital Signs not referenced in Capability Statement |
| [FHIR-36603](https://jira.hl7.org/browse/FHIR-36603) | Note that CPCDS is external and informative |
| [FHIR-36580](https://jira.hl7.org/browse/FHIR-36580) | Update references to HRex to published 1.0.0 version |
| [FHIR-36575](https://jira.hl7.org/browse/FHIR-36575) | Make the CapabilityStatement rendering more reader friendly |
| [FHIR-36573](https://jira.hl7.org/browse/FHIR-36573) | Correction: Added pages to drop-down menu |
| [FHIR-36569](https://jira.hl7.org/browse/FHIR-36569) | Create a Change Notes or History page |
| [FHIR-36564](https://jira.hl7.org/browse/FHIR-36564) | Add clarifying markup for CPCDS mapping tables | 
| [FHIR-36562](https://jira.hl7.org/browse/FHIR-36562) | Add CARIN Acronym on first use |
| [FHIR-36237](https://jira.hl7.org/browse/FHIR-36237) | Sending Duplicative Data |
| [FHIR-36080](https://jira.hl7.org/browse/FHIR-36080) | link to published FHIR v4.0.1 |
| [FHIR-36079](https://jira.hl7.org/browse/FHIR-36079) | removed double link to ChangeHistory |


## STU 2.0.0

The following changes were applied in the Proposed STU 2.0.0 update:

| JIRA Ticket | Change          |
|------------|------------------|
| [FHIR-36026](https://jira.hl7.org/browse/FHIR-36026) | Multiple Technical Corrections |
| [FHIR-35868](https://jira.hl7.org/browse/FHIR-35868) | Revert US Core References back to 3.1.1 |
| [FHIR-34308](https://jira.hl7.org/browse/FHIR-34308) | Update US Core and PDex inter-relationship diagram to add Prior Auth in Overview page. |
| [FHIR-33382](https://jira.hl7.org/browse/FHIR-33382) | Change references to US Core to link to the current 4.0.0 version. Reverted - see [FHIR-35868](https://jira.hl7.org/browse/FHIR-35868) above. |
| [FHIR-33218](https://jira.hl7.org/browse/FHIR-33218) | Update Payer-to-Payer Exchange section to clarify use of Bulk FHIR protocols for retrieval of data for a single patient/member only. The flow has been subject to substantial assessment at multiple connectathons and test events. |
|[FHIR-33217](https://jira.hl7.org/browse/FHIR-33217)| Add a [PDex Prior Authorization profile](StructureDefinition-pdex-priorauthorization.html), based on the EOB resource to support the exchange of Prior Authorization information with Members.  Added Slices to item adjudication and added consumedunits slice |
|[FHIR-33141](https://jira.hl7.org/browse/FHIR-33141)|Revert [PDex Provenance](StructureDefinition-pdex-provenance.html) Recorded definition to the US Core Provenance version |
|[FHIR-33173](https://jira.hl7.org/browse/FHIR-33173)|Add clarification to use of $everything operation - superceded by updates to [Payer-to-Payer exchange](PayerToPayerExchange.html)|
|[FHIR-33216](https://jira.hl7.org/browse/FHIR-33216)|Add guidance for use of Consent resource in $member-match operation - superceded by updated to [Payer-to-Payer exchange](PayerToPayerExchange.html)|
| [FHIR-33713](https://jira.hl7.org/browse/FHIR-33713)| Add [Provenance custodian](Provenance-1000101.html) record for receipt of member data from prior payer|
