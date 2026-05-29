# Provider Access API(v2) - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* **Provider Access API(v2)**

## Provider Access API(v2)

| |
| :--- |
| *Page standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - Provider Access API (v1)](provider-access-api.md)

***Scope of this section — what is and isn't prescribed***This Implementation Guide specifies the **Provider Access API contract** — the operations, inputs, outputs, and conformance expectations that allow a Provider Representative and a Payer to interoperate. It does **not** prescribe the payer's internal systems or processes for tracking treatment relationships or member opt-out preferences. A payer **MAY** use any mechanism appropriate to its business — a legacy attribution system, a vendor product, a relational database, an internally maintained service or API, or FHIR resources — to determine whether a member has opted out of Provider Access API data sharing and whether a provider has a treatment relationship with a member. The FHIR Group profiles defined in this section ([Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.html), [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.html)) are provided as **one** valid implementation pattern for payers that wish to manage opt-out and treatment-relationship data using FHIR. They are **not required**. A payer that determines opt-out and treatment relationships via legacy systems or APIs is fully conformant with this IG provided the answers those systems return are honoured by the Provider-Member-Match operation in the same way as the FHIR-based equivalents.

***Provider Access API bulk (v2)***Data guidance in this version of the IG is based on feedback from payers that need to create large Treatment Relationship Lists (TRL) for in-network/contracted practitioners and organizations. This version of the API adds a Provider-Member-Match operation that is built on the Payer-to-Payer Bulk Member Match that has been ballotted and extensively tested at Connectathons. The Provider-Member-Match is provided to support the requirements of the CMS Prior Authorization Rule (CMS-0057) for payers that need to create large group lists that represent treatment relationships between in-network providers and health plan members. All providers and payers are encouraged to adopt the Provider Access (v2) API for efficiency reasons. §pdex-241: The Provider-Member-Match operation **SHOULD** be submitted as a first step. § This is then followed by a call to the davinci-data-export operation. The functionality of the data-export operaiton is unchanged from version 1 of the Provider Access API. The change is the group resource that the export operates against.

This version of the API uses a variation of the Bulk Member Match, from the [Payer-to-Payer Bulk API](payertopayerbulkexchange.md). This is formalized as the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md). The $davinci-data-export operation specified in the original [Provider Access v1](provider-access-api.md) is unchanged. The Provider-member-match notifies the provider of the group to perform the export against.

Providers and Payers are encouraged to support Provider Access (v2). It provides a number of benefits to both Providers and Payers. These benefits include:

* Providers can notify patients of new patients they are treating.
* Provider can submit a member match for members they are planning to treat without retrieving the information for all members that are attributed to them.
* The Provider-member-match enables data exchange to be focused on members who are actively seeking care.
* If providers focus on active patientes, the default list of members to retrieve data for will be smaller than requesting an entire list. This will be easier and more efficient to process for payers.
* Payers can still apply member opt-out checks to the list provided by the provider.
* Payers can apply business rules to determine a current or impending treatment relationship between provider and member.
* Some payers have expressed a desire to provide more granular opt-out. Version 2 of the Provider Access API makes this easier to accomplish.

The bulk data transfer API is based upon published guidance in the Da Vinci Member Attribution (ATR) IG and operates as per the original version of the [Provider Access API](provider-access-api.md).

### When to use Provider Access v1 (Attribution) versus Provider Access v2 (Attestation)

The two versions of the Provider Access API in this IG serve different deployment scenarios. The decision between them is made at the request-construction step — a provider/EHR system chooses which workflow to invoke against a given payer based on the use case driving the request:

| | |
| :--- | :--- |
| **In-network provider supporting the CMS-mandated Provider Access API**(regulated CMS-0057 use case — non-financial Clinical, Prior Authorization, and Claims/Encounter data exchange) | **v2 (Attestation)**— the provider/EHR submits a[Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md)with a[Provider Treatment Attestation](StructureDefinition-provider-treatment-relationship-consent.md)Consent for each member and uses the resulting matched-Group identifier with`$davinci-data-export`. The payer is**expected**to support v2 for this use case. |
| **Provider operating under a Value-Based Care (VBC) contract or risk-based provider program with a payer**, where the payer maintains an attribution list of members assigned to the provider organization | **v1 (Attribution)****may**be used for the data flows that depend on the payer's attribution-list-driven model (in particular when financial / "at-risk" data is exchanged per §pdex-242). v1 remains in this IG to support these deployments. |
| **Provider that is both in-network and under a VBC contract with the same payer** | For the**CMS-0057 Provider Access API obligation specifically — v2 (Attestation)**. The CMS-mandated regulated exchange follows v2 regardless of whether a parallel VBC arrangement also exists. v1 may be used**additionally**to support VBC-specific data flows (for example, exchange of financial data per §pdex-242 for at-risk member services) but does not replace the v2 obligation for the regulated Provider Access exchange. |

