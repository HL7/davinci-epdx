[Previous Page - Provider Access API (v1)](provider-access-api.html)

<div class="stu-note">

<b><i>Provider Access API bulk (v2)</i></b>

Data guidance in this version of the IG is based on feedback from payers that need to create large Treatment Relationship Lists (TRL) for in-network/contracted practitioners and organizations. 
This version of the API adds a Provider-Member-Match operation that is built on the Payer-to-Payer Bulk Member Match that has been ballotted and extensively tested at Connectathons. 

The Provider-Member-Match is provided to support the requirements of the CMS prior Authorization Rule (CMS-0057) for payers that need to create large group lists that represent treatment relationships between in-network providers and health plan members.

All providers and payers are encouraged to adopt the Provider Access (v2) API for efficiency reasons.

The Provider-Member-Match operation should be submitted as a first step. This is then followed by a call to the davinci-data-export operation. The functionality of the data-export operaiton is unchanged from version 1 of the Provider Access API. The change is the group resource that the export operates against.
</div>

This version of the API uses a variation of the Bulk Member Match, from the [Payer-to-Payer Bulk API](payertopayerbulkexchange.html). This is formalized as the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.html). The $davinci-data-export operation specified in the original [Provider Access v1](provider-access-api.html) is unchanged. The Provider-member-match notifies the provider of the group to perform the export against.

Providers and Payers are encouraged to support Provider Access (v2). It provides a number of benefits to both Providers and Payers. These benefits include:

- Providers can notify patients of new patients they are treating.
- Provider can submit a member match for members they are planning to treat without retrieving the information for all members that are attributed to them.
- The Provider-member-match enables data exchange to be focused on members who are actively seeking care.
- If providers focus on active patientes, the default list of members to retrieve data for will be smaller than requesting an entire list. This will be easier and more efficient to process for payers.
- Payers can still apply member opt-out checks to the list provided by the provider.
- Payers can apply business rules to determine a current or impending treatment relationship between provider and member.
- Some payers have expressed a desire to provide more granular opt-out. Version 2 of the Provider Access API makes this easier to accomplish.

The bulk data transfer API is based upon published guidance in the Da Vinci Member Attribution (ATR) IG and operates as per the original version of the [Provider Access API](provider-access-api.html).

</div>

## Provider Access API

