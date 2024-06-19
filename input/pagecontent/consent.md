[Previous Page - US Core Condition](USCoreCondition.html)

Consent is used in two places in this Implementation Guide:

1. [Payer-to-Payer Member Match](payertopayerbulkexchange.html)
2. [Provider Access API Member Opt-out](provider-access-api.html#member-opt-out)

### Payer-to-Payer Member Match

In Payer-to-Payer Member Match the requesting payer will include a [HRex Consent]({{hrex}}/StructureDefinition-hrex-consent.html) record.
The record records the Member's agreement to allow the requesting Payer to retrieve data from the member's old health plan and identifies
the scope of the data to be retrieved: all data, or only Non-Sensitive data.

### Provider Access Opt-out

The CMS Prior Authorization Rule (CMS-0057) requires that a health plan enables a member to choose to opt-out of sharing their data with providers via the [Provider Access API](provider-access-api.html). By default a member is opted-in to 
data sharing with Providers that have an existing, or impending treatment relationship. This implementation Guide 
provides a [Consent profile](StructureDefinition-pdex-provider-consent.html)
that expresses a Member's decision to opt-out, i.e., Deny sharing of their data, A Member can also revoke that denial.

While it is expected that health plans **MAY** implement their own processes and communication methods to track and act upon a member opting out of Provider Access AI data sharing, the following profile is provided as an example of a Consent resource that could be used to express a member opt-out. This **MAY** be used by a member portal, or consumer app to communicate an opt-out from Provider Access sharing.

[PDex Provider Consent Profile](StructureDefinition-pdex-provider-consent.html).

Example Member Opt-out: [PDex Provider Access API Opt-out](Consent-no-consent-1.html).


[Next Page - Coverage](coverage.html)
