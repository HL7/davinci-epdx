[Previous Page - Payer-to-Payer Exchange (single member)](payertopayerexchange.html)

<div class="stu-note">

<b><i>Payer-to-Payer API bulk data guidance in this version of the IG is draft only. 
It has not appeared in ballot but has been tested at multiple Connectathons. 
This has been incorporated to meet the requirements of the CMS Prior Authorization Rule 
(CMS-0057)</i></b>
</div>

When requested by a Health Plan member, the Exchange of clinical data, as
scoped by USCDI version 1 or version 3 and represented in FHIR by US Core 
3.1.1 or 6.1.0, is a requirement of the Advancing Interoperability and 
Prior Authorization Rule (CMS-0057) published in February 2024. The rule requires 
Payers to support the bulk exchange of data for multiple members.

The PDex Payer-to-Payer FHIR-based bulk data exchange in this section of 
the IG supports the exchange of data for a single member, or 
multiple members. 

Bulk Payer-to-Payer exchange **SHALL** be accomplished by the use of the 
Bulk FHIR API specification. 

The Advancing Interoperability and Prior Authorization Final Rule requires 
that the Member consent to the retrieval of their data from their prior 
health plan.

The Advancing Interoperability and Prior Authorization Final Rule requires that 
health plans **SHALL** limit the data exchanged to data with a service date no 
earlier than 5 years prior to the date of the data request. Prior Authorizations 
**SHALL** be limited to current/active Prior Authorizations in addition to Prior 
Authorizations that have changed status within the last year, as of the date of 
request for information.

Status changes of Prior Authorizations will be determined by the Prior Authorization 
Processor. This IG is representing the change in status. For example, a Prior Authorization 
may be denied, but then approved upon appeal. A prior Authorization might be pended and then
subsequently approved or denied.

If the Prior Authorization processor changes the status of the Prior Authorization then the
date of change will be recorded, In the Provider and Payer-to-Payer APIs and Prior 
Authorization that has changed status in the previous 12 months (from the date of enquiry)
**SHALL** be included in the API response.


The Advancing Interoperability and Prior Authorization Final Rule requires that 
Prior Authorizations exchanged via the Payer-to-Payer Exchange API **SHALL** include 
the supporting clinical data used to make the prior authorization determination. 
The supporting data **SHALL** include unstructured data used in the prior 
authorization determination. 

The data available to be returned by the Bulk Payer-to-Payer Exchange API **SHALL** 
include the following types of data:

- [US Core 3.1.1]({{uscore3}}) oe [US Core 6,1,0]({{uscore6}})Clinical Data with additional PDex defined Profiles.
- Claims and Encounters, with financial data excluded as defined by Non-Financial ExplanationOfBenefit profiles defined in the
- [Prior Authorizations](/StructureDefinition-pdex-priorauthorization.html) and supporting clinical data as defined by this guide. 
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


### Performing Bulk Data Exchange

Payer-to-Payer Exchange is an **"opt-in"** choice for Members. The requesting 
(or New) health plan **SHALL** request permission (i.e., consent) from the Member 
to retrieve the data from their prior plan. 
[Payer-to-Payer (single Member) Exchange](payertopayerexchange.html)), **SHALL** exchange the same data. 

The following data **SHALL** be exchanged with 
the prior plan for each Member that provides their consent in order for the 
prior plan to attempt to match the Member:

- [HRex Patient Demographics Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-patient-demographics.html)
- [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-coverage.html)
- [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html).

The following information **MAY** be exchanged with the prior plan for a member:

- (optional) Current, or future, coverage provided by the Requesting Plan

The bulk Exchange workflow is based upon the workflows identified in the 
Payer-to-Payer (Single Member) exchange. The variations to support bulk 
exchange are documented in this section of the IG.