§pdex-241a: For the CMS-0057 Provider Access API obligation, payers **SHALL** support the v2 (Attestation) workflow described in the rest of this page, and providers/EHRs supporting in-network access to a payer's CMS-mandated Provider Access API **SHOULD** use the v2 workflow. § §pdex-241b: A provider/EHR that operates under both an in-network arrangement and a VBC contract with the same payer **SHOULD** use v2 (Attestation) for the CMS-mandated Provider Access exchange and **MAY** use v1 (Attribution) for VBC-driven data flows (for example, the financial-data exchanges described under §pdex-242), based on the data-flow's purpose, not on the underlying contractual relationship. § The choice between v1 and v2 is therefore a **per-request, per-purpose** decision rather than a per-payer or per-contract decision.

This section codifies guidance previously discussed informally on PDex work group calls. The recorded conformance levels — including the per-scenario expectations in §pdex-241a / §pdex-241b above — are the normative source for the v1-vs-v2 selection rule; the prose in this section is descriptive and should be read in the context of those §pdex-NNN markers, not as a separate conformance assertion.

## Provider Access API

In December 2022, CMS released the [Advancing Interoperability and Improving Prior Authorization Processes Proposed Rule CMS-0057-P](https://www.cms.gov/newsroom/fact-sheets/advancing-interoperability-and-improving-prior-authorization-processes-proposed-rule-cms-0057-p-fact). This rule was finalized in February 2024.
 One of the requirements of the rule is for Impacted Payers to implement a Provider Access API. This is an API that conforms to the [HL7 FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) but follows the query parameters required by the $davinci-data-export operation defined in the [Da Vinci Member Attribution Implementation Guide](http://hl7.org/fhir/us/davinci-atr/STU2.1). The purpose of the Provider Access API (v2) is to enable Providers to query a Payer API for information about the members of the health plan where they have a current, or upcoming treatment relationship. This version of the API is designed to support health plans that need to create large Treatment Relationship Lists for in-network providers or organizations. The API will enable a provider to ask a Payer "What do you know about my Patients?"

§pdex-242: Although the CMS Prior Authorization Rule (CMS-0057) requires regulated plans to provide a bulk API that releases Clinical, Prior Authorization and Claims and Encounter data (without the financial data), where permitted by regulation or other agreements, the data **MAY** be configured to include financial data (including Allowed and § Paid amounts and other information in the full CARIN Blue Button ExplanationOfBenefit resources) for other use cases, including:

* Value-Based Care contracts and Risk-based Provider Programs where the provider partner organization is “At Risk” for those services.
* Services that occur at a provider partner organization's facility even if those services are not associated with a Value-Based Care contract.
* Situations where the financial information is publicly available.

The Payer Data Exchange Implementation Guide supports the Provider Access API by utilizing the [$Davinci-data-export-operation](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) operation in the [Da Vinci Member Attribution Implementation Guide](http://hl7.org/fhir/us/davinci-atr/STU2.1).

This IG is not overly prescriptive in defining how a health plan determines an existing or impending treatment relationship between members and providers. In version 2 of the Provider Access API we will refer to the lists as Treatment Relationship Lists (TRLs).

Health plans are responsible for establishing the TRL. This is accomplished by applying their own business rules.

This IG recognizes that the healthcare industry is rapidly evolving methods, such as TEFCA, to enable the secure exchange of information between Providers and Payers. Incorporating prescriptive definitions for connecting, registering and authorizing access to the Provider Access API risks complicating the adoption of solutions that will enable secure exchange of data, at scale.

### Key differences from version 1 of Provider Access

§pdex-243: Rather than creating large, dynamic lists of members associated with a provider the health plan **MAY** maintain two types of lists: §

1. Member Opt-Out List
1. Member-Provider TRL

§pdex-244: Whether opt-out and treatment-relationship determinations are tracked using FHIR Group resources or by some other mechanism is at the implementer's discretion. § Payers **MAY** use a legacy application, vendor product, internal API, relational database, or any other appropriate mechanism. To assist implementers whose existing platforms cannot themselves serve as the authoritative reference source for opt-out determinations or treatment-relationship determinations, this IG offers two FHIR-based scaffolding profiles that **MAY** be adopted internally for that purpose:

* [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) — a payer-internal Group profile for tracking members who have opted out of Provider Access API data sharing.
* [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.md) — a payer-internal Group profile for tracking providers with a treatment relationship to a specific member.

These two profiles are intended for **internal use by the implementer** when an existing platform cannot answer the relevant query authoritatively. They are **not** required by the Provider Access API contract; payers using non-FHIR mechanisms remain fully conformant. (The `Member Opt-Out Group` profile is also reused as the wire-format profile for the `ConsentConstrainedMembers` output of the `$provider-member-match` operation — see [How does Provider Access Work?](#how-does-provider-access-work) below — but its primary intent is the internal-tracking pattern described here.)

#### Member Opt-Out List

§pdex-245: A payer **SHALL** be able to determine, at the time a `$provider-member-match` request is processed, whether each candidate member has opted out of Provider Access API data sharing. § The mechanism by which the payer maintains that determination is at the payer's discretion. Payers that elect to track opt-outs internally using FHIR resources **MAY** maintain a Group resource conforming to the [Member Opt-Out Group Profile](StructureDefinition-pdex-member-opt-out.md); §pdex-246: when an opt-out is revoked, the corresponding member entry **SHALL** be removed from whatever opt-out tracking mechanism the payer maintains (for payers using the FHIR Group pattern, that means removing the member's entry from the Group resource). § See the [Member Opt-Out Group Profile](StructureDefinition-pdex-member-opt-out.md) for details on opt-out scope, reasons, and member-specific details that the FHIR pattern supports.

#### Member-Provider TRL

§pdex-247: The Member-Provider TRL **MAY** be determined by referencing a legacy syystem or API. § §pdex-248: Where a payer chooses to use FHIR Group resources to manage the Treatment Relationship the Payer **SHALL** create a Member-Treatment Group conforming to the [Member-Provider Treatment Relationship Group Profile](StructureDefinition-pdex-treatment-relationship.md) that has the member as the "key" to the list (via a characteristic containing the Patient ID). § §pdex-249: The providers **SHALL** be represented as the cohort, or subjects in the list (as group members). § The profile supports detailed treatment relationship information including attestation date, treatment period, and relationship type. §pdex-250: This list **SHALL** then be used during a Provider-Member-Match operation to determine if the provider is permitted to retrieve data about the member. §

§pdex-251: The payer **MAY** apply their own rules for determining a Treatment Relationship. §

### How does Provider Access Work?

§pdex-252: The payer **SHALL** apply opt-out and treatment-relationship determinations during a [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md), using whatever mechanism is appropriate to the payer's environment (legacy system, vendor product, internal API, FHIR Group resources, or any combination). § The Member Opt-Out and Member-Provider Treatment Relationship Group profiles defined in this IG are offered as one optional FHIR-based pattern that payers may adopt internally; they are not required and a payer using non-FHIR mechanisms remains fully conformant.

* The provider submits a bulk member-match request for one or more members using the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md). §pdex-253: - The payer **SHOULD** determine whether the provider is in-network, or has an appropriate contractual relationship. § §pdex-254: - The payer **SHOULD** extract the rendering provider's NPI from the `subject_id` field of the UDAP B2B Authorization Extension Object (`hl7-b2b`) in the access token and verify it against the payer's provider directory before processing the $provider-member-match request. § §pdex-255: - Each member request **SHALL** contain: § 
* Patient demographics conforming to [HRex Patient Demographics](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-patient-demographics.html)
* Health plan coverage information conforming to [HRex Coverage](http://hl7.org/fhir/us/davinci-hrex/1.2.0/StructureDefinition-hrex-coverage.html)
* A treatment relationship attestation from the provider using the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.md) (a Consent resource) §pdex-256: - The CoverageToMatch **SHALL** contain the Member's coverage information. § §pdex-257: - The Treatment attestation **SHALL** be submitted as a Consent resource conforming to the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.md) in each member request. § §pdex-258: - The health plan **SHALL** evaluate the request and determine: §
* If the member has Opted-Out of sharing (by checking the Member Opt-Out List)
* If not opted-out, whether the provider, organization or location is included in the Member-Provider TRL (Treatment Relationship List) for the member
 
* **Privacy default — opt-out status is itself sensitive.** A member who opts out of Provider Access data sharing has, by definition, indicated that they do not want their data disclosed to the requesting provider via this API; the fact of opting out is itself information about that member. §pdex-261a: Where the payer determines that distinguishing 'opted out' from 'not matched' in the response would itself constitute a disclosure the member did not authorize (whether under applicable state privacy law, the member's stated preference, or the payer's privacy policy), the payer **SHOULD** suppress the `ConsentConstrainedMembers` Group and instead include the affected members in the `NonMatchedMembers` Group. § The response is then indistinguishable to the requester between a true no-match and a matched-but-opted-out outcome, protecting opt-out status from disclosure. Payers that determine no such concern applies may continue to return the `ConsentConstrainedMembers` Group, which preserves the type-level distinction for operational use by the requester (no separate conformance is asserted for the non-suppression case beyond the cardinality on the response Parameters profile, which already permits omission).

§pdex-262: - The provider **SHALL** use the Matched Group Id to make subsequent $davinci-data-export operation requests to retrieve data for all, or a subset, of members. § §pdex-263: - Alternatively, the provider **MAY** perform a new Provider-Member-Match operation to receive a new Matched Member Group. § §pdex-264: - The matched group resource **MAY** be a short-lived group. § No specific time limit is defined in this IG. An initial recommendation, subject to implementer feedback, is to make the group valid for 30 days. §pdex-265: - Implementer feedback is sought on whether requests for less than 10 members **SHOULD** be handled as an interactive request, with larger bulk requests being processed as an asynchronous process. §

* Implementer feedback is sought on whether an upper limit on the number of members in a Provider-Member-Match operation should be specified. §pdex-266: - Providers **SHALL** be able to search and retrieve the contents of the Matched Member Group resource. § §pdex-267: - Providers **SHALL** assume that the Matched Group is short-lived and subsequent requests for member data **SHALL** be initiated by performing a member match operation to retrieve an updated Matched Group List. §

The typical use case is expected to be one where an EMR retrieves data from a health plan for one or more providers, or for an organization, using automated service functions. The retrieving system or service, such as an EMR, is presumed to have implemented Role-based access to ensure that only authenticated and authorized personnel, or systems, have access to the retrieved data.

§pdex-268: When a health plan is using FHIR Groups to manage Treatment relationships they **SHOULD** create Member-Provider TRLs using the NPI data for the Rendering Provider. § §pdex-269: Health plans **MAY** choose to include organizations or locations in a Member-Provider TRL. §

### Member Opt-out

§pdex-270: A health plan member **SHALL** be entitled to Opt-Out from their data being shared via the Provider Access API. § §pdex-271: PDex defines a consent profile that **MAY** be used to enable a member to deny sharing via the Provider Access API. § §pdex-272: A member **SHALL** be able to update their preference § to revoke a previous denial. §pdex-273: When a member Opts-Out of sharing, the payer's opt-out tracking mechanism **SHALL** be updated so that subsequent `$provider-member-match` evaluations recognize the opt-out. § For payers that have adopted the FHIR-based scaffolding pattern, that means adding the member's identifier to the [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) resource (the Member Opt-Out Group is a dynamic Group resource); for payers that maintain opt-outs via a legacy system or internal API, the corresponding update is made in that system. §pdex-274: If a member revokes their Opt-Out, the same mechanism **SHALL** be updated to remove the opt-out — i.e., the member's identifier is removed from the Member Opt-Out Group, or the legacy/internal API ceases to report the member as opted out. §

§pdex-275: Health Plans **MAY** implement the [pdex-provider-consent](StructureDefinition-pdex-provider-consent.md) profile to enable a member to express their data-sharing preference for the Provider Access API. § In this context, "implement the pdex-provider-consent" means: (a) accept `Consent.create` requests against the Patient Access API for a `Consent` resource conforming to the [PDex Provider Consent profile](StructureDefinition-pdex-provider-consent.md), and (b) honor the resulting Consent decision when subsequently evaluating the member's opt-out / opt-in status during a `$provider-member-match` request. The strength is **MAY** because, consistent with the [Scope of this section](#) callout at the top of this page, the IG does not prescribe how a payer tracks member opt-out / sharing preferences internally; the FHIR Consent profile is offered as one valid pattern, not as the only mechanism. Payers that capture sharing preferences via legacy systems, internal APIs, or other channels remain fully conformant.

The [PDex Server Capability Statement](CapabilityStatement-pdex-server.md) enables the Consent record to be written to the Patient Access API.

See the [PDex Provider Consent here](StructureDefinition-pdex-provider-consent.md)

### Treatment Relationship Driven Access

The Provider Access API version 2 uses the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md) to determine if a member has opted out of sharing data via the Provider Access API. The Provider Member-Match is then tested against a payer's Treatment Relationship business rules, which are evaluated against the long-lived [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.md) maintained by the payer for governance and audit. Provider attestations are submitted using the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.md). §pdex-276: If a Treatment Relationship is established and the member has not opted out, the member **SHALL** be returned in the matched members response Group, which conforms to the [Provider Member Match Group profile](StructureDefinition-pdex-provider-member-match.md). § The Group Id of that matched response Group is the input the provider uses to request a subsequent `$davinci-data-export` operation. The long-lived Member-Provider Treatment Relationship Group is the authoritative governance record the payer maintains; the matched response Group is the short-lived response artifact returned to the provider for data export.

§pdex-277: Members **SHALL** have the ability to opt-out of data sharing with providers. § How the payer tracks opt-outs internally is at the payer's discretion. Where a payer adopts the IG's FHIR-based scaffolding pattern for opt-out tracking, the [Member Opt-Out Group Profile](StructureDefinition-pdex-member-opt-out.md) supports the following opt-out scopes (the same conceptual scopes apply to non-FHIR mechanisms):

* **Global Opt-Out**: Member has opted out from all data sharing
* **Provider-Specific Opt-Out**: Member has opted out for specific provider(s)
* **Purpose-Specific Opt-Out**: Member has opted out for specific purpose(s)
* **Payer-Specific Opt-Out**: Member has opted out for specific payer(s)
* **Provider Category Opt-Out**: Member has opted out for specific provider category/specialty

Each opt-out can include the member's stated reason (privacy concern, data security concern, unknown use, provider relationship, member choice, or other).

Health plans: §pdex-278: - **MAY** use claims data as a source to identify existing Treatment Relationships. § §pdex-279: - **MAY** utilize their own rules for determining a Treatment Relationship between members and Providers. § §pdex-280: - **MAY** use the [Coverage Requirements Discovery IG's](http://hl7.org/fhir/us/davinci-crd/2.2.1/hooks.html) appointment-book and encounter-start CDS Hooks as a means to determine impending treatment relationships. §

The [Da Vinci Data Export Operation](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) in the [Member Attribution IG](http://hl7.org/fhir/us/davinci-atr/STU2.1) supports the Bulk FHIR API specification. The operation uses a Group resource. For the PDex Provider Access API the following capabilities §pdex-281: **SHOULD** be supported: §

* Get Group record.
* Request all information for members in the Group.
* Request information for a subset of members in the Group.
* Request a limited set of information for a subset of members in the Group.

This combination of requests should cover all provider data requests, such as:

* Send all data for this set of patients that are new to my practice.
* Send new data since I last requested for this set of patients.
* Send just the lab results for this set of patients since this date.

§pdex-282: Access **SHALL** be controlled using client credentials that are compliant with SMART-On-FHIR. § §pdex-283: Access **SHOULD** be restricted to Providers with a contractual relationship with a Payer. §

§pdex-284: The [$davinci-data-export operations](http://hl7.org/fhir/us/davinci-atr/STU2.1/OperationDefinition-davinci-data-export.html) **SHALL** be submitted using a HTTPS POST. § §pdex-285: The HTTPS Header **SHALL** include: §

```
Prefer: respond-async

```

### Treatment Relationships

§pdex-286: The Payer **SHALL** be responsible for managing and maintaining the Treatment Relationship between § Members and Providers. §pdex-287: The payer **SHALL** take account of members that have chosen to Opt-Out of § sharing data with providers. §pdex-288: Those Opted-Out members **SHALL** be included in a Member Opted-Out List. §

The [Da Vinci Member Attribution (ATR) IG](http://hl7.org/fhir/us/davinci-atr/STU2.1) provides transactions to manage the Group resources through Add, change and delete member actions. PDex provides specific Group profiles for Provider Access use cases:

* [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) - for maintaining member opt-out preferences
* [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.md) - for maintaining treatment relationships with detailed attestation information

The [AttributionListStatus extension](http://hl7.org/fhir/us/davinci-atr/STU2.1/StructureDefinition-ext-attributionListStatus.html) can have one of three values:

* draft: Used when building a list and it is not considered ready for use.

### Provider-Member-Match Operation Examples

The [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md) supports providers in matching their patients against a payer's records and establishing treatment relationships for bulk data access.

The Provider-Member-Match operation follows the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) and returns a response containing a manifest with references to the matched member data. The provider uses this manifest to retrieve the Member-Match Response through the bulk data export mechanism.

**Example Request:** The [Provider-Member-Match Request Example](Parameters-provider-member-match-request-001.md) demonstrates a provider submitting multiple patients with demographics, coverage information, and treatment attestations to a payer.

**Example Response:** The [Provider-Member-Match Response Example](Parameters-provider-member-match-response-001.md) demonstrates a payer's response following the FHIR Bulk Data manifest format, containing:

* **MatchedMembers Group**: Patients successfully matched with confirmed treatment relationships (using [Provider Member Match Group](StructureDefinition-pdex-provider-member-match.md) profile)
* **NonMatchedMembers Group**: Patients not found in the payer system, or patients whose treatment attestation could not be verified or does not meet the payer's requirements (using [Provider Member No Match Group](StructureDefinition-pdex-provider-member-no-match.md) profile)
* **ConsentConstrainedMembers Group**: Patients who have opted out of data sharing with providers (using [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) profile)

The provider retrieves the detailed Member-Match Response by polling the status endpoint and retrieving the files referenced in the manifest, consistent with the FHIR Bulk Data API specification.

#### Async response delivery format (aligned with $bulk-member-match)

The async-response delivery format for the Provider-Member-Match operation is intentionally aligned with the [Payer-to-Payer Bulk Member Match operation](payertopayerbulkexchange.md#bulk-member-match-with-consent) so that an implementer who has already built one operation can reuse the same delivery code paths for the other. The two operations share: the FHIR R4 Asynchronous Request Pattern (kick-off via HTTP POST → `Content-Location` status endpoint → completion manifest of ndjson file URLs); the categorical 3-bucket outcome model (Matched / NonMatched / ConsentConstrained) reconciled under [FHIR-56545](https://jira.hl7.org/browse/FHIR-56545); and an `OperationDefinition` that does not declare inline out parameters (output is delivered via the manifest).

§pdex-288a: A responder **SHALL** include one or more `Group` ndjson files in the async completion manifest containing the matched / non-matched / consent-constrained Group resources (per the [Provider Member Match Group](StructureDefinition-pdex-provider-member-match.md), [Provider Member No Match Group](StructureDefinition-pdex-provider-member-no-match.md), and [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) profiles), subject to the privacy default in §pdex-261a. § §pdex-288b: A responder **MAY** additionally include a `Parameters` ndjson file in the manifest (with manifest `output[]` `"type": "Parameters"`) containing a [`ProviderMultiMemberMatchResponseParameters`](StructureDefinition-provider-parameters-multi-member-match-bundle-out.md)-conformant Parameters resource that wraps the same Group resources, mirroring the optional Parameters envelope offered for `$bulk-member-match`. § This is provided to ease the burden on implementers who are converging Payer-to-Payer and Provider Access onto a single response-handling code path; when both ndjson formats are present in the same manifest, requesters **SHOULD** prefer the Group ndjson files. The Parameters envelope is provided strictly as an alignment / convenience option and conveys no data not already present in the Group ndjson files.

> **Future direction.** The PDex work group is tracking convergence between the `$bulk-member-match` and `$provider-member-match` operations as implementers migrate Payer-to-Payer foundations into Provider Access deployments. Future updates to this IG (or to the underlying HRex / Da Vinci shared profiles) may shorten the structural distance between the two — for example by having `ProviderMemberMatchGroup` inherit from `PDexMemberMatchGroup` (and similarly for the no-match Group), or by consolidating the two operations into a single canonical `$multi-member-match` parameterized by whether a Provider Treatment Attestation is included on input. Implementers building one of the two operations today are therefore encouraged to design their delivery and parsing code paths to accommodate both, since the wire-format alignment described in this section is intended to support that pattern.

#### Why the response Group profiles differ from $bulk-member-match

Both `$provider-member-match` and `$bulk-member-match` use the same **3-bucket** outcome model (Matched / NonMatched / ConsentConstrained — reconciled across the two operations under [FHIR-56545](https://jira.hl7.org/browse/FHIR-56545)) and the same async-delivery format described above. They **differ in which Group profiles are bound to each bucket**, particularly for the consent-constrained bucket — implementers migrating one onto the other should be aware:

| | | |
| :--- | :--- | :--- |
| MatchedMembers | [`ProviderMemberMatchGroup`](StructureDefinition-pdex-provider-member-match.md) | [`PDexMemberMatchGroup`](StructureDefinition-pdex-member-match-group.md) |
| NonMatchedMembers | [`ProviderMemberNoMatchGroup`](StructureDefinition-pdex-provider-member-no-match.md) | [`PDexMemberNoMatchGroup`](StructureDefinition-pdex-member-no-match-group.md) |
| ConsentConstrainedMembers | [`MemberOptOut`](StructureDefinition-pdex-member-opt-out.md)— distinct profile from the no-match bucket; subject to the privacy-favoring SHOULD default at §pdex-261a | [`PDexMemberNoMatchGroup`](StructureDefinition-pdex-member-no-match-group.md)— same profile reused for the no-match bucket; the bucket itself remains distinct on the response Parameters profile |

The Provider Access side uses a **distinct profile** (`MemberOptOut`) for the consent-constrained bucket for two reasons: (a) to give the requesting provider a type-level distinction between members the payer could not match and members the payer matched but who have opted out, when the payer chooses to expose that distinction (see §pdex-261a privacy-favoring default), and (b) to reuse the `MemberOptOut` profile that also serves the payer-internal opt-out tracking pattern described under [FHIR-56509](https://jira.hl7.org/browse/FHIR-56509). The Bulk PDex side reuses `PDexMemberNoMatchGroup` for the consent-constrained bucket; the bucket itself is still separately enumerated on the response Parameters profile so requesters can distinguish consent-constrained from no-match outcomes by parameter slice. Aligning the two operations onto a single Group-profile family is recognized as a future-direction item (see the **Future direction** note above and [FHIR-56480](https://jira.hl7.org/browse/FHIR-56480) Level B).

#### $provider-member-match does not emit MemberProviderTreatmentRelationship Groups

A common source of confusion: the **matched-members response Group** returned by `$provider-member-match` conforms to [`ProviderMemberMatchGroup`](StructureDefinition-pdex-provider-member-match.md) — **not** to [`MemberProviderTreatmentRelationship`](StructureDefinition-pdex-treatment-relationship.md). The two profiles are distinct artifacts with different lifecycles:

* **`ProviderMemberMatchGroup`** is the **short-lived response artifact** the operation emits for the requesting provider, used as input to the subsequent `$davinci-data-export` step. It conforms to `pdex-provider-member-match`.
* **`MemberProviderTreatmentRelationship`** is the **long-lived governance artifact** that the payer maintains internally to track member-provider treatment relationships. It conforms to `pdex-treatment-relationship`. It is not emitted by `$provider-member-match`; the operation consults it (or any equivalent payer-internal mechanism, per [§pdex-191 / §pdex-244](#) and [FHIR-56509](https://jira.hl7.org/browse/FHIR-56509)) when evaluating whether a treatment relationship is in place.

When distinguishing instances of these two Group types in storage or query, the discriminator is **`Group.meta.profile`** (the canonical URL of the profile each instance conforms to), not `Group.code`. `Group.code` is bound to the same `PDexMultiMemberMatchResultVS` value set on both profiles for legacy reasons; the profile assertion is the authoritative discriminator.

### Bulk Data Export with Manifest

Once providers receive a Matched Members Group from the Provider-Member-Match operation, they can use it with the $davinci-data-export operation to retrieve bulk member health data.

The bulk data response follows the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) and includes:

* A manifest file with references to ndjson files containing member data
* Proper OAuth2 access token handling
* Compliant response headers and file format

See the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) for detailed information on:

* Manifest file structure
* ndjson format specification
* Security requirements
* Complete workflow from member-match through data retrieval §pdex-289: Prior Authorization Rule (CMS-0057) the data available through the API **SHOULD** include: §
* US Core Clinical data ([US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) or [US Core 6.1](http://hl7.org/fhir/us/core/STU6.1)
* [PDex Prior Authorization Profile](StructureDefinition-pdex-priorauthorization.md)
* [CARIN Consumer Directed Payer Data Exchange IG Non-Financial (Basis) Profiles ](http://hl7.org/fhir/us/carin-bb/STU2.2), as detailed below.

The CMS Prior Authorization Rule (CMS-0057) requires Claims and Encounter data to be exchanged with Providers and Payers via the respective Provider Access API and Payer-to-Payer APIs, defined in this IG. The Rule requires that a non-financial view of those claims and encounters are provided. This IG utilizes the work of the [CARIN Consumer Directed Payer Data Exchange IG](http://hl7.org/fhir/us/carin-bb/STU2.2) which defines the following non-financial profiles:

* [Inpatient Institutional Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-Basis.html)
* [Outpatient Institutional Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-Basis.html)
* [Professional NonClinician Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-Basis.html)
* [Oral Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral-Basis.html)
* [Pharmacy Basis Profile](http://hl7.org/fhir/us/carin-bb/STU2.2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-Basis.html)

### Da Vinci Data Export Operation - PDex Provider Use Case

Provider Representative:

§pdex-290: - **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. § Where {id} is the Matched Member Group created by a preceding Provider Member-Match operation. §pdex-291: - **SHALL** be permitted to GET /Group/{id} for the Matched Member Group list created by the Provider Member-Match operation. § §pdex-292: - **SHALL** be permitted to call $davinci-data-export operation for the /Group/{id} they received in the response to the Provider Member-Match operation. §

The $davinci-data-export operation enables a Provider Representative to perform granular requests for data.

§pdex-293: Data **MAY** be constrained by: §

* Patient subset
* Date range
* Resource Type
* Resource filter (valid search parameters for a resource)

Data available via the API includes:

* Clinical resources (US Core and PDex)
* Prior Authorizations and supporting structured documentation
* Non-Financial claims and encounters (CARIN Blue Button)

§pdex-294: The Data Export operation **SHALL** check the consent status for each member at the time of execution. § This is necessary to identify members that may have changed their opt-out status for sharing with providers.

#### Da Vinci Data Export Parameter Handling

##### patient

§pdex-295: If the patient parameter is not provided data **SHALL** be retrieved for all members § in the Group. §pdex-296: If the patient parameter is provided the operation **SHALL** ignore references § to patients that are invalid, or not a member of the group.

##### exportType

This is an optional parameter in the Da Vinci Data Export Operation. §pdex-297: The exportType parameter **SHALL** have one of the following values: §

* hl7.fhir.us.davinci-pdex#provider-delta
* hl7.fhir.us.davinci-pdex#provider-download
* hl7.fhir.us.davinci-pdex#provider-snapshot

§pdex-298: The hl7.fhir.us.davinci-pdex#provider-delta option **SHALL** be used when the provider is § retrieving new, or updated data that will be stored as part of the patient record. §pdex-299: When using provider-delta the provider client **SHALL** supply the `_since` parameter to scope the request to resources updated since their last retrieval. § The client is responsible for tracking the date/time of their previous requests using an internal audit trail and using that value as the `_since` parameter in subsequent delta requests. The payer server has no obligation to infer a delta cutoff on the client's behalf.

§pdex-300: The hl7.fhir.us.davinci-pdex#provider-download option **SHALL** be used when the provider is § retrieving data that will be stored as part of the patient record.

§pdex-301: The hl7.fhir.us.davinci-pdex#provider-snapshot value **SHOULD** be used when a provider § wants to download data for viewing.

From the Data Provider's perspective the hl7.fhir.us.davinci-pdex#provider-download exportType parameter indicates that the retrieved data will be stored as part of the patient record. §pdex-302: Implementers **SHOULD** maintain an internal audit trail to record which export operations were executed and by which client. §

##### _since

Resources in the Patient Access and Provider Access API can extend back to January 1, 2016. §pdex-303: The _since parameter **SHOULD** be used for resource requests when the full history is not § required. §pdex-304: It is expected that providers **MAY** first request data for members without § limiting the request using the _since parameter. §pdex-305: Subsequent requests **MAY** then use _since § to limit data to information that is new.

##### _until

§pdex-306: The _until parameter **MAY** be used less frequently. § It is most likely to be used with the
 hl7.fhir.us.davinci-pdex#provider-snapshot exportType to retrieve member data for a specific period.

##### _type

§pdex-307: The _type parameter **MAY** be used to restrict the resources retrieved by the Provider. § This enables providers to only retrieve the resource types they are interested in seeing. If this §pdex-308: parameter is not used all available resources **SHALL** be returned by the Payer, subject to § the constraints applied by other input parameters.

##### _typeFilter

§pdex-309: The _typeFilter parameter **MAY** be used to further restrict the resources retrieved by the § Provider. For example, to only retrieve Observations of a certain type. The _typeFilter, if §pdex-310: used, **SHALL** comprise one, or more, valid FHIR search queries for the respective resource § being filtered.

NOTE: When constructing search queries to incorporate into a _typeFilter, Search parameters §pdex-311: supported by the relevant profiles from the PDex, US Core or CARIN Blue Button IGs **SHALL** § be followed.

### Access and Refresh Tokens

§pdex-312: Implementers **SHOULD** implement OAuth 2.0 access management in accordance with the SMART Backend Services § Authorization Profile. When SMART Backend Services Authorization is used, Bulk Data Status Request and Bulk Data §pdex-313: Output File Requests with requiresAccessToken=true **SHALL** be protected the same way the Bulk Data Kick-off Request, § including an access token with scopes that cover all resources being exported. §pdex-314: A server **MAY** § additionally restrict Bulk Data Status Request and Bulk Data Output File Requests by limiting them to the client that originated the export. §pdex-315: Health plans **SHALL** limit the data returned to § only those FHIR resources for which the client is authorized.

§pdex-316: Clients **SHALL** require OAuth client credentials to enable secure access to read and search the Group § resources and perform Bulk export operations. §pdex-317: Access Tokens **SHALL** be required to access the Group § resources and the Bulk export operation. §pdex-318: Access and Refresh Tokens **SHOULD** be issued to support § the client requesting and subsequently retrieving the bulk data response to their request.

Registering of a client application or service to perform the bulk Payer-to-Payer §pdex-319: Exchange **SHOULD** be registered in accordance with the approach defined in the § [SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/client-confidential-asymmetric.html#registering-a-client-communicating-public-keys). That IG also encourages the use of the OAuth2.0 Dynamic Client Registration Protocol (DCRP). An alternative approach that is closely aligned with the DCRP protocol is to use the B2B protocols detailed in the [HL7 Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/STU1/) IG.

§pdex-320: When the protocols detailed in the above UDAP Security IG's [Business to Business](https://hl7.org/fhir/us/udap-security/b2b.html) section are used, the `subject_id` in the B2B Authorization Extension Object (Key Name: `"hl7-b2b"`) **SHOULD** contain the NPI of the rendering provider on whose behalf member data is being requested. § The rendering provider NPI enables the payer to verify the requesting provider's identity and contractual status before issuing an access token.

§pdex-321: For requests covering more than a single rendering provider (e.g., an organization-level request), the `subject_id` **MAY** be the FHIR Id of the Group being requested. § The use of the Group FHIR Id as the `subject_id` is based upon the assumption that health plans have access controls in place to restrict the requestor to only those Group records they are authorized to access.

§pdex-322: The payer **SHOULD** validate the NPI supplied in the `subject_id` against their provider directory to confirm the provider is known, active, and has an in-network or contractual relationship before issuing an access token or processing a `$provider-member-match` request. §

### Scopes for Operations

[SMART App Launch STU 2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch) defines granular scopes for resources. Following the model proposed in the section on [FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data) the following scopes are proposed to control access to the Da Vinci Data Export Operation for Provider Access:

* http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/provider-member-match
*  

| | |
| :--- | :--- |
| system.Group.u?code=http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS | pdexprovidergroup |

 

This would be the scope to execute the **davinci-data-export** operation with it being restricted to the Group **id(s)** that the user is authorized to access.

[Next Page - Payer-to-Payer Exchange (Single Member)](payertopayerexchange.md)

