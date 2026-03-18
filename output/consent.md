# Consent - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **Consent**

## Consent

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Condition](USCoreCondition.md)

Consent is used in two places in this Implementation Guide:

1. [Payer-to-Payer Member Match](payertopayerbulkexchange.md)
1. [Provider Access API Member Opt-out](provider-access-api.md#member-opt-out)

### Differentiating Consent Resources by API

A member may have multiple active Consent records — one for each CMS-mandated API. To allow systems to locate, update, and evaluate the correct Consent record without relying on actor cross-references or custom extension searches, each PDex Consent profile includes a `category` code from the [PDex Consent API Purpose CodeSystem](CodeSystem-pdex-consent-api-purpose.md) that identifies which API the Consent applies to:

| | | |
| :--- | :--- | :--- |
| Provider Access API | `provider-access` | [PDex Provider Access Consent](StructureDefinition-pdex-provider-consent.md) |
| Payer-to-Payer API | `payer-to-payer` | [HRex Consent](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html)(informative) |
| Patient Access API | `patient-access` | (informative) |

To find the Provider Access Consent record for a member:

```
GET /Consent?patient=[id]&category=provider-access

```

This approach works for global opt-in/opt-out checks at request time without actor cross-referencing. When a member updates their preference, systems can locate the exact record by patient + category, update `provision.type` (deny for opt-out, permit to revoke), and the new period.start marks the effective date of the change.

### Why separate profiles for Payer-to-Payer and Provider Access?

These two uses of Consent have fundamentally different semantics:

* **Payer-to-Payer (HRex Consent)**: Records the member's **authorization** for the requesting payer to retrieve data from their previous plan. The member is actively opting **in** to a data retrieval. The HRex IG owns this profile.
* **Provider Access (PDex Provider Consent)**: Records the member's **restriction** of a default opt-in. By CMS rule, sharing with treating providers is the default; the Consent record is only created when the member chooses to opt **out**. PDex owns this profile.

Different actors, different policy rules, different triggers — separate profiles correctly reflect these distinct consent patterns.

### Payer-to-Payer Member Match

In Payer-to-Payer Member Match the requesting payer will include a [HRex Consent](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html) record. The record records the Member's agreement to allow the requesting Payer to retrieve data from the member's old health plan and identifies the scope of the data to be retrieved: all data, or only Non-Sensitive data.

### Provider Access Opt-out

The CMS Prior Authorization Rule (CMS-0057) requires that a health plan enables a member to choose to opt-out of sharing their data with providers via the [Provider Access API](provider-access-api.md). By default a member is opted-in to data sharing with Providers that have an existing, or impending treatment relationship. This implementation Guide provides a [Consent profile](StructureDefinition-pdex-provider-consent.md) that expresses a Member's decision to opt-out, i.e., Deny sharing of their data. A Member can also revoke that denial.

§pdex-66: While it is expected that health plans **MAY** implement their own processes and communication methods to track and act upon a member opting out of Provider Access API data sharing, the following profile is provided as an example of a Consent resource that could be used to express a member opt-out. § §pdex-67: This **MAY** be used by a member portal, or consumer app to communicate an opt-out from Provider Access sharing. §

[PDex Provider Consent Profile](StructureDefinition-pdex-provider-consent.md).

Example Member Opt-out: [PDex Provider Access API Opt-out](Consent-no-consent-1.md).

[Next Page - Coverage](coverage.md)

