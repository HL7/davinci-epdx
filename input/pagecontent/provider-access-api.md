[Previous Page - Handling Data Provenance](handlingdataprovenance.html)

<div class="stu-note">

<b><i>Provider API bulk data guidance in this version of the IG is draft only. It has not appeared in ballot and has not been fully tested.</i></b>
</div>

## Provider Access API

In December 2022, CMS released the [Advancing Interoperability and Improving Prior Authorization Processes Proposed Rule CMS-0057-P](https://www.cms.gov/newsroom/fact-sheets/advancing-interoperability-and-improving-prior-authorization-processes-proposed-rule-cms-0057-p-fact). 
This rule was finalized in February 2024.  
One of the requirements of the rule is for Impacted Payers to implement a Provider Access API. This is an API that 
conforms to the [HL7 FHIR Bulk Data API specification](https://hl7.org/fhir/uv/bulkdata/).
The purpose of the Provider Access API is to enable Providers to query a Payer API for information about the
members of the health plan where they have a current, or upcoming treatment relationship.
The API will enable a provider to ask a Payer "What do you know about my Patients?"

The Payer Data Exchange Implementation Guide supports the Provider Access API by
utilizing the [Da Vinci Data Export](http://hl7.org/fhir/us/davinci-atr/2023Jan/OperationDefinition-davinci-data-export.html) operation in the [Da Vinci Member Attribution Implementation Guide](http://hl7.org/fhir/us/davinci-atr/2023Jan/index.html).

### How does Provider Access Work?

#### Attribution List driven

The Provider Access API is centered around Attribution lists that enable a Provider/Provider Organization or 
Facility to retrieve data for health plan members that are assigned to that Provider. The data retrieval uses a 
FHIR Bulk data export operation to retrieve the requested data.

Members have the ability to opt-out of data sharing with providers.

The Health Plan is responsible for managing Attribution Lists. Attribution Lists should be 
discrete lists at the Organization + Facility + Provider level. This level of granularity is needed
to account for Providers working across different organizations, or at different facilities that
may use different EMRs.

Health plans **MAY** use claims data as a source to identify existing treatment relationships. 
Health plans ** MAY** utilize their own rules for determining the attribution of members to Providers.

Attribution lists **SHALL** be available for searching via a secure RESTful API. 
Access to the Group resource to READ attribution lists should be scoped to the appropriate Organization, 
Facility, Provider or their authorized representative that is acting on the behalf of the Provider.

The Da Vinci Data Export Operation in the Member Attribution IG supports the Bulk FHIR API specification.
The operation uses the Group resource. For the PDex Provider Access API the following capabilities
need to be supported:

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
Access will be restricted to Providers with a contractual relationship with a Payer.

The _exportType_ parameter **SHALL** contain: _hl7.fhir.us.davinci-pdex_
to indicate that it is a PDex export.

#### Export Mode

This is an optional parameter in the Da Vinci Data Export Operation.
The exportMode field **SHALL** have one of the following values from the [PDex Export Value Set](ValueSet-PDexExportModeVS.html):
- provider-delta
- provider-download
- provider-snapshot

The values come from the [PDex Export Mode Code System](CodeSystem-PdexExportModeCS.html).

The provider-delta option **SHALL** be used when the provider is retrieving new, or updated data that will be stored as part of the patient record.
The provider-download option **SHALL** be used when the provider is retrieving data that will be stored as part of the patient record.
The provider-snapshot value is to be used when a provider wants to download data for viewing.

From the Data Provider's perspective the download exportMode will cause the Payer to track the latest download date/time for the Patients.
These values will be updated in an extension associated with the Patient for which a download was requested.

#### Attribution List

The Payer is responsible for maintaining the attribution list that assigns Members to Providers. 
The payer **SHALL** take account of members that have chosen to opt out of sharing data with providers. 
Those opted-out members will be omitted from any Provider Attribution list. The Da Vinci Attribution (ATR) 
IG provides transactions to manage the Group resource through Add, change and delete member actions.

The [PDexProviderGroup](StructureDefinition-pdex-provider-group.html) profile **SHALL** be used to record the
members attributed to a Provider, Provider Group or Organization. PDexProviderGroup is based on the 
ATRGroup Profile from the Da Vinci Member Attribution IG. The Profile adds three extensions to the 
member element. These are used to track the data retrieved for a member by the provider. 
These extensions are:

- [lastTransmitted](StructureDefinition-base-ext-last-transmission.html)
- [lastResources](StructureDefinition-base-ext-last-types.html)
- [lastFilters](StructureDefinition-base-ext-last-typefilter.html)

These extensions **SHOULD** be updated by the Da Vinci Data Export PDex Use Case Operation.

#### Da Vinci Data Export Operation - PDex Provider Use Case

Provider Representative:

- **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. Where {id} is the PDexProviderGroup(s) attributed to the Organization, Facility and Provider they are representing.
- **SHALL** be permitted to SEARCH /Group. The search function and the bundle contents returned **SHALL** be restricted to the {ids} that are associated with the Provider Representative's account. 
- **MAY** be associated with more than one attribution group list.
- **SHALL** be permitted to GET /Group/{id} for any Attribution Group list they are associated with.
- **SHALL** be permitted to call $davinci-data-export operation for any /Group/{id{ they are associated with.

The $davinci-data-export operation enables a Provider Representative to perform granular requests for data. 

Data can be constrained by:

- Patient subset
- Date range
- Resource Type
- Resource filter (valid search parameters for a resource)



[Next Page - Payer-to-Payer Exchange (Single Member)](payertopayerexchange.html)