The requesting Payer **SHALL** obtain an access token in accordance with the 
[SMART Backend Services Authorization](http://hl7.org/fhir/uv/bulkdata/STU2/) 
process, as documented in the 
[FHIR Bulk Data Access IG (2.0.0 STU2)](http://hl7.org/fhir/uv/bulkdata/STU2/). 

The bulk Payer-to-Payer exchange is initiated by supplying a Parameter bundle to the 
[$bulk-member-match operation](OperationDefinition-bulk-member-match.html). A set of OAuth2.0/SMART-on-FHIR Client Credentials 
**SHALL** be required to access the secured $bulk-member-match operation endpoint.

For each member submitted to the $bulk-member-match operation the following parameters 
**SHALL** be supplied as a **parameter.part** element in the 
[$multi-member-match-bundle-in](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html) parameter bundle. 

- MemberPatient: - [HRex Patient demographics](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-patient-demographics.html)
- CoverageToMatch - details of the prior health plan coverage, supplied by the member, typically from the health plan coverage card. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)
- Consent - Record of consent received by requesting payer from Member to retrieve their records from the prior payer. This is an opt-in. Uses the [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html)

Optionally the new health plan **MAY** include the following element in the **parameter.part**
element for a member:

- CoverageToLink - Optional parameter. Details of new or prospective health plan coverage, provided by the health plan based upon the member’s enrolment. Uses the [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)

An example request bundle can be found here: [PDex $multi-member-match request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)

The PDex $multi-member-match and the subsequent $davinci-data-export operations **SHALL** be submitted using a HTTP POST.
The HTTP Header **SHALL** include:

    Prefer: respond-async


### Bulk Member Match with Consent

The Bulk Member Match Operation will use the following Parameters:

- In: [PDexMultiMemberMatchRequestParameterBundle](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html)
- Out: [PDexMultiMemberMatchResponseParameters](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.html)

The Response Profile provides a Group identifier that can be used by the requesting/new
payer to retrieve data.

The Operation Definition for Bulk Member Match is:

[PDex Bulk Member Match](OperationDefinition-bulk-member-match.html)

The Bulk Member Match Operation **SHALL** evaluate the consent request for 
each member and determine whether the request for only Non-Sensitive data, 
as determined by federal and state regulations that apply to the data holder, 
can be complied with. The following decision tree illustrates how the Consent 
determination **SHALL** be made.

Consent **SHALL** be evaluated at the time of the data request to ensure that the Member
has not contacted their previous payer to override sharing consent.

The consent decision logic is the same for Single Member Match and Bulk Member Match. 
It is the result of the decision that differs. For Single Member Match Operation, 
either the Patient information is returned, or an Operation Outcome is generated. 
In Bulk Member Match a member is assigned to a Matched, Non-Matched or Consent 
Constrained Group and processing continues until every member has been evaluated 
and the resulting Groups are returned in the Operation response.

The consent decision flow for the bulk member match is shown in the following diagram:

<div style="height=auto;width=90%;">
{% include member-match-consent-decision-flow.svg %}
</div>

### Searching for Matched Groups

A payer may send multiple requests for member matching to another Payer. This can result in multiple
Matched Group records being created. The FHIR Group resource supports searching on characteristic. 
To enable searching the [PDexMemberMatchGroup Profile](StructureDefinition-pdex-member-match-group.html)
sets the characteristic element to include the "match" code, the identifier of the requesting payer
in (characteristic.valueReference), sets characteristic.exclude to false and characteristic.period.start to the date of the match request.

Implementers **SHALL** support the standard search parameters for group that are specified in the base 
Group resource in FHIR R4 specification: [Group Search Parameters](StructureDefinition-pdex-member-match-group.html).


### Da Vinci Data Export Payload

The Provider Access is meant to enable in-network providers to retrieve the information they want about one or more patients
that are attributed to them via an existing, or impending treatment relationship. Under the requirements of the CMS
Prior Authorization Rule (CMS-0057) the data available through the API **SHOULD** include:

- US Core Clinical data ([US core 3.1.1]({{site.data.fhir.ver.uscore3}}) or [US Core 6.1]({{site.data.fhir.ver.uscore6}})
- [CARIN Blue Button non-Financial Profiles]({{site.data.fhir.ver.carinbb}}/artifacts.html)
- [PDex Prior Authorization Profile](StructureDefinition-pdex-priorauthorization.html)


### DaVinci-Data-Export Operation

The [davinci-data-export Operation](http://hl7.org/fhir/us/davinci-atr/STU2/OperationDefinition-davinci-data-export.html) and the optional parameters are defined in the [Da Vinci Member Attribution (ATR) List Implementation Guide STU2](http://hl7.org/fhir/us/davinci-atr/STU2/).

Requesting/New Payer:

- **SHALL** be issued with OAuth2.0/SMART-On-FHIR client credentials that enable access to /Group/{id}. Where {id} is the PDex Member Match Group(s) resulting from the Bulk Member Match Operation.
- **SHALL** be permitted to SEARCH /Group. The search function and the bundle contents returned **SHALL** be restricted to the {ids} that are associated with theRequesting/New Payer.
- **MAY** be associated with more than one PDex Member Match group list.
- **SHALL** be permitted to GET /Group/{id} for any PDex Member Match Group list they are associated with.
- **SHALL** be permitted to call $davinci-data-export operation for any /Group/{id} they are associated with.
- **SHALL** be permitted to retrieve data with a service date within 5 years of the date of the request for information.

While the [$Davinci-data-export-operation](http://hl7.org/fhir/us/davinci-atr/STU2/OperationDefinition-davinci-data-export.html) 
enables granular resource requests the operation **SHOULD** be used with two scenarios:

- Requesting all data within the previous 5 years for all members in the list.
- Requesting all data for all members in the list since the last request.

The latter option is to enable two scenarios:

- For "run-off" data to be collected for members that have switched plans
- For members with concurrent coverage. 

For members with concurrent coverage this will enable data to be requested at 
least quarterly.

The Data Export operation **SHALL** check the consent status for each member 
at the time of execution. This is necessary to identify members that may have 
changed their opt-in/opt-out status for sharing with health plans.

Data that **SHALL** be available via the API includes:

- [US Core 3.1.1](http://hl7.org/fhir/us/core/STU3.1.1/) Clinical Data with additional PDex defined Profiles.
- Claims and Encounters, with financial data excluded as defined by Non-Financial ExplanationOfBenefit Basis profiles defined in the [CARIN Consumer Directed Payer Data Exchange]({{site.data.fhir.ver.carinbb}}) Implementation Guide.
- [Prior Authorizations](/StructureDefinition-pdex-priorauthorization.html) and supporting clinical data as defined by this guide.

Claims and clinical data **SHALL** be limited to records with a service date 
within 5 years of the date of request for data.
Prior Authorizations **SHALL** be limited to Active/Current Prior Authorizations and 
Prior Authorizations that have changed status within the last year, as of the date 
of the information request.

#### ExportType

This is an optional parameter in the Da Vinci Data Export Operation.
For Payer-to-Payer Bulk Exchange the exportType field **SHALL** have the following value:

- hl7.fhir.us.davinci-pdex#payertopayer

##### _since

Resources in the Patient Access API can extend back to January 1, 2016.
For Payer-to-Payer Exchange only data updated within five years of the transaction 
request date **SHALL** be returned via the API. The _since parameter **SHOULD** be used for resource 
requests when the full history is not required. It is expected that Payers **MAY** 
first request data for members without limiting the request using the _since parameter. 
Subsequent requests **MAY** then use _since to limit data to information that is new. 
This would enable the Payer to request "Run-off" data that the prior plan 
received after the initial enrollment by the member in the new plan.

If the _since parameter is earlier than five years before the transaction request 
the date/time **SHALL** be overridden and set to five years before the transaction 
request date.

##### _until

The _until parameter **MAY** be used less frequently. It is most likely to be 
used by the Payer to retrieve member data for a specific period. This may be the 
case where two Payers both share a Member that has concurrent coverage with 
multiple Payers. For example when requesting data for a particular quarterly period.

##### _type

The _type parameter **MAY** be used to restrict the resources retrieved by the 
Payer. If this parameter is not used all available resources **SHALL** be returned 
by the Payer, subject to the constraints applied by other input parameters.

##### _typeFilter

The _typeFilter parameter **MAY** be used to further restrict the resources 
retrieved by the Payer. For example, to only retrieve Observations of a certain 
type. The _typeFilter, if used, **SHALL** comprise one, or more, valid FHIR 
search queries for the respective resource being filtered.

NOTE: When constructing search queries to incorporate into a _typeFilter, Search parameters 
supported by the relevant profiles from the PDex, US Core or CARIN Blue Button IGs **SHALL**
be followed.

The overall workflow for Bulk Payer-to-Payer Exchange is shown in the diagram below:

<div style="height=auto;width=90%;">
{% include bulk-p2p-exchange.svg %}
</div>


### Access and Refresh Tokens

Implementers **SHOULD** implement OAuth 2.0 access management in accordance with 
the SMART Backend Services Authorization Profile. When SMART Backend Services 
Authorization is used, Bulk Data Status Request and Bulk Data Output File 
Requests with requiresAccessToken=true **SHALL** be protected the same way as
the Bulk Data Kick-off Request, including an access token with scopes that cover 
all resources being exported. A server **MAY** additionally restrict Bulk Data 
Status Request and Bulk Data Output File Requests by limiting them to the client 
that originated the export. Health plans **SHALL** limit the data returned to 
only those FHIR resources for which the client is authorized.

Clients **SHALL** require OAuth client credentials to enable secure access to read 
and search the Group resources and perform Bulk export operations. Access Tokens 
**SHALL** be required to access the Group resources and the Bulk export operation. 
Access and Refresh Tokens **SHALL** be issued to support the client requesting and
subsequently retrieving the bulk data response to their request.

Registering of a client application or service to perform the bulk Payer-to-Payer 
Exchange should be registered in accordance with the approach defined in the 
[SMART App Launch IG](https://hl7.org/fhir/smart-app-launch/client-confidential-asymmetric.html#registering-a-client-communicating-public-keys).
That IG also encourages the use of the OAuth2.0 Dynamic Client Registration Protocol 
(DCRP). An alternative approach that is closely aligned with the DCRP protocol is 
to use the B2B protocols detailed in the [HL7 Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/STU1/) 
IG.

### Scopes for Operations

[SMART App Launch STU 2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch)
defines granular scopes for resources. Following the model proposed in the section on
[FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data)
the following scopes are proposed to control access to the Bulk-member-match  
and Da Vinci Data Export Operations for Payer-to-Payer bulk exchange:

- http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/bulk-member-match
- system.Group.u?code=http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS|match

This would be the scope to execute the *bulk-member-match* operation 
and the *davinci-data-export* operation for *payertopayer* exchange with the data export being restricted 
to the Group *id(s)* that the user is authorized to access.


[Next Page - Data Mapping](datamapping.html)
