# Payer-to-Payer Exchange (bulk) - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* **Payer-to-Payer Exchange (bulk)**

## Payer-to-Payer Exchange (bulk)

| |
| :--- |
| *Page standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - Payer-to-Payer Exchange (single member)](payertopayerexchange.md)

***Payer-to-Payer API bulk data guidance in this version of the IG is draft only. It has not appeared in ballot but has been tested at multiple Connectathons. This has been incorporated to meet the requirements of the CMS Prior Authorization Rule (CMS-0057)***

When requested by a Health Plan member, the Exchange of clinical data, as scoped by USCDI version 1 or version 3 and represented in FHIR by US Core 3.1.1 or 6.1.0, is a requirement of the Advancing Interoperability and Prior Authorization Rule (CMS-0057) published in February 2024. The rule requires Payers to support the bulk exchange of data for multiple members.

The PDex Payer-to-Payer FHIR-based bulk data exchange in this section of the IG supports the exchange of data for a single member, or multiple members.

§pdex-129: Bulk Payer-to-Payer exchange **SHALL** be accomplished using the asynchronous bulk-data delivery semantics defined in the [HL7 FHIR Bulk Data Access Implementation Guide STU2 (2.0.0)](http://hl7.org/fhir/uv/bulkdata/STU2/) — that is, operation kick-off via HTTP POST, status polling per the [FHIR R4 Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html), and a completion manifest referencing one or more NDJSON output files. § The two operations used in this section — the PDex [`$multi-member-match`](OperationDefinition-BulkMemberMatch.md) operation and the Da Vinci [`$davinci-data-export`](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) operation — both follow this async delivery pattern. This section does **not** require implementers to additionally support the generic `$export` operation defined by the Bulk Data Access IG; implementations that already expose `$export` for other purposes are not affected by this requirement.

The Advancing Interoperability and Prior Authorization Final Rule requires that the Member consent to the retrieval of their data from their prior health plan.

Under the Advancing Interoperability and Prior Authorization Final Rule (CMS-0057), [42 CFR 422.121(b)(4)(ii)](https://www.ecfr.gov/current/title-42/part-422/section-422.121#p-422.121(b)(4)) constrains the **requesting** health plan's obligation: the requestor must request all of the in-scope data with a date of service within 5 years before the request. The rule does **not** prohibit a requestor from asking for older data, and it does **not** require a responder to cap returned data at 5 years. §pdex-130: Accordingly, a requesting health plan **SHALL** request data covering at least the 5-year window before the date of the request, and a responding health plan **SHALL** be capable of returning at least the past 5 years of in-scope data so that requestors can meet that obligation. A requestor **MAY** request, and a responder **MAY** return, data with a date of service older than 5 years. § §pdex-131: Prior Authorizations **SHALL** be limited to current/active Prior Authorizations in addition to Prior Authorizations that have changed status within the last year, as of the date of request for information. §

Status changes of Prior Authorizations will be determined by the Prior Authorization Processor. This IG is representing the change in status. For example, a Prior Authorization may be denied, but then approved upon appeal. A prior Authorization might be pended and then subsequently approved or denied.

If the Prior Authorization Processor changes the status of a Prior Authorization, the date of the status change is recorded by the payer.

§pdex-132: In both the Provider Access API and the Payer-to-Payer API, any Prior Authorization whose status has changed in the previous 12 months (measured from the date of the request) **SHALL** be included in the API response. § This reinforces the status-change portion of §pdex-131 by stating it as a response-content requirement on the API; current/active Prior Authorizations are included per §pdex-131.

Per the Advancing Interoperability and Prior Authorization Final Rule (CMS-0057), [42 CFR 422.121(b)(4)(ii)(B)](https://www.ecfr.gov/current/title-42/part-422/section-422.121#p-422.121(b)(4)(ii)(B)) requires the exchange of "active and pending prior authorization decisions and **related clinical documentation and forms** for items and services". The IG aligns with that language: §pdex-133: Active and pending Prior Authorizations exchanged via the Payer-to-Payer Exchange API **SHALL** include the related clinical documentation and forms used in support of the prior authorization decision. § §pdex-134: The supporting documentation **SHALL** include both structured and unstructured documentation — for example, clinical notes, lab reports, imaging interpretations, signed administrative forms, and other attachments — that was used in the prior authorization determination. § (See the [PDex Prior Authorization profile narrative](StructureDefinition-pdex-priorauthorization.md) for the recommended pattern for linking a Prior Authorization record to its supporting documentation via `ExplanationOfBenefit.supportingInfo` and a `DocumentReference`.)

§pdex-135: The data available to be returned by the Bulk Payer-to-Payer Exchange API **SHALL** § include the following types of data:

* [US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) or [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1) Clinical Data with additional PDex defined Profiles.
* Claims and Encounters, with financial data excluded as defined by Non-Financial ExplanationOfBenefit profiles defined in the
* [Prior Authorizations](StructureDefinition-pdex-priorauthorization.md) and the related clinical documentation and forms (structured and unstructured) used in support of the prior authorization decision, per [42 CFR 422.121(b)(4)(ii)(B)](https://www.ecfr.gov/current/title-42/part-422/section-422.121#p-422.121(b)(4)(ii)(B)) and as described above.
* [CARIN Consumer Directed Payer Data Exchange IG Non-Financial (Basis) Profiles ](http://hl7.org/fhir/us/carin-bb/STU2.2), as detailed below.

The CMS Prior Authorization Rule (CMS-0057) requires Claims and Encounter data to be exchanged with Providers and Payers via the respective Provider Access API and Payer-to-Payer APIs, defined in this IG. The Rule requires that a non-financial view of those claims and encounters are provided. This IG utilizes the work of the [CARIN Consumer Directed Payer Data Exchange IG](http://hl7.org/fhir/us/carin-bb/STU2.2) which defines the following non-financial profiles:

* [Inpatient Institutional Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-Basis.html)
* [Outpatient Institutional Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-Basis.html)
* [Professional NonClinician Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-Basis.html)
* [Oral Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral-Basis.html)
* [Pharmacy Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-Basis.html)

### Performing Bulk Data Exchange

The Payer-to-Payer bulk data exchange consists of two sequential asynchronous operations:

1. **[$bulk-member-match](OperationDefinition-BulkMemberMatch.md)**: The requesting payer submits member demographics and consent for one or more members. §pdex-136: This operation**SHALL**run asynchronously and upon completion returns Group resources categorizing members as matched, non-matched, or consent-constrained. § The Group Id for matched members is used in the next step.
1. **[$davinci-data-export](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html)**: Using the matched members Group Id, the requesting payer initiates a bulk data export. This also runs asynchronously and upon completion returns a manifest of NDJSON files containing the member health data.

§pdex-137: Both operations follow the [FHIR Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html): each kick-off request returns an HTTP 202 Accepted response with a `Content-Location` header pointing to a status endpoint that clients **SHALL** poll to retrieve the completed result. §

The R4 asynchronous request pattern was designed for bulk data export and delivers results as a JSON manifest pointing to NDJSON files. For an operation like $bulk-member-match that returns a bounded set of Group resources, this requires wrapping those resources in NDJSON files — an artificial fit. FHIR R5 introduced an
[async-bundle pattern](https://hl7.org/fhir/R5/async-bundle.html)that is a more natural match: upon completion the server returns a FHIR Bundle directly rather than a custom manifest. This IG targets FHIR R4 and adopts the R4 async pattern accordingly. When PDex moves to support FHIR R6, the async interaction pattern for $bulk-member-match will be reconsidered in light of the R6 async specification.

Payer-to-Payer Exchange is an **"opt-in"** choice for Members. §pdex-138: The requesting (or New) health plan **SHALL** request permission (i.e., consent) from the Member to retrieve the data from their prior plan. §

§pdex-139: The Bulk Payer-to-Payer Exchange described in this section and the [Payer-to-Payer (single Member) Exchange](payertopayerexchange.md) **SHALL** exchange the same data set; § the data set is enumerated in §pdex-140 below. The two methods differ in how they move that data (bulk async export vs. per-member synchronous retrieval), not in what is moved.

§pdex-140: The following data **SHALL** be exchanged with § the prior plan for each Member that provides their consent in order for the prior plan to attempt to match the Member:

* [HRex Patient Demographics Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-patient-demographics.html)
* [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-coverage.html)
* [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-consent.html).

§pdex-141: The following information **MAY** be exchanged with the prior plan for a member: §

* (optional) Current, or future, coverage provided by the Requesting Plan

The bulk Exchange workflow is based upon the workflows identified in the Payer-to-Payer (Single Member) exchange. The variations to support bulk exchange are documented in this section of the IG.

§pdex-142: The requesting Payer **SHALL** obtain an access token in accordance with the § [SMART Backend Services Authorization](http://hl7.org/fhir/uv/bulkdata/STU2/) process, as documented in the [FHIR Bulk Data Access IG (2.0.0 STU2)](http://hl7.org/fhir/uv/bulkdata/STU2/).

The bulk Payer-to-Payer exchange is initiated by supplying a Parameter bundle to the [$bulk-member-match operation](OperationDefinition-BulkMemberMatch.md). A set of OAuth2.0/SMART-on-FHIR Client Credentials §pdex-143: **SHALL** be required to access the secured bulk-member-match operation endpoint. §

For each member submitted to the bulk-member-match operation the following parameters §pdex-144: **SHALL** be supplied as a **parameter.part** element in the § [multi-member-match-bundle-in](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.md) parameter bundle.

* MemberPatient: - [HRex Patient demographics](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-patient-demographics.html)
* CoverageToMatch - details of the prior health plan coverage, supplied by the member, typically from the health plan coverage card. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-coverage.html)
* Consent - Record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in. Uses the [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-consent.html)

§pdex-145: Optionally the new health plan **MAY** include the following element in the **parameter.part** § element for a member:

* CoverageToLink - Optional parameter. Details of new or prospective health plan coverage, provided by the health plan based upon the member’s enrolment. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-coverage.html)

An example request bundle can be found here: [PDex $multi-member-match request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.md)

§pdex-146: The PDex [$multi-member-match operation](OperationDefinition-BulkMemberMatch.md) **SHALL** be submitted using a HTTP POST. § §pdex-147: The HTTP Header **SHALL** include: §

```
Prefer: respond-async

```

§pdex-148: The $multi-member-match operation **SHALL** be performed asynchronously, following the [Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html) defined in FHIR R4. § §pdex-149: Implementers **SHALL** follow the guidance provided in the [Bulk Data Status Request section](https://hl7.org/fhir/R4/async.html#3.1.6.4) of the Async Request Pattern.pdex-139a: The subsequent [$davinci-data-export operation](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) **SHALL** also be submitted using a HTTP POST and **SHALL** be performed as an asynchronous Bulk Data export, per the [FHIR Bulk Data Access IG](http://hl7.org/fhir/uv/bulkdata/STU2/). §

### Bulk Member Match with Consent

The Bulk Member Match Operation will use the following Parameters:

* In: [PDexMultiMemberMatchRequestParameterBundle](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.md)
* Out: delivered asynchronously via the async completion manifest. The responder **SHALL** include one or more `Group` ndjson files containing the matched / non-matched / consent-constrained Group resources (the [PDex Member Match Group](StructureDefinition-pdex-member-match-group.md) and [PDex Member No Match Group](StructureDefinition-pdex-member-no-match-group.md) profiles); the responder **MAY** additionally include a `Parameters` ndjson file containing a [PDexMultiMemberMatchResponseParameters](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md)-conformant Parameters resource that wraps the same Group resources as the response envelope used by STU 2.1.0. Including the additional Parameters ndjson file lets a responder support both STU 2.1.0-style requesters (who consume the Parameters envelope) and STU 2.2.0-style requesters (who consume Group ndjson files directly) from a single response.

#### Response shape: up to three categorical Group resources

The response is **not** a single monolithic Group containing every submitted member. Instead, each submitted member is evaluated and assigned to one of three outcome categories, and the response carries up to three Group resources — one per category:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Matched | `MatchedMembers` | [PDexMemberMatchGroup](StructureDefinition-pdex-member-match-group.md) | `1..1` | **Yes**— emitted even if`member[]`is empty, so the matched-Group identifier is always available for the subsequent`$davinci-data-export`step |
| Non-matched | `NonMatchedMembers` | [PDexMemberNoMatchGroup](StructureDefinition-pdex-member-no-match-group.md) | `0..1` | Only when at least one submitted member could not be matched |
| Consent-constrained | `ConsentConstrainedMembers` | [PDexMemberNoMatchGroup](StructureDefinition-pdex-member-no-match-group.md) | `0..1` | Only when at least one matched member is excluded because the data holder cannot comply with the submitted Consent under applicable federal/state regulations |

These Group resources are serialized as separate JSON objects within the ndjson stream(s) referenced by the async completion manifest. **Producers may write each Group's `member[]` references incrementally as members are evaluated**: maintaining at most three open Group buffers (one per category) — there is no end-of-job consolidation step and no need to merge per-member fragments into a single large Group. Memory cost is bounded by the largest single category, not by the total submission size.

##### Backwards-compatible Parameters envelope (optional)

STU 2.1.0 of this IG returned the response Group resources wrapped in a single `Parameters` resource conforming to [PDexMultiMemberMatchResponseParameters](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md). STU 2.2.0 changed the wire format so that the Group resources are emitted directly as ndjson, which fits the FHIR R4 Asynchronous Request Pattern more naturally and avoids a redundant envelope.

§pdex-138a: To ease the transition for requesters that have already implemented the STU 2.1.0 envelope, a STU 2.2.0 responder **MAY** additionally include a `Parameters` ndjson file in the async completion manifest (alongside the Group ndjson files) containing a `PDexMultiMemberMatchResponseParameters`-conformant Parameters resource that wraps the same Group resources. § The manifest's `output[]` entry for that file uses `"type": "Parameters"`. §pdex-138b: When both ndjson formats are present, requesters **SHOULD** prefer the Group ndjson files. § The Parameters envelope is provided strictly as a backwards-compatibility convenience and does not introduce any data not already conveyed by the Group ndjson files.

##### Alignment with $provider-member-match (Provider Access v2)

The async-response delivery format for `$bulk-member-match` is intentionally aligned with the [Provider-Member-Match operation](provider-access-api-v2.md#async-response-delivery-format-aligned-with-bulk-member-match) on the Provider Access API v2 page, so that an implementer who has built one operation can reuse the same delivery code paths for the other. Both operations share the FHIR R4 Asynchronous Request Pattern, the categorical 3-bucket outcome model reconciled under [FHIR-56545](https://jira.hl7.org/browse/FHIR-56545), an `OperationDefinition` without inline out parameters (output via the manifest), and the same response delivery shape described above (Group ndjson required, Parameters ndjson optional — see §pdex-138a / §pdex-138b above). Implementers converging Payer-to-Payer and Provider Access foundations onto a single code path are encouraged to do so; the wire-format alignment here is intended to support that pattern. **Future direction:** the PDex work group is tracking deeper structural convergence between the two operations (for example, having the Provider Access Group profiles inherit from the PDex profiles, or consolidating into a single canonical `$multi-member-match` parameterized by whether a Provider Treatment Attestation is included on input). Such structural alignment is out of scope for this STU update and is recognized as a future-cycle item.

The async completion manifest provides the URLs of the ndjson output files. The Group identifier from `MatchedMembers` is what the requesting/new payer uses in the subsequent `$davinci-data-export` step.

#### Cross-Referencing Match Results with Submitted Members

Each Group member entry in the $bulk-member-match response (matched, non-matched, and consent-constrained) includes a `matchedMember` or `nonMatchedMember` extension that references a contained Patient resource. §pdex-150: The contained Patient resource **SHALL** be the Patient resource submitted by the requester in the MemberBundle input parameter, preserving the original resource `id`, all `identifier` elements, and all demographic elements (`name`, `birthDate`, `gender`, `address`, `telecom`, `communication`, and any other Patient elements supplied by the requester) so that the requester can unambiguously correlate each match result back to the member they submitted. § §pdex-151: Responders **SHALL NOT** modify, abridge, or substitute the submitted Patient resource's `id`, `identifier`, or demographic elements. § Per the [FHIR R4 References specification](http://hl7.org/fhir/R4/references.html#contained), however, contained resources **SHALL NOT** carry `meta.versionId`, `meta.lastUpdated`, or `meta.security`, and **SHALL NOT** themselves contain further nested contained resources. §pdex-151a: Where the submitted Patient resource carries any of those base-FHIR-prohibited elements, the responder **SHALL** remove them when copying the resource into the response Group's `Group.contained[]`, so the contained Patient is base-FHIR-conformant. § Removing only those base-FHIR-prohibited elements is **not** considered a violation of §pdex-151's preservation requirement. §pdex-152: The contained Patient **SHALL** retain the original `id` and all identifiers supplied by the requester so that the requester can unambiguously correlate each match result back to the member they submitted. §

When the same patient is submitted across multiple MemberBundles with different Coverage plans (e.g., an employer plan and a secondary plan), the patient may appear in both MatchedMembers and NonMatchedMembers Groups. §pdex-153: In this case the responder **SHALL** also include the submitted `CoverageToMatch` resource as a contained Coverage in the Group and populate the `matchedCoverage` (or `nonMatchedCoverage`) extension on `member.entity` to reference it. § This allows the requester to distinguish which (patient + coverage) pair each Group member entry corresponds to, and avoids user confusion when results are reviewed.

The Operation Definition for Bulk Member Match is:

[PDex Bulk Member Match](OperationDefinition-BulkMemberMatch.md)

The $bulk-member-match operation follows the [FHIR Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html). The kick-off HTTP POST returns HTTP 202 Accepted with a `Content-Location` header pointing to a status endpoint. When processing is complete, the status endpoint returns a manifest of ndjson file URLs — Group ndjson files containing serialized Group resources ([MatchedMembers](StructureDefinition-pdex-member-match-group.md), [NonMatchedMembers](StructureDefinition-pdex-member-no-match-group.md), and/or ConsentConstrainedMembers) and, optionally per the backwards-compatibility allowance described above, a Parameters ndjson file containing a [PDex Multi-Member Match Response profile](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md)-conformant Parameters envelope. The OperationDefinition does not declare inline out parameters for these Groups because the output is delivered via the async manifest, not in a synchronous HTTP response body — consistent with how $davinci-data-export handles its output.

§pdex-154: The Bulk Member Match Operation **SHALL** evaluate the consent request for each member and determine whether the request for only Non-Sensitive data, as determined by federal and state regulations that apply to the data holder, can be complied with. § §pdex-155: The following decision tree illustrates how the Consent determination **SHALL** be made. §

##### Per-member Consent evaluation

§pdex-154a: Consent evaluation **SHALL** be performed independently for each submitted member. § A Consent failure on one submitted member (for example: an expired Consent, a Consent whose policy does not align with the data holder's segmentation capabilities, or a Consent the data holder cannot otherwise comply with) **SHALL NOT** cause the responder to fail the entire bulk request, and **SHALL NOT** cause other members in the same request to be re-bucketed.

§pdex-154b: For a request containing N submitted members, a member that demographically matches a member in the responding payer's records is placed by the responder according to its per-member Consent state: §

* members that demographically match **and** whose submitted Consent the responder can comply with → **`MatchedMembers`** Group;
* members that demographically match **but** whose submitted Consent the responder cannot comply with (expired, scope mismatch, revocation, or any other consent-compliance failure) → **`ConsentConstrainedMembers`** Group;
* members that do not demographically match the responder's records → **`NonMatchedMembers`** Group.

Worked example: if a request submits three members, all of whom demographically match, and two have valid Consent and one has an expired Consent, the responder returns the two with valid Consent in `MatchedMembers` and the one with expired Consent in `ConsentConstrainedMembers`. The expired-Consent member is **not** placed in `NonMatchedMembers` (it did match), and its presence does **not** prevent the other two matched members from appearing in `MatchedMembers`.

§pdex-154c: A responder **SHALL NOT** include consent-error detail (for example, "Consent expired on 2026-04-15") in the `ConsentConstrainedMembers` Group itself, since the Group conveys the consent-constrained outcome categorically; per-member operational diagnostics **MAY** be returned out-of-band (operator logs, support channels) per the responder's policy. § The same per-member treatment applies to the parallel [`$provider-member-match`](provider-access-api-v2.md#provider-member-match-operation-examples) operation; the privacy-favoring default at §pdex-261a (when applicable) is layered on top of this per-member evaluation rule on the Provider Access side.

§pdex-156: Consent **SHALL** be evaluated at the time of the data request to ensure that the Member § has not contacted their previous payer to override sharing consent.

The consent decision logic is the same for Single Member Match and Bulk Member Match. It is the result of the decision that differs. For Single Member Match Operation, either the Patient information is returned, or an Operation Outcome is generated. In Bulk Member Match a member is assigned to a Matched, Non-Matched or Consent Constrained Group and processing continues until every member has been evaluated. The resulting Group resources are serialized to ndjson and delivered via the async completion manifest — they are not returned in a synchronous HTTP response body.

The consent decision flow for the bulk member match is shown in the following diagram:

### Searching for Matched Groups

A payer may send multiple requests for member matching to another Payer. This can result in multiple Matched Group records being created. The FHIR Group resource supports searching on characteristic. To enable searching the [PDexMemberMatchGroup Profile](StructureDefinition-pdex-member-match-group.md) sets the characteristic element to include the "match" code, the identifier of the requesting payer in (characteristic.valueReference), sets characteristic.exclude to false and characteristic.period.start to the date of the match request.

§pdex-157: Implementers **SHALL** support the `Group` search parameters enumerated in the [PDex Server CapabilityStatement](CapabilityStatement-pdex-server.md) (and its US Core 6.1.0 variant, [pdex-server-6-1](CapabilityStatement-pdex-server-6-1.md)) for the `Group` resource — at minimum `identifier` and `characteristic` — both of which are declared with **SHALL** support expectations there. § The CapabilityStatement is the authoritative source for which search parameters a conformant PDex server must support; the prior wording of "the standard search parameters" was ambiguous between "all 10 base R4 `Group` search parameters" and "the parameters enumerated in this IG's CapabilityStatement". Implementers **MAY** support additional `Group` search parameters from the [base FHIR R4 specification](http://hl7.org/fhir/R4/group.html#search) (`actual`, `characteristic-value`, `code`, `exclude`, `managing-entity`, `member`, `type`, `value`) as appropriate to their environment.

### Da Vinci Data Export Payload

The Payer-to-Payer data export operation is meant to retrieve the information requested by the member when they join a new payer. The payer retrieves their information using Payer-to-Payer exchange. Under the requirements of the CMS Interoperability and Prior Authorization Final Rule (CMS-0057), §pdex-158: the data available through the Payer-to-Payer Bulk API **SHALL** include: §

* US Core Clinical data ([US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) or [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1)), together with any additional PDex-defined profiles applicable to the resource type.
* Claims and Encounters, with financial data excluded, as defined by the Non-Financial ExplanationOfBenefit Basis profiles in the [CARIN Consumer Directed Payer Data Exchange Implementation Guide](http://hl7.org/fhir/us/carin-bb/STU2.2).
* [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md) records — Prior Authorizations and the structured and unstructured administrative and clinical documentation that supports each prior authorization decision. Unstructured documents (for example, images, faxes, or signed forms) **MAY** be encoded and attached to a [DocumentReference](http://hl7.org/fhir/R4/documentreference.html); see the [PDex Prior Authorization profile narrative](StructureDefinition-pdex-priorauthorization.md) for the recommended pattern for linking a Prior Authorization record to its supporting DocumentReferences.

### DaVinci-Data-Export Operation

The [davinci-data-export Operation](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) and the optional parameters are defined in the [Da Vinci Member Attribution (ATR) List Implementation Guide STU2.1](http://hl7.org/fhir/us/davinci-atr/STU2.1).

Requesting/New Payer:

§pdex-159: - **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. § Where {id} is the PDex Member Match Group(s) resulting from the Bulk Member Match Operation. §pdex-160: - **SHALL** be permitted to SEARCH /Group. § §pdex-161: The search function and the bundle contents returned **SHALL** be restricted to the {ids} that are associated with theRequesting/New Payer. § §pdex-162: - **MAY** be associated with more than one PDex Member Match group list. § §pdex-163: - **SHALL** be permitted to GET /Group/{id} for any PDex Member Match Group list they are associated with. § §pdex-164: - **SHALL** be permitted to call $davinci-data-export operation for any /Group/{id} they are associated with. § §pdex-165: - **SHALL** be permitted to retrieve data with a date of service within at least the 5 years before the date of the request for information; a responding health plan **MAY** permit retrieval of older data. §

While the [davinci-data-export-operation](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) §pdex-166: enables granular resource requests the operation **SHOULD** be used with two scenarios: §

* Requesting all data within the previous 5 years for all members in the list.
* Requesting all data for all members in the list since the last request.

The latter option is to enable two scenarios:

* For "run-off" data to be collected for members that have switched plans
* For members with concurrent coverage.

For members with concurrent coverage this will enable data to be requested at least quarterly.

§pdex-167: The Data Export operation **SHALL** check the consent status for each member § at the time of execution. This is necessary to identify members that may have changed their opt-in/opt-out status for sharing with health plans.

§pdex-168: The data that **SHALL** be available via the Payer-to-Payer Bulk API is enumerated above in §pdex-158 (Da Vinci Data Export Payload). §

§pdex-169: Claims and clinical data exchanged to satisfy the requesting plan's obligation under [42 CFR 422.121(b)(4)(ii)](https://www.ecfr.gov/current/title-42/part-422/section-422.121#p-422.121(b)(4)) **SHALL** include records with a date of service within the 5 years before the request; records older than 5 years **MAY** also be returned at the responding health plan's discretion. § §pdex-170: Prior Authorizations **SHALL** be limited to Active/Current Prior Authorizations and § Prior Authorizations that have changed status within the last year, as of the date of the information request.

#### ExportType

This is an optional parameter in the Da Vinci Data Export Operation. §pdex-171: For Payer-to-Payer Bulk Exchange the exportType field **SHALL** have the following value: §

* hl7.fhir.us.davinci-pdex#payertopayer

##### _since

Resources in the Patient Access API can extend back to January 1, 2016. §pdex-172: For Payer-to-Payer Exchange, a responding health plan **SHALL** be capable of returning all in-scope data with a date of service within the 5 years before the request date, in order to support the requesting plan's obligation under [42 CFR 422.121(b)(4)(ii)](https://www.ecfr.gov/current/title-42/part-422/section-422.121#p-422.121(b)(4)). § A responding health plan **MAY** return data with a date of service older than 5 years, and a requesting health plan **MAY** request older data. The 5-year window is a floor on the requestor's obligation, not a cap on either party.

**Note on the meaning of `_since`.** The Bulk Data `_since` parameter filters by `Resource.meta.lastUpdated` — i.e., when the FHIR resource representation was last changed on the source server — **not** by the clinical / service date carried within the resource itself. It is therefore the correct parameter for **incremental** "what is new on the source since the previous export" retrievals, but it is **not** the correct parameter for bounding clinical history by date of service. Resource types that do not record a date of service (for example, AllergyIntolerance, some Conditions) would be filtered correctly by `_since` only by coincidence with their last-updated time.

§pdex-173: The `_since` parameter **SHOULD** be used for resource requests when the full history is not required **and the goal is to retrieve only resources that have been added or updated on the source since a previous export** — i.e., for incremental / "run-off" retrievals. § §pdex-174: It is expected that Payers **MAY** first request data for members without limiting the request using the `_since` parameter. § §pdex-175: Subsequent requests **MAY** then use `_since` to limit data to information that is new on the source. § This is the mechanism by which the new Payer can request "Run-off" data that the prior plan received after the initial enrollment by the member in the new plan.

###### Filtering by date of service — _typeFilter

Where date-of-service-bounded retrieval is needed (for example, to exclude clinical resources whose service date falls outside the §pdex-172 five-year window), implementers **SHOULD** use the FHIR Bulk Data `_typeFilter` parameter with the per-resource date search parameter that maps to the resource's date of service. Examples (non-exhaustive):

* `_typeFilter=Encounter%3Fdate%3Dge{date}` — Encounter by `date`
* `_typeFilter=Procedure%3Fdate%3Dge{date}` — Procedure by `date`
* `_typeFilter=Observation%3Fdate%3Dge{date}` — Observation by `date`
* `_typeFilter=Immunization%3Fdate%3Dge{date}` — Immunization by `date`
* `_typeFilter=Condition%3Fonset-date%3Dge{date}` — Condition by `onset-date`
* `_typeFilter=ExplanationOfBenefit%3Fservice-date%3Dge{date}` — ExplanationOfBenefit by `service-date`

Each `_typeFilter` clause references the date search parameter defined for that resource type in US Core or the base R4 specification; resource types that do not define a date-of-service search parameter (e.g., AllergyIntolerance, some Patient-scoped administrative resources) cannot be filtered this way and should be retrieved without a date-of-service filter (the §pdex-172 boundary is then enforced by the responder server-side based on whatever date concept it considers authoritative for those resource types).

§pdex-176: When the responder enforces the §pdex-172 five-year clinical-history boundary, it does so server-side regardless of any `_since` value supplied by the requester; `_since` is not used as a clinical-history floor and **SHALL NOT** be silently rewritten to enforce the boundary. § Where a requester supplies an out-of-range date-of-service filter via `_typeFilter`, the responder **SHALL** still apply the §pdex-172 boundary on top of the requester's filter (i.e., the effective window is the intersection of the boundary and the requester's filter).

##### _until

§pdex-177: The _until parameter **MAY** be used less frequently. § It is most likely to be used by the Payer to retrieve member data for a specific period. This may be the case where two Payers both share a Member that has concurrent coverage with multiple Payers. For example when requesting data for a particular quarterly period.

##### _type

§pdex-178: The _type parameter **MAY** be used to restrict the resources retrieved by the § Payer. §pdex-179: If this parameter is not used all available resources **SHALL** be returned § by the Payer, subject to the constraints applied by other input parameters.

##### _typeFilter

`_typeFilter` is defined by the [HL7 FHIR Bulk Data Access IG STU2 §3.1.1](https://hl7.org/fhir/uv/bulkdata/STU2/export.html#bulk-data-kick-off-request) and lets a requester narrow the export to a subset of resources within each requested type. Two distinct concerns govern its use here:

§pdex-180: A requesting Payer **MAY** include the `_typeFilter` parameter in a `$davinci-data-export` kick-off request to further restrict the resources retrieved (for example, to only retrieve Observations of a certain type). § §pdex-180a: Server support for `_typeFilter` follows the Bulk Data Access IG — it is **OPTIONAL** for the responding Payer to support `_typeFilter`. § §pdex-180b: Requesting Payers **SHOULD** consult the responding Payer's [CapabilityStatement](CapabilityStatement-pdex-payer-access-server.md) (or out-of-band documentation) to determine whether `_typeFilter` is supported before relying on it. § §pdex-180c: A responding Payer that supports `_typeFilter` **SHALL** filter the exported resources per the supplied search query, as required by the Bulk Data Access IG. § §pdex-180d: A responding Payer that does **not** support `_typeFilter`, or does not support the specific search parameter named in the requester's filter, **SHALL** behave per the Bulk Data Access IG — typically by returning an `OperationOutcome` so the requester can resubmit without the unsupported filter; responders **SHALL NOT** silently ignore an unsupported `_typeFilter` and emit unfiltered data. § Where the requester needs date-of-service filtering and the responder does not support `_typeFilter`, the requester **MAY** apply the date-of-service filter client-side on the returned NDJSON output instead.

§pdex-181: The `_typeFilter` value, when supplied, **SHALL** comprise one or more valid FHIR search queries for the respective resource being filtered. § For date-of-service-bounded retrieval, the recommended filter expressions are listed in [Filtering by date of service — `_typeFilter`](#filtering-by-date-of-service--_typefilter) above.

NOTE: When constructing search queries to incorporate into a `_typeFilter`, Search parameters §pdex-182: supported by the relevant profiles from the PDex, US Core or CARIN Blue Button IGs **SHALL** § be followed.

The overall workflow for Bulk Payer-to-Payer Exchange is shown in the diagram below:

### Access and Refresh Tokens

§pdex-183: Implementers **SHOULD** implement OAuth 2.0 access management in accordance with § the SMART Backend Services Authorization Profile. When SMART Backend Services Authorization is used, Bulk Data Status Request and Bulk Data Output File §pdex-184: Requests with requiresAccessToken=true **SHALL** be protected the same way as § the Bulk Data Kick-off Request, including an access token with scopes that cover all resources being exported. §pdex-185: A server **MAY** additionally restrict Bulk Data § Status Request and Bulk Data Output File Requests by limiting them to the client that originated the export. §pdex-186: Health plans **SHALL** limit the data returned to § only those FHIR resources for which the client is authorized.

§pdex-187: Clients **SHALL** require OAuth client credentials to enable secure access to read § and search the Group resources and perform Bulk export operations. Access Tokens §pdex-188: **SHALL** be required to access the Group resources and the Bulk export operation. § §pdex-189: Access and Refresh Tokens **SHALL** be issued to support the client requesting and § subsequently retrieving the bulk data response to their request.

Registering of a client application or service to perform the bulk Payer-to-Payer §pdex-190: Exchange **SHOULD** be registered in accordance with the approach defined in the § [SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/client-confidential-asymmetric.html#registering-a-client-communicating-public-keys). That IG also encourages the use of the OAuth2.0 Dynamic Client Registration Protocol (DCRP). An alternative approach that is closely aligned with the DCRP protocol is to use the B2B protocols detailed in the [HL7 Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/STU1/) IG.

### Scopes for Operations

[SMART App Launch STU 2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch) defines granular scopes for resources. Following the model proposed in the section on [FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data) the following scopes are proposed to control access to the Bulk-member-match
 and Da Vinci Data Export Operations for Payer-to-Payer bulk exchange:

* `http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch`
* `system.Group.u?code=http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS|match`

The first scope above matches the **canonical URL** of the [PDex Bulk Member Match `OperationDefinition`](OperationDefinition-BulkMemberMatch.md) — `http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch` — verbatim. Earlier drafts of this section presented the scope as `…/bulk-member-match` (lower-case hyphenated), which mismatched the actual canonical URL of the OperationDefinition; the scope above has been corrected so requesters and authorization servers can determine grants by direct URL match.

These would be the scopes to execute the `$bulk-member-match` operation and the `$davinci-data-export` operation for Payer-to-Payer exchange, with the data export being restricted to the Group `id(s)` that the user is authorized to access.

[Next Page - Data Mapping](datamapping.md)

