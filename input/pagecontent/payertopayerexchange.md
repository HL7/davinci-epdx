[Previous Page - Handling Data Provenance](handlingdataprovenance.html)

{% include style_insert_table_blue.html %}

<div class="stu-note">
<b><i>This page has been updated to reflect the release of the CMS Prior Authorization Rule (CMS-0057).
The changes have been made to stay in sync with the bulk transfer requirements of the rule. </i></b>
</div>

The Exchange of all of a member's clinical data, as scoped by USCDI version 1 and represented in FHIR by 
US Core 3.1.1, is a requirement of the CMS Interoperability Rule. This IG also supports the exchange of
USCDI version 3 as represented in FHIR by US Core 6.1.0, to support compliance with the ONC's HTI-1 Rule.

Payers **MAY** choose to implement Payer-to-Payer Exchange for a single member by following the content provided in this section of the IG.

Payers **SHALL** implement the Bulk Payer-to-Payer Exchange detailed in this IG on the [Payer-to-Payer Bulk Exchange](payertopayerbulkexchange.html) page to exchange information for multiple members. Bulk Payer-to-Payer Exchange
**MAY** be used to exchange data for a SINGLE member.

Payer-to-Payer exchange for a single member **MAY** be accomplished by three methods. Clients wishing to retrieve data **SHOULD** consult 
the Data Provider's Server Capability Statement to determine which methods are made available by the data holder. 
Each retrieval method for a single member **SHALL** be preceded by the use of the following interaction to match a member and provide consent:

### Member Match with Consent

<div style="height=auto;width=90%;">
{% include authorization-consent.svg %}
</div>

Health Plans **SHALL** support the $member-match operation.

The steps in the Member Match with Consent process are:

- Establish a secure connection via mTLS
- Use mTLS secure connection to perform OAuth2.0 Dynamic Client Registration to acquire OAuth2.0 client credentials
- Use Client Credentials to acquire OAuth2.0 token to perform $member-match operation
- The $member-match operation uses Patient Demographics and Coverage records to determine if a member is found
- The $member-match operation evaluates the Consent resource for a matched member
- If a member is matched and the Consent request can be complied with (Per Policy request and Date range) a Patient ID is provided to the requesting Payer (Payer2)
- If a Patient ID is returned from $member-match, a request is made to the OAuth2.0 Token endpoint for an OAuth2.0 Access Token which is scoped to the identified shared member
- If a Token is granted the requesting payer performs data retrieval steps using appropriate methods, defined below.

Some of these steps are optional depending on the authorization and trust framework being used.

The process for evaluating consent uses the same logic and decision flow used
in the bulk Payer-to-Payer Exchange. However, the outcome in the Single Member Match operation is different because either Patient information is returned for the Matched Member or an Operation Outcome is returned.

The decision flow is shown below:

<div style="height=auto;width=90%;">
{% include single-member-match-consent-decision-flow.svg %}
</div>

#### The $member-match operation