In December 2022, CMS released the [Advancing Interoperability and Improving Prior Authorization Processes Proposed Rule CMS-0057-P](https://www.cms.gov/newsroom/fact-sheets/advancing-interoperability-and-improving-prior-authorization-processes-proposed-rule-cms-0057-p-fact). This rule was finalized in February 2024.  
One of the requirements of the rule is for Impacted Payers to implement a Provider Access API. 
This is an API that conforms to the [HL7 FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) but follows the query parameters required by the $davinci-data-export operation defined in the [Da Vinci Member Attribution Implementation Guide]({{site.data.fhir.ver.atr}}).
The purpose of the Provider Access API (v2) is to enable Providers to query a Payer API for information about the members of the health plan where they have a current, or upcoming treatment relationship. This version of the API is designed to support health plans that need to create large Treatment Relationship Lists for in-network providers or organizations. The API will enable a provider to ask a Payer "What do you know about my Patients?"

§pdex-213: Although the CMS Prior Authorization Rule (CMS-0057) requires regulated plans to provide a bulk API that releases Clinical, Prior Authorization and Claims and Encounter data (without the financial data), where permitted by regulation or other agreements, the data **MAY** be configured to include financial data (including Allowed and §
Paid amounts and other information in the full CARIN Blue Button ExplanationOfBenefit resources) for other use cases, including:
- Value-Based Care contracts and Risk-based Provider Programs where the provider partner organization is “At Risk” for those services.
- Services that occur at a provider partner organization's facility even if those services are not associated with a Value-Based Care contract.
- Situations where the financial information is publicly available.

The Payer Data Exchange Implementation Guide supports the Provider Access API by
utilizing the [$Davinci-data-export-operation]({{site.data.fhir.ver.atr}}/OperationDefinition-davinci-data-export.html) operation in the [Da Vinci Member Attribution Implementation Guide]({{site.data.fhir.ver.atr}}).

This IG is not overly prescriptive in defining how a health plan determines an existing or impending treatment relationship between members and providers. In version 2 of the Provider Access API we will refer to the lists as Treatment Relationship Lists (TRLs).

Health plans are responsible for establishing the TRL. This is accomplished by applying their own business rules.

This IG recognizes that the healthcare industry is rapidly evolving methods, such as TEFCA, to enable the secure exchange of information between Providers and Payers. Incorporating prescriptive definitions for connecting, registering and authorizing access to the Provider Access API risks complicating the adoption of solutions that will enable secure exchange of data, at scale.

### Key differences from version 1 of Provider Access

Rather than creating large, dynamic lists of members associated with a provider the health plan will maintain two lists:

1. Member Opt-Out List
2. Member-Provider TRL

§pdex-214: These lists **MAY** be created using a FHIR Group resource, or implementers **MAY** choose to use a legacy application and API to provide Member Opt-Out decisions or Treatment Relationship determinations. § In this IG we will present Group profiles to support a FHIR-based method of determing Member Opt-out and Member-Provider Treatment Relationships:

- [Member Opt-Out Group](StructureDefinition-member-opt-out-group.html) - contains members who have opted out of data sharing
- [Member-Provider Treatment Relationship Group](StructureDefinition-member-provider-treatment-relationship-group.html) - contains providers with treatment relationships to a specific member 

#### Member Opt-Out List
§pdex-215: The member Opt-out list, if not determined by a response from a legacy system or API, **SHALL** be a Group resource conforming to the [Member Opt-Out Group Profile](StructureDefinition-member-opt-out-group.html) and managed by the Health Plan that **SHALL** contain all members that have chosen to opt-out of Provider Access API Data Sharing. § §pdex-216: If a member revokes their opt-out choice their Identifier(s) **SHALL** be removed from the Member Opt-Out List. § See the [Member Opt-Out Group Profile](StructureDefinition-member-opt-out-group.html) for details on opt-out scope, reasons, and member-specific details.

#### Member-Provider TRL
§pdex-217: The Member-Provider TRL **MAY** be determined by referencing a legacy syystem or API. § §pdex-218: Where a payer chooses to use FHIR Group resources to manage the Treatment Relationship the Payer **SHALL** create a Member-Treatment Group conforming to the [Member-Provider Treatment Relationship Group Profile](StructureDefinition-member-provider-treatment-relationship-group.html) that has the member as the "key" to the list (via a characteristic containing the Patient ID). § §pdex-219: The providers **SHALL** be represented as the cohort, or subjects in the list (as group members). § The profile supports detailed treatment relationship information including attestation date, treatment period, and relationship type. §pdex-220: This list **SHALL** then be used during a Provider-Member-Match operation to determine if the provider is permitted to retrieve data about the member. § 

§pdex-221: The payer **MAY** apply their own rules for determining a Treatment Relationship. § 

### How does Provider Access Work?

§pdex-222: The Member Opt-Out List and the Member-Provider TRLs **SHALL** be used, unless the payer is utilizing existing systems or APIs to determine Opt-Out or Treatment Relationship, as part of a [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.html). § 
- The provider submits a bulk member-match request for one or more members using the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.html).
§pdex-223: - The payer **SHOULD** determine whether the provider is in-network, or has an appropriate contractual relationship. §
§pdex-224: - Each member request **SHALL** contain: §
  - Patient demographics conforming to [HRex Patient Demographics]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-patient-demographics.html)
  - Health plan coverage information conforming to [HRex Coverage]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-coverage.html)
  - A treatment relationship attestation from the provider using the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.html) (a Consent resource)
§pdex-225: - The CoverageToMatch **SHALL** contain the Member's coverage information. §
§pdex-226: - The Treatment attestation **SHALL** be submitted as a Consent resource conforming to the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.html) in each member request. §
§pdex-227: - The health plan **SHALL** evaluate the request and determine: §
  - If the member has Opted-Out of sharing (by checking the Member Opt-Out List)
  - If not opted-out, whether the provider, organization or location is included in the Member-Provider TRL (Treatment Relationship List) for the member
  - If the treatment attestation can be verified and meets the payer's requirements
§pdex-228: - When the member data passes these checks, the member **SHALL** be added to a [Member-Provider Treatment Relationship Group](StructureDefinition-member-provider-treatment-relationship-group.html) resource conforming to the matched members response. § §pdex-229: The Group Id of the matched group **SHALL** be returned to the Provider upon completion of the operation. §
- Members who fail any check shall be returned in separate Group resources:
  - Non-matched members in a [PDex Member No Match Group](StructureDefinition-pdex-member-no-match-group.html)
  - Treatment attestation constrained members in a [PDex Member No Match Group](StructureDefinition-pdex-member-no-match-group.html)
  - Opt-out constrained members in a [Member Opt-Out Group](StructureDefinition-member-opt-out-group.html) 
