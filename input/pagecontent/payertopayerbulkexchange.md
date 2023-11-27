[Previous Page - Payer-to-Payer Exchange (single member)](payertopayerexchange.html)

When requested by a Health Plan member, the Exchange of clinical data, as scoped by USCDI version 1 and represented in FHIR by US Core 3.1.1, is a requirement of the Advancing Interoperability and Prior Authorization Rule. The rule requires Payers to support the bulk exchange of data for multiple members.

The PDex Payer-to-Payer FHIR-based bulk data exchange in this section of the IG will support the exchange of data for multiple members.

Bulk Payer-to-Payer exchange **SHALL** be accomplished by the use of the Bulk FHIR API specification. 

The Advancing Interoperability and Prior Authorization Rule requires that the Member consent to the retrieval of their data from the previous health plan.

### Performing a Bulk Exchange of Data

Since Payer-to-Pyer Exchange is an "opt-in" choice for Members it is necessary for the requesting (or New) health plan to request permission (i.e., consent) from the Member to retrieve the data from their prior plan. As per the process for a single member exchange ([Payer-to-Payer (single Member)](payertopayerexchange.html)), the following data should be exchanged with the prior plan for each Member who provides consent:

- Patient Demographics
- Prior Coverage
- Consent Record

The Bulk Exchange will be based upon the workflows identified in the Payer-to-Payer (Single Member) exchange. The variations to support bulk exchange are documented in this section of the IG.

The requesting Payer will have obtained an access token in accordance with the [SMART Backend Services Authorization](http://hl7.org/fhir/uv/bulkdata/2021May/authorization.html) process, as documented in the [FHIR Bulk Data Access IG (1.1.0 STU2)](http://hl7.org/fhir/uv/bulkdata/2021May/index.html). 

### Bulk Member Match with Consent

The Bulk Member Match Operation will use the [PDex Parameters Multiple Member Match Request Parameter Bundle Profile](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html). The profile defines an exportMode and supports a parameter bundle that matches the Parameter content of the Payer-to-Payer Single Member Exchange Request profile.



NOTES:
- Define Profile for Member-Matched Group.
- Re-define output from Member-Match to enable Patient/{ID} or Group/{ID}
- Define Export Operation that will check Consent (Scope and period)
- Re-define Operation Outcome to report on Failed Matches and Failed Consent capability.
- Should Payer 2 be able to search and retrieve Group/{ID} record?
- Define $pdex-p2p-export operation

<div style="height=auto;width=90%;">
{% include bulk-p2p-exchange.svg %}
</div>


[Next Page - Data Mapping](datamapping.html)
