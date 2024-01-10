[Previous Page - Payer-to-Payer Exchange (single member)](payertopayerexchange.html)

When requested by a Health Plan member, the Exchange of clinical data, as scoped by USCDI version 1 and represented in FHIR by US Core 3.1.1, is a requirement of the Advancing Interoperability and Prior Authorization Rule. The rule requires Payers to support the bulk exchange of data for multiple members.

The PDex Payer-to-Payer FHIR-based bulk data exchange in this section of the IG will support the exchange of data for multiple members.

Bulk Payer-to-Payer exchange **SHALL** be accomplished by the use of the Bulk FHIR API specification. 

The Advancing Interoperability and Prior Authorization Rule requires that the Member consent to the retrieval of their data from the previous health plan.

### Performing a Bulk Exchange of Data

Since Payer-to-Pyer Exchange is an "opt-in" choice for Members it is necessary for the requesting (or New) health plan to request permission (i.e., consent) from the Member to retrieve the data from their prior plan. As per the process for a single member exchange ([Payer-to-Payer (single Member)](payertopayerexchange.html)), the following data should be exchanged with the prior plan for each Member who provides consent:

- Patient Demographics
- Prior Coverage
- (optional) Current, or future, coverage provided by the Requesting Plan
- Consent Record

The Bulk Exchange will be based upon the workflows identified in the Payer-to-Payer (Single Member) exchange. The variations to support bulk exchange are documented in this section of the IG.

The requesting Payer will have obtained an access token in accordance with the [SMART Backend Services Authorization](http://hl7.org/fhir/uv/bulkdata/2021May/authorization.html) process, as documented in the [FHIR Bulk Data Access IG (1.1.0 STU2)](http://hl7.org/fhir/uv/bulkdata/2021May/index.html). 

The bulk Payer-to-Payer exchange is started by supplying a Parameter bundle to the [$bulk-member-match operation](OperationDefinition-bulk-member-match.html). A set of OAuth2.0/SMART-on-FHIR Client Credentials **SHALL** be required to access the secured $bulk-member-match operation endpoint.

For each member submitted to the $bulk-member-match operation the following parameters will be supplied as a **parameter.part** element in the [$multi-member-match-bundle-in](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html) parameter bundle. 

- MemberPatient: - [HRex Patient demographics](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-patient-demographics.html)
- CoverageToMatch - details of the prior health plan coverage, supplied by the member, typically from the health plan coverage card. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)
- CoverageToLink - Optional parameter. Details of new or prospective health plan coverage, provided by the health plan based upon the member’s enrolment. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)
- Consent - Record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in. Uses the [PDex Consent Profile](StructureDefinition-pdex-consent.html)

An example request bundle can be found here: [PDex $multi-member-match request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)

### Bulk Member Match with Consent

The Bulk Member Match Operation will use the following Parameters:

- In: [PDexMultiMemberMatchRequestParameterBundle](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)
- Out: [PDexMultiMemberMatchResponseParameters](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.html)

The Response Profile provides a Group identifier that can be used by the requesting payer to retrieve data.

The Operation Definition for Bulk Member Match is:

[PDex Bulk Member Match](OperationDefinition-bulk-member-match.html)




NOTES:
- Define Profile for P2P Bulk Exchange Group List
- Define Export Operation that will check Consent (Scope and period)
- Re-define Operation Outcome to report on Failed Matches and Failed Consent capability.
- Should Payer 2 be able to search and retrieve Group/{ID} record?
- Define $pdex-p2p-export operation

<div style="height=auto;width=90%;">
{% include bulk-p2p-exchange.svg %}
</div>


[Next Page - Data Mapping](datamapping.html)