§pdex-230: - The provider **SHALL** use the Matched Group Id to make subsequent $davinci-data-export operation requests to retrieve data for all, or a subset, of members. § §pdex-231: Alternatively, the provider **MAY** perform a new Provider-mMember-Match operation to receive a new Matched Member Group. §
§pdex-232: - The matched group resource **MAY** be a short-lived group. § No specific time limit is defined in this IG. An initial recommendation, subject to implementer feedback, is to make the group valid for 30 days.
§pdex-233: - Implementer feedback is sought on whether requests for less than 10 members **SHOULD** be handled as an interactive request, with larger bulk requests being processed as an asynchronous process. § 
- Implementer feedback is sought on whether an upper limit on the number of members in a Provider-Member-Match operation should be specified.
§pdex-234: - Providers **SHALL** be able to search and retrieve the contents of the Matched Member Group resource. §
§pdex-235: - Providers **SHALL** assume that the Matched Group is short-lived and subsequent requests for member data **SHALL** be initiated by performing a member match operation to retrieve an updated Matched Group List. §

The typical use case is expected to be one where an EMR retrieves data from a health plan for one or more 
providers, or for an organization, using automated service functions. The retrieving system or service, such as an EMR, 
is presumed to have implemented Role-based access to ensure that only authenticated and authorized 
personnel, or systems, have access to the retrieved data.

§pdex-236: It is recommended that, at a minimum, health plans **SHOULD** create Member-Provider TRLs using the NPI data for §
the Rendering Provider. §pdex-237: Health plans **MAY** choose to include organizations or locations in a Member-Proider TRL. §


### Member Opt-out

§pdex-238: A health plan member **SHALL** be entitled to Opt-Out from their data being shared via the Provider Access API. § §pdex-239: PDex defines a consent profile that **MAY** be used to enable a member to deny sharing via the Provider Access API. § §pdex-240: A member **SHALL** be able to update their preference §
to revoke a previous denial. §pdex-241: When a member Opts-Out of sharing, their Member Id **SHALL** be added to the Member Opt-Out List Group resource, or the API that answers the Opted-Out member query. § The Member Opt-Out List is a dynamic Group resource. §pdex-242: If a member revokes their Opt-Out their Member Id **SHALL** be removed from the Member Opt-Out List. § 

§pdex-243: Health Plans **MAY** implement the pdex-provider-consent to enable a member to express their sharing preference. §

The [PDex Server Capability Statement](CapabilityStatement-pdex-server.html) enables the Consent record to be written to the Patient Access API.

See the [PDex Provider Consent here](StructureDefinition-pdex-provider-consent.html)

### Treatment Relationship Driven Access 

The Provider Access API version 2 uses the [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.html) to determine if a member has opted out of sharing data via the Provider Access API. The Provider Member-Match is then tested against a payer's Treatment Relationship business rules. Provider attestations are submitted using the [Provider Treatment Attestation Profile](StructureDefinition-provider-treatment-relationship-consent.html). §pdex-244: If a Treatment Relationship is established, the member's data **SHALL** be available to a Provider through the member's inclusion in the [Member-Provider Treatment Relationship Group](StructureDefinition-member-provider-treatment-relationship-group.html) that is used to request a $davinci-data-export operation. §

§pdex-245: Members **SHALL** have the ability to opt-out of data sharing with providers. § Opt-outs are managed using the [Member Opt-Out Group Profile](StructureDefinition-member-opt-out-group.html), which supports multiple opt-out scopes:
- **Global Opt-Out**: Member has opted out from all data sharing
- **Provider-Specific Opt-Out**: Member has opted out for specific provider(s)
- **Purpose-Specific Opt-Out**: Member has opted out for specific purpose(s)
- **Payer-Specific Opt-Out**: Member has opted out for specific payer(s)
- **Provider Category Opt-Out**: Member has opted out for specific provider category/specialty

Each opt-out can include the member's stated reason (privacy concern, data security concern, unknown use, provider relationship, member choice, or other).

