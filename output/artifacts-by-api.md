# Artifacts by API - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* **Artifacts by API**

## Artifacts by API

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - FHIR Artifacts](artifacts.md)

This page is a navigational index that groups the principal FHIR artifacts defined in this Implementation Guide by the API in which they are primarily used. The canonical, complete list of artifacts (with full type-by-type breakdowns of profiles, extensions, value sets, code systems, examples, and so on) remains on the [FHIR Artifacts](artifacts.md) page; this page is provided to help implementers locate the artifacts most relevant to a specific API quickly.

Some artifacts are intentionally cross-cutting (for example, the data-mapping profiles inherited from US Core, the Provenance profile, and shared extensions). They appear under "Cross-cutting" rather than under each API where they apply. A handful of artifacts are referenced from more than one API; in those cases the artifact is listed under its primary API and a back-reference is noted.

The Provider Access API has both a v1 (deprecated) and a v2 (current) form. v2 is the recommended profile for new implementations and is what the rest of this IG describes. v1 artifacts are listed for completeness only.

### Patient Access API (member-authorized exchange to a third-party application)

Server-side conformance:

* [PDex Server CapabilityStatement (US Core 3.1.1)](CapabilityStatement-pdex-server.md) — `pdex-server`
* [PDex Server CapabilityStatement (US Core 6.1.0)](CapabilityStatement-pdex-server-6-1.md) — `pdex-server-6-1`

Profiles representing the Member Health History payload (see also Cross-cutting → Data Mapping below):

