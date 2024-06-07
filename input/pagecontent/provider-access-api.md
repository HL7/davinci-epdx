[Previous Page - Handling Data Provenance](handlingdataprovenance.html)

<div class="stu-note">

<b><i>Provider Access API bulk data guidance in this version of the IG is draft only. It has not appeared in ballot and 
has not been fully tested. It is included to support the requirements of the CMS prior Authorization Rule (CMS-0057).
The bulk data transfer is based upon published guidance in the Da Vinci Member Attribution (ATR) IG.
</i></b>
</div>

## Provider Access API

In December 2022, CMS released the [Advancing Interoperability and Improving Prior Authorization Processes Proposed Rule CMS-0057-P](https://www.cms.gov/newsroom/fact-sheets/advancing-interoperability-and-improving-prior-authorization-processes-proposed-rule-cms-0057-p-fact). 
This rule was finalized in February 2024.  
One of the requirements of the rule is for Impacted Payers to implement a Provider Access API. This is an API that 
conforms to the [HL7 FHIR Bulk Data API specification](http://hl7.org/fhir/uv/bulkdata/STU2/).
The purpose of the Provider Access API is to enable Providers to query a Payer API for information about the
members of the health plan where they have a current, or upcoming treatment relationship.
The API will enable a provider to ask a Payer "What do you know about my Patients?"

The Payer Data Exchange Implementation Guide supports the Provider Access API by
utilizing the [$Davinci-data-export-operation](http://hl7.org/fhir/us/davinci-atr/STU2/OperationDefinition-davinci-data-export.html) operation in the [Da Vinci Member Attribution Implementation Guide](http://hl7.org/fhir/us/davinci-atr/STU2/).

### How does Provider Access Work?

The diagram below illustrates how health plans may construct and maintain their Member Attribution lists 
for Organizations, Locations and Providers. It also illustrates how a Provider Representative, such as 
an EMR, can query the health plan for the PDexProviderGroup resources they are permitted to see and then
use the Group/{id} endpoint for those records to request Member clinical, prior authorization and 
non-financial claims and encounter data.

<div style="height=auto;width=90%;">
{% include provider-access-api.svg %}
</div>

### Attribution List driven

The Provider Access API is centered around Attribution lists that enable a Provider/Provider Organization or 
Facility to retrieve data for health plan members that are assigned to that Provider. The data retrieval uses a 
FHIR Bulk data export operation to retrieve the requested data.

Members **SHALL** have the ability to opt-out of data sharing with providers.

The Health Plan is responsible for managing Attribution Lists. Attribution Lists **SHOULD** be 
discrete lists at the Organization + Facility + Provider level. This level of granularity is needed
to account for Providers working across different organizations, or at different facilities that
may use different EMRs. A health plan **MAY** adopt their own methodology for managing and maintaining 
provider attribution lists. Health plans are encouraged, for transparency purposes, to share their methodology 
for managing Member Attribution.

Health plans:
- **MAY** use claims data as a source to identify existing treatment relationships. 
- **MAY** utilize their own rules for determining the attribution of members to Providers.
- **SHOULD** use the Coverage Requirements Discovery IG's AppointmentBook and OrderSelect CDS Hooks as a means to determine impending treatment relationships.

Attribution lists **SHALL** be searchable via a secure RESTful API. Access to the Group resource to READ 
attribution lists should be scoped to the appropriate Organization, Facility, Provider or their 
authorized representative that is acting on the behalf of the Provider.

The Da Vinci Data Export Operation in the Member Attribution IG supports the Bulk FHIR API specification.
The operation uses the Group resource. For the PDex Provider Access API the following capabilities
**SHOULD** be supported:

- Search for Group.
- Get Group record.
- Request all information for members in the Group.
- Request information for a subset of members in the Group.
- Request a limited set of information for a subset of members in the Group.

This combination of requests should cover all provider data requests, such as:

- Send all data for this set of patients that are new to my practice.
- Send new data since I last requested for this set of patients.
- Send just the lab results for this set of patients since this date.

Access **SHALL** be controlled using client credentials that are compliant with SMART-On-FHIR.
Access **SHOULD** be restricted to Providers with a contractual relationship with a Payer.

### Attribution List

The Payer **SHALL** be responsible for managing and maintaining the attribution list that assigns Members to Providers. 
The payer **SHALL** take account of members that have chosen to opt out of sharing data with providers. 
Those opted-out members **SHALL** be omitted from the Provider Attribution list. The Payer **MAY** choose to 
maintain a separate Group resource for a Provider that identities the Opted-out Members that would otherwise have
been Attributed to the Provider. If a Payer maintains an Opted-out Group resource it is the Payers responsibility
to ensure that a Provider is unable to download data about those opted-out members using a bulk export operation.
The Da Vinci Attribution (ATR)IG provides transactions to manage the Group resource through Add, change and delete 
member actions.

The [PDexProviderGroup](StructureDefinition-pdex-provider-group.html) profile **SHALL** be used to record the
members attributed to a Provider, Provider Group or Organization. PDexProviderGroup is based on the 
[ATRGroup](http://hl7.org/fhir/us/davinci-atr/STU2/StructureDefinition-atr-group.html) Profile 
from the[Da Vinci Member Attribution (ATR) 2.0.0 IG](http://hl7.org/fhir/us/davinci-atr/STU2/). 

The profile adds an extension at the root level. This is used to, optionally, record the number of potentially 
attributed members that instead used their right to opt-out of sharing data with providers. By recording this quantity
it **MAY** help providers reconcile their attribution lists with those managed by the Payer, The extension is:

- MembersOptedOut


The [PDexProviderGroup](StructureDefinition-pdex-provider-group.html) Profile adds three extensions to the member element. 
These are used to track the data retrieved for a member by the provider. This enables sophissticated providers
to fine tune their requests for data. For example, Retrieving the group resource a Provider could create a Provider
Access data request that repeated the parameters supplied to [lastResources](StructureDefinition-base-ext-last-types.html) 
and [lastFilters](StructureDefinition-base-ext-last-typefilter.html) and compile a list of Patients with the same [lastTransmitted](StructureDefinition-base-ext-last-transmission.html)
date. The Provider Access API is flexible enough that a Provider could submit a request for the data for a single Patient, repeating the 
previously used parameters. A Provider could also compile a request that omitted resources that were previously asked for,
avoiding data duplication. Providing these member-level extensions is meant as an aid to Providers and Payers to enable
granular data sharing. Providers, or Payers wishing to take advantage of these elements **SHOULD** consider implementing
their own independent data tracking capabilities to understand what data has been provided to a Provider for specific members.

The member-level extensions are primarily intended for instances where a Provider does not want to download *ALL information
for ALL attributed members.*

The member-level extensions are:

- [lastTransmitted](StructureDefinition-base-ext-last-transmission.html)
- [lastResources](StructureDefinition-base-ext-last-types.html)
- [lastFilters](StructureDefinition-base-ext-last-typefilter.html)

These extensions **SHALL** be updated by the Da Vinci Data Export PDex Use Case Operation.

### Da Vinci Data Export Payload

The Provider Access is meant to enable in-network providers to retrieve the information they want about one or more patients
that are attributed to them via an existing , or impending treatment relationship. Under the requirements of the CMS
Prior Authorization Rule (CMS-0057) the data available through the API **SHOULD** include:

- US Core Clinical data ([US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) or [US Core 6.1]({{site.data.fhir.ver.uscore6}})
- [CARIN Blue Button non-Financial Profiles](https://build.fhir.org/ig/HL7/carin-bb/artifacts.html)
- [PDex Prior Authorization Profile](StructureDefinition-pdex-priorauthorization.html)


### Da Vinci Data Export Operation - PDex Provider Use Case

Provider Representative:

- **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. Where {id} is the PDexProviderGroup(s) attributed to the Organization, Facility and Provider they are representing.
- **SHALL** be permitted to SEARCH /Group. The search function and the bundle contents returned **SHALL** be restricted to the {ids} that are associated with the Provider Representative's account. 
- **MAY** be associated with more than one attribution group list.
- **SHALL** be permitted to GET /Group/{id} for any Attribution Group list they are associated with.
- **SHALL** be permitted to call $davinci-data-export operation for any /Group/{id} they are associated with.

The $davinci-data-export operation enables a Provider Representative to perform granular requests for data. 

Data can be constrained by:

- Patient subset
- Date range
- Resource Type
- Resource filter (valid search parameters for a resource)

Data available via the API includes:

- Clinical resources (US Core and PDex)
- Prior Authorizations and supporting structured documentation
- Non-Financial claims and encounters (CARIN Blue Button)

The Data Export operation **SHALL** check the consent status for each member at the time 
of execution. This is necessary to identify members that may have changed their opt-out 
status for sharing with providers.

#### Da Vinci Data Export Parameter Handling

##### patient

If the patient parameter is not provided data **SHALL** be retrieved for all members 
in the Group. If the patient parameter is provided the operation **SHALL** ignore references 
to patients that are invalid, or not a member of the group.

##### exportType

This is an optional parameter in the Da Vinci Data Export Operation.
The exportType parameter **SHALL** have one of the following values:

-  hl7.fhir.us.davinci-pdex#provider-delta
-  hl7.fhir.us.davinci-pdex#provider-download
-  hl7.fhir.us.davinci-pdex#provider-snapshot

The hl7.fhir.us.davinci-pdex#provider-delta option **SHALL** be used when the provider is
retrieving new, or updated data that will be stored as part of the patient record.

The hl7.fhir.us.davinci-pdex#provider-download option **SHALL** be used when the provider is
retrieving data that will be stored as part of the patient record.

The hl7.fhir.us.davinci-pdex#provider-snapshot value **SHOULD** be used when a provider
wants to download data for viewing.

From the Data Provider's perspective the hl7.fhir.us.davinci-pdex#provider-download exportType
parameter will require the Data Provider/Payer to track the latest download
date/time for the Patients that the provider requests data for.  These values **SHALL**
be updated in an extension associated with the Patient for which a download was requested.

##### _since

Resources in the Patient Access and Provider Access API can extend back to January 1, 2016. 
The _since parameter **SHOULD** be used for resource requests when the full history is not 
required. It is expected that providers **MAY** first request data for members without 
limiting the request using the _since parameter. Subsequent requests **MAY** then use _since
to limit data to information that is new.

##### _until

The _until parameter **MAY** be used less frequently. It is most likely to be used with the  
hl7.fhir.us.davinci-pdex#provider-snapshot exportType to retrieve member data for a specific 
period.

##### _type

The _type parameter **MAY** be used to restrict the resources retrieved by the Provider. This 
enables providers to only retrieve the resource types they are interested in seeing. If this 
parameter is not used all available resources **SHALL** be returned by the Payer, subject to
the constraints applied by other input parameters.

When _type is used the export operation **SHALL** record the content of the _type parameter in the
[lastResources](StructureDefinition-base-ext-last-types.html) element for each Member for which data is retrieved. The
[lastTransmitted](StructureDefinition-base-ext-last-transmission.html) **SHALL** be recorded with either the Date/Time of the Export Transaction
or the value of the _until parameter, if it is earlier.

##### _typeFilter

The _typeFilter parameter **MAY** be used to further restrict the resources retrieved by the 
Provider. For example, to only retrieve Observations of a certain type. The _typeFilter, if 
used, **SHALL** comprise one, or more, valid FHIR search queries for the respective resource 
being filtered.

When _typeFilter is used the export operation **SHALL** record the content of the _typeFilter 
parameter in the [lastFilters](StructureDefinition-base-ext-last-typefilter.html) element for each Member for which data is retrieved. The
[lastTransmitted](StructureDefinition-base-ext-last-transmission.html) **SHALL** be recorded with either the Date/Time of the Export Transaction
or the value of the _until parameter, if it is earlier.

### Access and Refresh Tokens

Implementers **SHOULD** implement OAuth 2.0 access management in accordance with the SMART Backend Services 
Authorization Profile. When SMART Backend Services Authorization is used, Bulk Data Status Request and Bulk Data 
Output File Requests with requiresAccessToken=true **SHALL** be protected the same way the Bulk Data Kick-off Request, 
including an access token with scopes that cover all resources being exported. A server **MAY** 
additionally restrict Bulk Data Status Request and Bulk Data Output File Requests by limiting 
them to the client that originated the export. Health plans **SHALL** limit the data returned to 
only those FHIR resources for which the client is authorized. 

Clients **SHALL** require OAuth client credentials to enable secure access to read and search the Group 
resources and perform Bulk export operations. Access Tokens **SHALL** be required to access the Group resources
and and the Bulk export operation. Access and Refresh Tokens **SHOULD** be issued to support the client requesting and 
subsequently retrieving the bulk data response to their request.

Registering of a client application or service to perform the bulk Payer-to-Payer
Exchange should be registered in accordance with the approach defined in the
[SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/client-confidential-asymmetric.html#registering-a-client-communicating-public-keys).
That IG also encourages the use of the OAuth2.0 Dynamic Client Registration Protocol
(DCRP). An alternative approach that is closely aligned with the DCRP protocol is
to use the B2B protocols detailed in the [HL7 Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/STU1/)
IG.

### Scopes for Operations

[SMART App Launch STU2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch) 
defines granular scopes for resources. Following the model proposed in the section on 
[FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data)
the following scopes are proposed to control access to the Da Vinci Data Export Operation for Provider Access:

- system.Group.u?code=http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS|pdexprovidergroup

This would be the scope to execute the *davinci-data-export* operation 
with it being restricted to the Group *id(s)* that the user is authorized to access.




[Next Page - Payer-to-Payer Exchange (Single Member)](payertopayerexchange.html)