The $member-match operation is defined in the [HRex member-match operation](http://hl7.org/fhir/us/davinci-hrex/OperationDefinition-member-match.html). The profiles used in the
$member-match Operation are also defined in the [HRex IG](http://hl7.org/fhir/us/davinci-hrex). These are:

- [HRex Patient Demographics Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-patient-demographics.html)
- [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-coverage.html)
- [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html).

The Coverage Profile is used to provide data for the CoverageToMatch and the CoverageToLink parameters in the
$member-match operation. The CoverageToMatch is the information about the prior coverage. The CoverageToLink
is the current coverage for the member at the new/requesting payer.

When no match is found, or if multiple matches are found, a 422 Unprocessable entity status code will be returned.

If the receiving payer matches to a unique member but is unable to comply with the consent request, a
Patient ID **SHALL** NOT be returned in the $member-match response and a 422 status code **SHALL** be
returned with an Operation Outcome which indicates that the consent request could not be complied with.

### Evaluation of Consent

The receiving payer **MAY** store the Consent record for the member.
The following minimal content from the Consent record is used to validate a data request:

- Member Identity is matched
- Consent Policy (Everything or only Non-Sensitive data) matches the data release segmentation capabilities of the receiving payer
- Date period for consent is valid
- Payer requesting retrieval of data is matched.

If a Consent is provided by an Authorized Representative, the person's demographic details should be included as
a **contained** resource (such as Patient or RelatedPerson) within the consent record. The Authorized
Representative should be identified as an actor with an appropriate SecurityRoleType, such as "DPOWATT",
"HPOWATT" or similar value.

The exchange of Consent is being carried out between two covered entities and the content and conditions for an
exchange of consent will be governed by a mutually agreed Trust Framework. The Consent resource's document
reference link would be to a document maintained by the requesting payer. The content of the referenced document
would NOT be used for any determination as part of the automated $member-match operation. The referenced document's
only purpose is to provide evidence of an appropriate signature of the consenting member/patient.

It is expected that the referenced document url/identifier could be used in an out-of-band audit to determine the
validity of a consent request. This would be part of the Trust Framework agreed by the covered entities who
are party to the framework rules.

If the receiving payer matches to a unique member but is unable to comply with the consent request, a
Patient ID **SHALL** NOT be returned in the $member-match response and a 422 status code **SHALL** be
returned with an Operation Outcome which indicates that the consent request could not be complied with.

#### Period of Consent Validity

Here are some scenarios that could inform the decision about an appropriate period of validity for a consent to
exchange health information:

- Medicare has an annual enrollment. This can result in beneficiaries signing up for a new health plan up to 3 months before their new health plan goes into effect.
- When a member's health plan is terminated it is not uncommon for claims and supporting information to be received by the health plan for a period after the plan terminates.
- Some plan beneficiaries may have concurrent coverage. For example, a Medicare and a Medicaid plan may be in effect for a beneficiary for the duration of coverage period. In this scenario health plans may need to exchange information about the beneficiary throughout the period of dual plan coverage to coordinate treatment.

It is a member's option to share their health information with their new health plan. When a member chooses to grant consent for a health plan to retrieve their health data from a prior health plan the proposed period of consent MAY be:

| Scenario  | Consent Start Date | Consent End Date |
|-----------|--------------------|------------------|
| Early Enrollment | Date of enrollment | 90 days after Plan Start Date |
| Immediate Enrollment | Date of enrollment | 90 days after Plan Start Date |
| Concurrent Plan Coverage | Date of enrollment | Plan Period End Date (typically 12 months from plan start date) |

In the case where a match is confirmed the receiving payer will:

- Utilize the consent record to evaluate the request from the requesting payer (Payer2) for data about the matched member. For example, is the old payer able to respond to a request for only non-sensitive data.
- Return a Unique Patient Identifier (Patient FHIR ID) in the $member-match Operation Response.

#### Consent Revocation

The following guidance is provided for a situation where a member wishes to revoke consent for a previously 
granted Payer-to-Payer exchange.

As part of Payer-to-Payer Exchange Consent is gathered by the New Payer.
Since the New Payer has the current relationship with the member it is proposed that the New Payer manages 
the Consent Revocation process. This would involve the New Payer cancelling any recurring request to the 
old payer for new information for the member.

This approach does not preclude the member contacting their old payer and issuing a consent directive to 
block the release of data to the new payer. However, this is anticipated to be a rare occurrence.

#### Consent Request Language

It is recommended that consistent language is used by Payers to present the information to a member when they 
are being asked to grant consent for a Payer-to-Payer exchange of their health information.

You [the Member] are:

- Instructing [New Payer] to retrieve your health information from [Old Payer]
- Instructing the Old Payer to release your health information to [New Payer]
- Requesting all information is to be retrieved, or sensitive data (such as mental health data) should be excluded from the retrieved health information.
- Granting consent for [New Payer] to request data from [Old Payer] for a period of up to 90 days after the activation of your health coverage with [New Payer]

Please note that:
- The scope of data sensitivity is determined by Federal and State regulations that apply in the state in which [Old Payer] operates.
- If [Old Payer] is unable to identify and exclude sensitive data and you have chosen to exclude sensitive data from the request then [Old Payer] will be unable to comply with your request.
- In the case where you have active coverage with both [Old Payer] and [New Payer] the end date for the Consent instruction will be the anticipated end date of the health coverage with [New Payer].

### Data Retrieval Methods

Once Health Plans have completed the Member Access stage of the Exchange the requesting 
Health Plan **SHALL** utilize the access token returned from the Member Access step to 
request/retrieve data using one of the following three methods:

1. Query all clinical resource individually
2. [$patient-everything](https://www.hl7.org/fhir/operation-patient-everything.html) operation
3. Bulk FHIR Asynchronous protocols.

Each of the above data retrieval methods **SHALL** support the retrieval of the profiles and resources identified in the table below.

| Profile                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Resource           |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| [US Core Allergy Intolerance](https://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | AllergyIntolerance |
| [US Core CarePlan](https://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | CarePlan           |
| [US Core CareTeam](https://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | CareTeam           |
| [US Core Condition](https://hl7.org/fhir/us/core/StructureDefinition/us-core-condition)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Condition          |
| [PDex Device](https://hl7.org/fhir/us/davinci-pdex/STU1/StructureDefinition-pdex-device) <br/> [US Core ImplantableDevice](https://hl7.org/fhir/us/core/StructureDefinition/us-core-device)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Device             |
| [US Core DiagnosticReport for Laboratory Results Reporting](https://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab)<br/>[US Core DiagnosticReport for Report and Note Exchange](https://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | DiagnosticReport   |
| [US Core DocumentReference](https://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | DocumentReference  |
| [US Core Encounter](https://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Encounter          |
| [US Core Goal](https://hl7.org/fhir/us/core/StructureDefinition/us-core-goal)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Goal               |
| [US Core Immunization](https://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Immunization       |
| [US Core Location](https://hl7.org/fhir/us/core/StructureDefinition/us-core-location)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Location           |
| [US Core Medication](https://hl7.org/fhir/us/core/StructureDefinition/us-core-medication)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Medication         |
| [PDex MedicationDispense](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | MedicationDispense |
| [US Core MedicationRequest](https://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | MedicationRequest  |
| [US Core Laboratory Result Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab)<br/>[US Core Pediatric BMI for Age Observation](https://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age)<br/>[US Core Pediatric Head Occipital-frontal Circumference Observation](https://hl7.org/fhir/us/core/StructureDefinition/head-occipital-frontal-circumference-percentile)<br/>[US Core Pediatric Weight for Height Observation](https://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height)<br/>[US Core Pulse Oximetry](https://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry)<br/>[US Core Smoking Status Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus)<br/>[VitalSigns](https://hl7.org/fhir/StructureDefinition/vitalspanel) | Observation  |
| [US Core Organization](https://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Organization |
| [US Core Patient](https://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Patient      |
| [US Core Practitioner](https://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Practitioner |
| [US Core PractitionerRole](https://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | PractitionerRole  |
| [US Core Procedure](https://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)  | Procedure    |
| [HRex Coverage](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-coverage.html) | Coverage |
| [PDex Prior Authorization](StructureDefinition-pdex-priorauthorization.html) | Prior Authorization |
| [PDex Provenance](StructureDefinition-pdex-provenance.html)<br/>[US Core Provenance](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-provenance.html)  | Provenance   |

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

### Query all clinical resources individually

Health Plans **SHALL** support search of a member's clinical data to each USCDI/US Core clinical resource, 
as identified in the table above. Using the search capability of each resource enables the _revInclude 
and _include parameters to be used to retrieve the associated Provenance and supporting records.

### $everything operation

Health Plans **SHOULD** support the use of the $everything operation. The Patient/{id}/$everything 
operation is defined in the FHIR R4 specification here:
[https://www.hl7.org/fhir/operation-patient-everything.html](https://www.hl7.org/fhir/operation-patient-everything.html).

As noted in the previous section, $everything **SHOULD** limit the data retrieved to that which the
requester is permitted to access. This might require an implementer to filter records at a more 
granular level than the resource.

The following resource/profiles relevant to the PDex IG are retrievable using the $everything operation:

Example of _type parameter:

    _type= AllergyIntolerance,CarePlan,CareTeam,Condition,Device,DiagnosticReport,DocumentReference,Encounter,
           Goal,Immunization,Medication,MedicationDispense,MedicationRequest,Observation,Patient,Procedure,Provenance

The server **SHOULD** filter the ExplanationOfBenefit resource to include only PDex Prior Authorization 
profiled records. e.g., ExplanationOfBenefit.use does not equal "claim". 

### Bulk FHIR Asynchronous protocols

    /Patient/$export

Payer-to-Payer Data Exchange **SHOULD** support the use of Bulk FHIR methods, as defined in the HL7 FHIR
[Bulk Data Access Implementation Guide](http://hl7.org/fhir/uv/bulkdata/STU2/). The
request/retrieval of data **SHOULD** use the [FHIR Bulk Data Patient Level
Export](http://hl7.org/fhir/uv/bulkdata/STU2/OperationDefinition-patient-export.html) and the[Bulk Data Export Operation Request Flow](http://hl7.org/fhir/uv/bulkdata/STU2/export.html#bulk-data-export-operation-request-flow).

The Patient Export Operation for Payer-to-Payer exchange should be constrained to the resources and
profiles that the requester is permitted to access, such as the profiles identified in the table in 
the [Data Retrieval Methods](payertopayerexchange.html#data-retrieval-methods) section of this page.

The _typeFilter parameter can be used to scope resources using search parameters to exclude resources 
that are not required, such as non-clinical resources.

### Constraining Data Based Upon Permissions of the Requestor

The FHIR Server **SHALL** constrain the data returned from the server to a requester based upon the access
permissions of the requester.

For example, if a requester queries for ExplanationOfBenefit resources but they are only allowed to see
Prior Authorization records, and not EOB Claims, the FHIR Server **shall** filter the data accordingly.

This Constraining condition may be required in implementations where multiple types of data are being
served up by a single FHIR Server. The condition is particularly relevant when implementing Operations
such as $everything or $export. See the sections below.

### Authorization and Trust Framework

#### Future Direction for Discovery and Registration

Future versions of this IG are expected to transition from the current discovery and registration process.  The
current process, outlined on this page, utilizes a git repository of mTLS endpoint bundles that are used to
create a secure mTLS connection. That connection is then used to access an OAuth2.0 Dynamic Client Registration (DCRP)
endpoint to register for a set of client credentials. Those credentials provide access to the $member-match operation.

A future workflow is likely to use the FAST National Directory to find other payers that are in a common trust
framework. The endpoint information for those payers would point to a Unified Data Access Profiles service,
as defined in the FHIR At Scale Taskforce (FAST)
[Security for Scalable Registration, Authentication, and Authorization IG](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/). UDAP would be used to
request a client credential that can be used to perform a $member-match and subsequently to request an
OAuth2.0 token that is scoped to the member/patient returned from a successful match operation.

#### mTLS Endpoint Discovery

Payers need two capabilities in order to establish trusted connections with other Payers:

1. A Discovery or Directory Service to be able to find other endpoints
2. A Trust Framework in which both parties are members.

In the absence of a Trusted Exchange Framework and Common Agreement (TEFCA) or National Endpoint Directory
service for Payers an interim solution is required. For this purpose, a public git repository will be
established that will be used to store signed mTLS endpoint bundles.

Each Payer will create an mTLS bundle. The bundle will be signed by a Certificate Authority (CA) using
public/private keys. The Endpoint will also be "endorsed" by a Trust Framework Manager using a certificate.
The Trust Framework endorsement process is detailed below in the Trust Framework section of this page.

The mTLS Endpoint Bundle is profiled in this IG. It consists of an Endpoint And two Organization profiles:
One for the Health Plan and One for the Managing Organization that operates the endpoint.
These profiles use the National Directory (NDH) IG Profiles.

For Payers to establish a secure mTLS connection with another Payer there needs to be a discovery service.
In the absence of a Trusted Exchange Framework and Common Agreement (TEFCA) or National Endpoint Directory
service for Payers an interim solution is required. For this purpose, a public git repository will be
established that will be used to store signed mTLS endpoint bundles. A test version of that repository
has been established here: [https://github.com/HL7-DaVinci/pdex-payer-payer](https://github.com/HL7-DaVinci/pdex-payer-payer). The repository
includes some supporting tools and documentation relating to mTLS discovery.

Each Payer will create an mTLS bundle. The bundle will be signed by a Certificate Authority (CA) using p
ublic/private keys. The public key is included in the Endpoint record that is provided in the bundle.
A public key should also be provided by the Trust Framework that is overseeing the Payer-to-Payer exchange
process. The Associated Servers Extension will identify the PDex IG Base URI and the OAuth2.0 Dynamic
Client Registration Protocol Endpoint. The PDex Capability Statement can be retrieved from [BASE URI]/metadata.
The security section within the Capability Statement will define the SMART-on-FHIR endpoints for Access Tokens.
The Registration Endpoint will only be accessible via the mTLS connection established using the mTLS endpoint
information in the bundle.

The mTLS Endpoint Bundle is profiled in this IG. It consists of an Endpoint and two Organization profiles
(One for the Health Plan, the other for the Operating entity that manages the Endpoint). These profiles
use the National Directory (NDH) IG Profiles.

The profiles are:

- [mTLS Endpoint Bundle](StructureDefinition-mtls-bundle.html)
- [National Directory NDH Exchange Endpoint](https://build.fhir.org/ig/HL7/fhir-us-ndh/StructureDefinition-ndhEx-Endpoint.html)
- [National Directory NDH Base Organization](https://build.fhir.org/ig/HL7/fhir-us-ndh/StructureDefinition-ndh-Organization.html).

The profiles in the mTLS bundle are modeled after the profiles in the National Directory (NDH) IG. The
National Directory is not yet operational. Therefore, it is outside the scope of this IG to define search
methods into the National Directory. In the interim payers will need to download the Git repository and
perform searches against the bundles to identify other payers and extract the relevant data.

##### Trust Framework

A Trust Framework is a construct where the parties to the framework agree to a common set of operating rules.
A manager of the Trust Framework would be appointed to administer the framework: the Trust Manager. This would
involve the issuing and revocation of certificates that validate an organization's membership of the framework.

The Trust Manager responsibilities include:

- Obtain and manage a Signing Certificate from a Trusted CA.
- Manage submissions from Payers that includes their public identity certificate and completed Framework agreement. The Framework agreement confirms their participation in the Trust Framework and observation of the Trust Framework operating requirements.

The management of payer submissions involves the following steps:

1. Verifying the identity certificate.
2. Verifying the signature to the Framework agreement.
3. Signing the payer's public identity certificate  with a digital signature.
4. Returning the signed payer's public identity certificate and the public Trust Framework signing certificate to the payer.

Upon completion of the submission process the Payer creates the endpoint and includes the signed payer public
identity certificate and the public Trust Framework signing certificate into an Endpoint resource.
This is incorporated into a bundle that includes the Payer's organization record and the organization record
for the organization that manages the endpoint. Where the organization is both the payer and the managing
organization there should still be two Organization records created.

The completed bundle would be posted to a new branch of the public GitHub Repository.

The Trust Manager would be responsible for reviewing and merging bundles submitted via a new branch of the
GitHub repository into the main branch of the Repository.

Trust Framework members are responsible for refreshing their copy of the main branch of the GitHub repository
which would be used to refresh and update their list of mTLS and Authentication Endpoints for current
validated members of the Trust Framework.

#### OAuth2.0 Dynamic Client Registration

Once payers have setup a secure mTLS connection, the new Payer will query the Dynamic Client Registration Protocol
(DCRP) endpoint of the target (old) payer to obtain a client credential with scopes that enable queries to be
made to the $member-match operation endpoint.

### Request Access Token for Member Access

In step 3 of the Member-match process, the requesting Payer will have received a FHIR ID for the matched member
(the MemberMatch ID). This Id should be submitted to the Access Token Endpoint with a JWT where the subject Id
is the MemberMatch ID. The Authorization Server **SHOULD** use the Subject ID, confirms that consent for the
Requesting Payer to access the Matched Member is still valid and therefore issue an access token that is scoped
to the FHIR ID of the matched member, consequently bounding any subsequent FHIR API request to that specific
Patient FHIR ID.

### Scopes for Operations

[SMART App Launch STU2.1](http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch)
defines granular scopes for resources. Following the model proposed in the section on
[FHIR Resource Scope Syntax](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html#scopes-for-requesting-context-data)
the following scope is proposed to control access to the member-match  
Operations for Payer-to-Payer single-member exchange:

- http://hl7.org/fhir/us/davinci-hrex/OperationDefinition/member-match

This would be the scope to execute the *single-member-match* operation
for *payer-to-payer* exchange with any subsequent export being restricted
to the Patient *id(s)* that the user is authorized to access.

[Next Page - Payer-to-Payer Bulk Exchange](payertopayerbulkexchange.html)