* [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.md) — `pdex-priorauthorization` (constrained on `ExplanationOfBenefit`)
* [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.md) — `pdex-medicationdispense`
* [PDex Device](StructureDefinition-pdex-device.md) — `pdex-device`
* [PDex Provider Sharing Consent](StructureDefinition-pdex-provider-consent.md) — `pdex-provider-consent` (member's election to share with providers)

Provenance:

* [PDex Provenance](StructureDefinition-pdex-provenance.md) — `pdex-provenance`

### Provider Access API v2 (current — recommended for new implementations)

Server-side conformance:

* [PDex Provider-Access Server CapabilityStatement](CapabilityStatement-pdex-provider-access-server.md) — `pdex-provider-access-server`

Operation definition:

* [PDex Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.md) — `$provider-member-match`

Request and response Parameters profiles:

* [Provider $multi-member-match Request](StructureDefinition-provider-parameters-multi-member-match-bundle-in.md) — `ProviderMultiMemberMatchRequestParameters`
* [Provider $multi-member-match Response](StructureDefinition-provider-parameters-multi-member-match-bundle-out.md) — `ProviderMultiMemberMatchResponseParameters`

Group profiles used in the response (3-bucket outcome model):

* [Provider Member Match Group](StructureDefinition-pdex-provider-member-match.md) — `ProviderMemberMatchGroup` (bound to `MatchedMembers`)
* [Provider Member No Match Group](StructureDefinition-pdex-provider-member-no-match.md) — `ProviderMemberNoMatchGroup` (bound to `NonMatchedMembers`; covers both unmatched and treatment-attestation-failed cases)
* [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) — `MemberOptOut` (bound to `ConsentConstrainedMembers`; primary use is also as a payer-internal opt-out tracking pattern — see [Provider Access API(v2)](provider-access-api-v2.md))

Provider attestation:

* [Provider Treatment Attestation](StructureDefinition-provider-treatment-relationship-consent.md) — `ProviderTreatmentAttestation` (Consent profile carried in the request)

Payer-internal scaffolding patterns (offered as one valid implementation pattern; not required for IG conformance):

* [Member-Provider Treatment Relationship Group](StructureDefinition-pdex-treatment-relationship.md) — `MemberProviderTreatmentRelationship`
* [Member Opt-Out Group](StructureDefinition-pdex-member-opt-out.md) — `MemberOptOut` (also bound to the API response, above)

### Provider Access API v1 (deprecated — listed for completeness)

* [PDex Provider Group](StructureDefinition-pdex-provider-group.md) — `PDexProviderGroup` (provider attribution Group)

### Payer-to-Payer API — Bulk Exchange

Server-side conformance:

* [PDex Payer-Access Server CapabilityStatement](CapabilityStatement-pdex-payer-access-server.md) — `pdex-payer-access-server`

Operation definition:

* [PDex Bulk Member Match Operation](OperationDefinition-BulkMemberMatch.md) — `$bulk-member-match` (also referred to as `$multi-member-match` in narrative)

Request and response Parameters profiles:

* [PDex $multi-member-match Request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.md) — `PDexMultiMemberMatchRequestParameters`
* [PDex $multi-member-match Response](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.md) — `PDexMultiMemberMatchResponseParameters`

Group profiles used in the response:

* [PDex Member Match Group](StructureDefinition-pdex-member-match-group.md) — `PDexMemberMatchGroup`
* [PDex Member No Match Group](StructureDefinition-pdex-member-no-match-group.md) — `PDexMemberNoMatchGroup`

mTLS discovery (used to locate and authenticate Payer-to-Payer endpoints):

* [mTLS Organization](StructureDefinition-mtls-organization.md) — `MtlsOrganization`
* [mTLS Endpoint](StructureDefinition-mtls-endpoint.md) — `MtlsEndpoint`
* [mTLS Bundle](StructureDefinition-mtls-bundle.md) — `MtlsBundle`

mTLS-related extensions: `AssociatedServers`, `ContactPointAvailableTime`, `DynamicRegistration`, `EndpointAccessControlMechanism`, `EndpointRank`, `EndpointUsecase`, `IdentifierStatus`, `MtlsSignedObject`, `SecureExchangeArtifacts`, `TrustFramework`, `VerificationStatus`.

### Payer-to-Payer API — Member-Authorized Exchange (single member, OAuth2-driven)

Server-side conformance is provided by the same Patient Access CapabilityStatements above (the responder operates as a Patient Access API for the requesting Payer's app).

Operation definition (HRex):

* HRex `$member-match` — referenced from the [HRex IG](http://hl7.org/fhir/us/davinci-hrex/1.2.0/OperationDefinition-member-match.html); this IG does not redefine it.

Profiles used in the request:

* HRex Patient Demographics — referenced from HRex
* HRex Coverage — referenced from HRex
* [PDex Provider Sharing Consent](StructureDefinition-pdex-provider-consent.md) — `pdex-provider-consent` (also used in Patient Access)

### Cross-cutting

Provenance:

* [PDex Provenance](StructureDefinition-pdex-provenance.md) — `pdex-provenance` (used by every API that returns Member Health History data)

Data Mapping (US Core profiles applied to the Member Health History payload — see [Data Mapping](datamapping.md) for the per-resource mapping pages):

* USCore profiles for AllergyIntolerance, CarePlan, CareTeam, Condition, DiagnosticReport, DocumentReference, Encounter, Goal, Immunization, Location, Medication, MedicationDispense (PDex profile), MedicationRequest, Observation (Lab, Smoking Status, Pediatric, Vital Signs), Organization, Patient, Practitioner, PractitionerRole, Procedure, Provenance, RelatedPerson, ServiceRequest, Specimen, etc. (See [Introduction §3.7](introduction.md) for the full STU6.1 / STU7.0 lists.)
* HRex Coverage — referenced from HRex

Extensions used across multiple APIs:

* `WhenAdjudicated`, `ReviewAction`, `ReviewActionCode`, `LevelOfServiceCode`, `PriorAuthorizationUtilization`, `DispenseRefill`, `MembersOptedOut`, `OptOutDetails`, `OptOutReason`, `TreatmentRelationshipDetails`, `MatchCoverage`, `MatchParameters`, `ProvenanceSourceFrom`, `ProviderAccessUseCase`, `FhirIg`.

Code systems and value sets are organized by purpose on the canonical [FHIR Artifacts](artifacts.md) page; the principal ones referenced in this IG include `PdexMultiMemberMatchResultCS` / `PDexMultiMemberMatchResultVS` (multi-member-match outcomes), `PDexIdentifierType` (identifier classifications including `naiccode`, `payerid`), `PriorAuthorizationValueCodes`, `PDexAdjudicationDiscriminator`, and `PDexPayerAdjudicationStatus`.

[Next Page - FHIR Artifacts](artifacts.md)

