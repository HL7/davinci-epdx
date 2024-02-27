[Previous Page - Payer-to-Payer Exchange (single member)](payertopayerexchange.html)

When requested by a Health Plan member, the Exchange of clinical data, as scoped by USCDI 
version 1 or version 3 and represented in FHIR by US Core 3.1.1 or 6.1.0, is a requirement 
of the Advancing Interoperability and Prior Authorization Rule published in February 2024. 
The rule requires Payers to support the bulk exchange of data for multiple members.

The PDex Payer-to-Payer FHIR-based bulk data exchange in this section of the IG 
supports the exchange of data for multiple members.

Bulk Payer-to-Payer exchange **SHALL** be accomplished by the use of the Bulk FHIR API 
specification. 

The Advancing Interoperability and Prior Authorization Final Rule requires that the Member 
consent to the retrieval of their data from their prior health plan.

### Performing Bulk Data Exchange

Payer-to-Payer Exchange is an "opt-in" choice for Members. Therefore, it is necessary for 
the requesting (or New) health plan to request permission (i.e., consent) from the Member 
to retrieve the data from their prior plan. As per the process for a single member exchange
([Payer-to-Payer (single Member)](payertopayerexchange.html)), the following data **SHALL** be exchanged with 
the prior plan for each Member that provides their consent:

- Patient Demographics
- Prior Coverage
- Consent Record

The following information **MAY** be exchanged with the prior plan for a member:

- (optional) Current, or future, coverage provided by the Requesting Plan

Bulk Exchange workflow is based upon the workflows identified in the Payer-to-Payer (Single Member) 
exchange. The variations to support bulk exchange are documented in this section of the IG.

The requesting Payer **SHALL** obtain an access token in accordance with the 
[SMART Backend Services Authorization](http://hl7.org/fhir/uv/bulkdata/STU2/authorization.html) 
process, as documented in the 
[FHIR Bulk Data Access IG (2.0.0 STU2)](http://hl7.org/fhir/uv/bulkdata/STU2/index.html). 

The bulk Payer-to-Payer exchange is initiated by supplying a Parameter bundle to the 
[$bulk-member-match operation](OperationDefinition-bulk-member-match.html). A set of OAuth2.0/SMART-on-FHIR Client Credentials 
**SHALL** be required to access the secured $bulk-member-match operation endpoint.

For each member submitted to the $bulk-member-match operation the following parameters 
**SHALL** be supplied as a **parameter.part** element in the 
[$multi-member-match-bundle-in](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html) parameter bundle. 

- MemberPatient: - [HRex Patient demographics](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-patient-demographics.html)
- CoverageToMatch - details of the prior health plan coverage, supplied by the member, typically from the health plan coverage card. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)
- Consent - Record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in. Uses the [PDex Consent Profile](StructureDefinition-pdex-consent.html)

Optionally the new health plan **MAY** include the following element in the **parameter.part**
element for a member:

- CoverageToLink - Optional parameter. Details of new or prospective health plan coverage, provided by the health plan based upon the member’s enrolment. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)

An example request bundle can be found here: [PDex $multi-member-match request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)

### Bulk Member Match with Consent

The Bulk Member Match Operation will use the following Parameters:

- In: [PDexMultiMemberMatchRequestParameterBundle](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)
- Out: [PDexMultiMemberMatchResponseParameters](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.html)

The Response Profile provides a Group identifier that can be used by the requesting/new
payer to retrieve data.

The Operation Definition for Bulk Member Match is:

[PDex Bulk Member Match](OperationDefinition-bulk-member-match.html)

### DaVinci-Data-Export Operation

Requesting/New Payer:

- **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. Where {id} is the PDex Member Match Group(s) resulting from the Bulk Member Match Operation.
- **SHALL** be permitted to SEARCH /Group. The search function and the bundle contents returned **SHALL** be restricted to the {ids} that are associated with theRequesting/New Payer.
- **MAY** be associated with more than one PDex Member Match group list.
- **SHALL** be permitted to GET /Group/{id} for any PDex Member Match Group list they are associated with.
- **SHALL** be permitted to call $davinci-data-export operation for any /Group/{id} they are associated with.

While the $Davinci-data-export-operation enables granular resource requests the operation **SHOULD** be used 
with two scenarios:

- Requesting all data within the previous 5 years for all members in the list.
- Requesting all data for all members in the list since the last request.

The latter option is to enable two scenarios:

- For "run-off" data to be collected for members that have switched plans
- For members with concurrent coverage. 

For members with concurrent coverage this will enable data to be requested at least quarterly.

The Data Export operation **SHOULD** check the consent status for each member at the time
of execution. This is necessary to identify members that may have changed their opt-in/opt-out
status for sharing with health plans.

Data available via the API includes:

- Clinical resources (US Core and PDex)
- Prior Authorizations and supporting structured and unstructured documentation
- Non-Financial claims and encounters (CARIN Blue Button)


#### ExportType

This is an optional parameter in the Da Vinci Data Export Operation.
The exportType field **SHALL** have the following value:

- hl7.fhir.us.davinci-pdex#payertopayer

##### _since

Resources in the Patient Access API can extend back to January 1, 2016.
For Payer-to-Payer Exchange only data updated within five years of the transaction request
date **SHALL** be returned via the API. The _since parameter **SHOULD** be used for resource 
requests when the full history is not required. It is expected that providers **MAY** 
first request data for members without limiting the request using the _since parameter. 
Subsequent requests **MAY** then use _since to limit data to information that is new.

If the _since parameter is earlier than five years before the transaction request the date/time 
will be overridden and set to five years before the transaction request. 

##### _until

The _until parameter **MAY** be used less frequently. It is most likely to be used with the  
hl7.fhir.us.davinci-pdex#provider-snapshot exportType to retrieve member data for a specific
period.

##### _type

The _type parameter **MAY** be used to restrict the resources retrieved by the Provider. This
enables providers to only retrieve the resource types they are interested in seeing. If this
parameter is not used all available resources **SHALL** be returned by the Payer, subject to
the constraints applied by other input parameters.

##### _typeFilter

The _typeFilter parameter **MAY** be used to further restrict the resources retrieved by the
Provider. For example, to only retrieve Observations of a certain type. The _typeFilter, if
used, **SHALL** comprise one, or more, valid FHIR search queries for the respective resource
being filtered.



<div style="height=auto;width=90%;">
{% include bulk-p2p-exchange.svg %}
</div>

### Access and Refresh Tokens

Implementers **SHOULD** implement OAuth 2.0 access management in accordance with the SMART Backend Services
Authorization Profile. When SMART Backend Services Authorization is used, Bulk Data Status Request and Bulk Data
Output File Requests with requiresAccessToken=true **SHALL** be protected the same way the Bulk Data Kick-off Request,
including an access token with scopes that cover all resources being exported. A server **MAY** additionally
restrict Bulk Data Status Request and Bulk Data Output File Requests by limiting them to the client that
originated the export. Health plans **SHALL** limit the data returned to only those FHIR resources for which the
client is authorized.

Clients **SHALL** require OAuth client credentials to enable secure access to read and search the Group
resources and perform Bulk export operations. Access Tokens **SHALL** be required to access the Group resources
and and the Bulk export operation. Access and Refresh Tokens **SHOULD** be issued to support the client requesting and
subsequently retrieving the bulk data response to their request.


[Next Page - Data Mapping](datamapping.html)
