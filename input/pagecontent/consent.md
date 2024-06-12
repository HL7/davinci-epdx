[Previous Page - US Core Condition](USCoreCondition.html)

Consent is used in two places in this Implementation Guide:

1. [Payer-to-Payer Member Match](payertopayerbulkexchange.html)
2. [Provider Access API Member Opt-out](provider-access-api.html#member-opt-out)

### Payer-to-Payer Member Match

In Payer-to-Payer Member Match the requesting payer will include a [HRex Consent]({{hrex}}/StructureDefinition-hrex-consent.html) record.
The record records the Member's agreement to allow the requesting Payer to retrieve data from the member's old health plan and identifies
the scope of the data to be retrieved: all data, or only Non-Sensitive data.

### Provider Access Opt-out

The CMS Prior Authorization Rule (CMS-0057) requires that a health plan enables a member to choose to opt-out of sharing their data
with providers via the [Provider Access API](provider-access-api.html). By default a member is opted-in to data sharing with Providers 
that have an existing, or impending treatment relationship. This implementation Guide provides a [Consent profile](StructureDefinition-pdex-provider-consent.html)
that expresses a Member's decision to opt-out, i.e., Deny sharing of their data, A Member can also revoke that denial.

[PDex Provider Consent Profile](StructureDefinition-pdex-provider-consent.html)



[Next Page - Coverage](coverage.html)