Health plans:
§pdex-246: - **MAY** use claims data as a source to identify existing Treatment Relationships. § 
§pdex-247: - **MAY** utilize their own rules for determining a Treatment Relationship between members and Providers. §
§pdex-248: - **MAY** use the [Coverage Requirements Discovery IG's]({{site.data.fhir.ver.crd}}/hooks.html) appointment-book and encounter-start CDS Hooks as a means to determine impending treatment relationships. §

The [Da Vinci Data Export Operation]({{site.data.fhir.ver.atr}}/OperationDefinition-davinci-data-export.html) in the [Member Attribution IG]({{site.data.fhir.ver.atr}}) supports the Bulk FHIR API specification.
The operation uses a Group resource. For the PDex Provider Access API the following capabilities
§pdex-249: **SHOULD** be supported: §

- Get Group record.
- Request all information for members in the Group.
- Request information for a subset of members in the Group.
- Request a limited set of information for a subset of members in the Group.

This combination of requests should cover all provider data requests, such as:

- Send all data for this set of patients that are new to my practice.
- Send new data since I last requested for this set of patients.
- Send just the lab results for this set of patients since this date.

§pdex-250: Access **SHALL** be controlled using client credentials that are compliant with SMART-On-FHIR. §
§pdex-251: Access **SHOULD** be restricted to Providers with a contractual relationship with a Payer. §

§pdex-252: The [$davinci-data-export operations]({{site.data.fhir.ver.atr}}/OperationDefinition-davinci-data-export.html) **SHALL** be submitted using a HTTPS POST. §
§pdex-253: The HTTPS Header **SHALL** include: §

    Prefer: respond-async


### Treatment Relationships

§pdex-254: The Payer **SHALL** be responsible for managing and maintaining the Treatment Relationship between §
Members and Providers. §pdex-255: The payer **SHALL** take account of members that have chosen to Opt-Out of §
sharing data with providers. §pdex-256: Those Opted-Out members **SHALL** be included in a Member Opted-Out List. § 

The [Da Vinci Member Attribution (ATR) IG]({{site.data.fhir.ver.atr}}) 
provides transactions to manage the Group resources through Add, change and delete member actions. PDex provides specific Group profiles for Provider Access use cases:
- [Member Opt-Out Group](StructureDefinition-member-opt-out-group.html) - for maintaining member opt-out preferences
- [Member-Provider Treatment Relationship Group](StructureDefinition-member-provider-treatment-relationship-group.html) - for maintaining treatment relationships with detailed attestation information

The [AttributionListStatus extension]({{site.data.fhir.ver.atr}}/StructureDefinition-ext-attributionListStatus.html) can have one of three values:
- draft: Used when building a list and it is not considered ready for use.


### Provider-Member-Match Operation Examples

The [Provider-Member-Match Operation](OperationDefinition-ProviderMemberMatch.html) supports providers in matching their patients against a payer's records and establishing treatment relationships for bulk data access.

The Provider-Member-Match operation follows the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) and returns a response containing a manifest with references to the matched member data. The provider uses this manifest to retrieve the Member-Match Response through the bulk data export mechanism.

**Example Request:**
The [Provider-Member-Match Request Example](Parameters-provider-member-match-request-001.html) demonstrates a provider submitting multiple patients with demographics, coverage information, and treatment attestations to a payer.

**Example Response:**
The [Provider-Member-Match Response Example](Parameters-provider-member-match-response-001.html) demonstrates a payer's response following the FHIR Bulk Data manifest format, containing:
- **MatchedMembers Group**: Patients successfully matched with confirmed treatment relationships (using [Member-Provider Treatment Relationship Group](StructureDefinition-member-provider-treatment-relationship-group.html) profile)
- **NonMatchedMembers Group**: Patients not found in payer system
- **TreatmentAttestationConstrainedMembers Group**: Patients with unverifiable treatment attestations
- **OptOutConstrainedMembers Group**: Patients who have opted out

The provider retrieves the detailed Member-Match Response by polling the status endpoint and retrieving the files referenced in the manifest, consistent with the FHIR Bulk Data API specification.

### Bulk Data Export with Manifest

Once providers receive a Matched Members Group from the Provider-Member-Match operation, they can use it with the $davinci-data-export operation to retrieve bulk member health data.

The bulk data response follows the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) and includes:
- A manifest file with references to ndjson files containing member data
- Proper OAuth2 access token handling
- Compliant response headers and file format

See the [FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/) for detailed information on:
- Manifest file structure
- ndjson format specification
- Security requirements
- Complete workflow from member-match through data retrieval
§pdex-257: Prior Authorization Rule (CMS-0057) the data available through the API **SHOULD** include: §

- US Core Clinical data ([US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) or [US Core 6.1]({{site.data.fhir.ver.uscore6}})
- [PDex Prior Authorization Profile](StructureDefinition-pdex-priorauthorization.html)
- [CARIN Consumer Directed Payer Data Exchange IG Non-Financial (Basis) Profiles ]({{site.data.fhir.ver.carinbb}}), as detailed below.

The CMS Prior Authorization Rule (CMS-0057) requires Claims and Encounter data to be exchanged with
Providers and Payers via the respective Provider Access API and Payer-to-Payer APIs, defined in this IG.
The Rule requires that a non-financial view of those claims and encounters are provided. This IG utilizes
the work of the [CARIN Consumer Directed Payer Data Exchange IG]({{site.data.fhir.ver.carinbb}}) which defines the following
non-financial profiles:

- [Inpatient Institutional Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-Basis.html)
- [Outpatient Institutional Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-Basis.html)
- [Professional NonClinician Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-Basis.html)
- [Oral Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Oral-Basis.html)
- [Pharmacy Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-Basis.html)

### Da Vinci Data Export Operation - PDex Provider Use Case

Provider Representative:

§pdex-258: - **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. § Where {id} is the Matched Member Group created by a preceding Provider Member-Match operation.
§pdex-259: - **SHALL** be permitted to GET /Group/{id} for the Matched Member Group list created by the Provider Member-Match operation. §
§pdex-260: - **SHALL** be permitted to call $davinci-data-export operation for the /Group/{id} they received in the response to the Provider Member-Match operation. §

The $davinci-data-export operation enables a Provider Representative to perform granular requests 
for data. 

§pdex-261: Data **MAY** be constrained by: §

- Patient subset
- Date range
- Resource Type
- Resource filter (valid search parameters for a resource)

Data available via the API includes:

- Clinical resources (US Core and PDex)
- Prior Authorizations and supporting structured documentation
- Non-Financial claims and encounters (CARIN Blue Button)

§pdex-262: The Data Export operation **SHALL** check the consent status for each member at the time of execution. § This is necessary to identify members that may have changed their opt-out 
status for sharing with providers.

#### Da Vinci Data Export Parameter Handling

##### patient

§pdex-263: If the patient parameter is not provided data **SHALL** be retrieved for all members §
in the Group. §pdex-264: If the patient parameter is provided the operation **SHALL** ignore references §
to patients that are invalid, or not a member of the group.

##### exportType

This is an optional parameter in the Da Vinci Data Export Operation.
§pdex-265: The exportType parameter **SHALL** have one of the following values: §

-  hl7.fhir.us.davinci-pdex#provider-delta
-  hl7.fhir.us.davinci-pdex#provider-download
-  hl7.fhir.us.davinci-pdex#provider-snapshot

§pdex-266: The hl7.fhir.us.davinci-pdex#provider-delta option **SHALL** be used when the provider is §
retrieving new, or updated data that will be stored as part of the patient record.

§pdex-267: The hl7.fhir.us.davinci-pdex#provider-download option **SHALL** be used when the provider is §
retrieving data that will be stored as part of the patient record.

§pdex-268: The hl7.fhir.us.davinci-pdex#provider-snapshot value **SHOULD** be used when a provider §
wants to download data for viewing.

From the Data Provider's perspective the hl7.fhir.us.davinci-pdex#provider-download exportType
parameter will require the Data Provider/Payer to track the latest download
date/time for the Patients that the provider requests data for. §pdex-269: These values **SHALL** §
be updated in an extension associated with the Patient for which a download was requested.

##### _since

Resources in the Patient Access and Provider Access API can extend back to January 1, 2016. 
§pdex-270: The _since parameter **SHOULD** be used for resource requests when the full history is not §
required. §pdex-271: It is expected that providers **MAY** first request data for members without §
limiting the request using the _since parameter. §pdex-272: Subsequent requests **MAY** then use _since §
to limit data to information that is new.

##### _until

§pdex-273: The _until parameter **MAY** be used less frequently. § It is most likely to be used with the  
hl7.fhir.us.davinci-pdex#provider-snapshot exportType to retrieve member data for a specific 
period.

##### _type

§pdex-274: The _type parameter **MAY** be used to restrict the resources retrieved by the Provider. § This 
enables providers to only retrieve the resource types they are interested in seeing. If this 
§pdex-275: parameter is not used all available resources **SHALL** be returned by the Payer, subject to §
the constraints applied by other input parameters.

§pdex-276: When _type is used the export operation **SHALL** record the content of the _type parameter in the §
[lastResources](StructureDefinition-base-ext-last-types.html) element for each Member for which data is retrieved. The
§pdex-277: [lastTransmitted](StructureDefinition-base-ext-last-transmission.html) **SHALL** be recorded with either the Date/Time of the Export Transaction §
or the value of the _until parameter, if it is earlier.

##### _typeFilter

§pdex-278: The _typeFilter parameter **MAY** be used to further restrict the resources retrieved by the §
Provider. For example, to only retrieve Observations of a certain type. The _typeFilter, if 
§pdex-279: used, **SHALL** comprise one, or more, valid FHIR search queries for the respective resource §
being filtered.

§pdex-280: When _typeFilter is used the export operation **SHALL** record the content of the _typeFilter §
parameter in the [lastFilters](StructureDefinition-base-ext-last-typefilter.html) element for each Member for which data is retrieved. The
§pdex-281: [lastTransmitted](StructureDefinition-base-ext-last-transmission.html) **SHALL** be recorded with either the Date/Time of the Export Transaction §
or the value of the _until parameter, if it is earlier.

NOTE: When constructing search queries to incorporate into a _typeFilter, Search parameters
§pdex-282: supported by the relevant profiles from the PDex, US Core or CARIN Blue Button IGs **SHALL** §
be followed.


### Access and Refresh Tokens

§pdex-283: Implementers **SHOULD** implement OAuth 2.0 access management in accordance with the SMART Backend Services §
Authorization Profile. When SMART Backend Services Authorization is used, Bulk Data Status Request and Bulk Data 
§pdex-284: Output File Requests with requiresAccessToken=true **SHALL** be protected the same way the Bulk Data Kick-off Request, §
including an access token with scopes that cover all resources being exported. §pdex-285: A server **MAY** §
additionally restrict Bulk Data Status Request and Bulk Data Output File Requests by limiting 
them to the client that originated the export. §pdex-286: Health plans **SHALL** limit the data returned to §
only those FHIR resources for which the client is authorized. 

§pdex-287: Clients **SHALL** require OAuth client credentials to enable secure access to read and search the Group §
resources and perform Bulk export operations. §pdex-288: Access Tokens **SHALL** be required to access the Group §
resources and and the Bulk export operation. §pdex-289: Access and Refresh Tokens **SHOULD** be issued to support §
the client requesting and subsequently retrieving the bulk data response to their request.

Registering of a client application or service to perform the bulk Payer-to-Payer
Exchange should be registered in accordance with the approach defined in the
[SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/client-confidential-asymmetric.html#registering-a-client-communicating-public-keys).
That IG also encourages the use of the OAuth2.0 Dynamic Client Registration Protocol
(DCRP). An alternative approach that is closely aligned with the DCRP protocol is
to use the B2B protocols detailed in the 
[HL7 Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/STU1/) IG.

If the protocols detailed in the above UDAP Security IG's [Business to Business](https://hl7.org/fhir/us/udap-security/b2b.html)) section are used, 
it is recommended that the subject_id in the B2B Authorization Extension Object (Key Name: "hl7-b2b") 
contain the NPI of the Provider for which Attributed Patient data is being requested. For instances 
where health plan generated attribution lists cover more than a single provider, the subject_id could 
be the FHIR Id of the Group being requested. The use of the Group FHIR ID as the subject_id is based 
upon the assumption that health plans have access controls in place to restrict the requestor to only 
having access to Group records they are authorized to access.

### Scopes for Operations

[SMART App Launch STU 2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch) 
defines granular scopes for resources. Following the model proposed in the section on 
[FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data)
the following scopes are proposed to control access to the Da Vinci Data Export Operation for Provider Access:

- http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/provider-member-match

- system.Group.u?code=http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS|pdexprovidergroup

This would be the scope to execute the *davinci-data-export* operation 
with it being restricted to the Group *id(s)* that the user is authorized to access.




[Next Page - Payer-to-Payer Exchange (Single Member)](payertopayerexchange.html)
