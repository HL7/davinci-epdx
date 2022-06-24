[Previous Page - Handling Data Provenance](HandlingDataProvenance.html)

{% include style_insert_table_blue.html %}

TODO: update link to replace build.fhir.org when HRex publishes.

The Exchange of all of a member's clinical data, as scoped by USCDI version 1 and represented in 
FHIR by US Core, is a requirement of the CMS Interoperability Rule.

All PDex Payer to Payer FHIR-based data exchanges in this IG will be limited to the exchange of
data for a single member. Data Exchange for groups of Members is outside the current scope of this IG. Management
of attribution lists for exchange of data for groups of members may be considered in a future version of the IG.

Payer-to-Payer exchange can be accomplished by three methods. Clients wishing to retrieve data should consult
the Data Provider's Server Capability Statement to determine which methods are made available by the
data holder. Each retrieval method **SHALL** be preceded by the use of the following interaction to match a member
and provide consent:

### Member Match with Consent

<div style="height=auto;width=90%;">
{% include authorization-consent.svg %}
</div>

Health Plans **SHALL** support the $member-match operation.

The steps in the Member Match with Consent process are:

- Establish a secure connection via mTLS
- Use mTLS secure connection to perform OAuth2.0 Dynamic Client Registration to acquire OAuth2.0 client credentials
- Use Client Credentials to acquire OAuth2.0 token to perform $MemberMatch operation
- The MemberMatch operation uses Patient Demographics and Coverage records to determine if a member is found
- The $MemberMatch operation evaluates the Consent resource for a matched member
- If a Member is matched and the Consent request can be complied with (Per Policy request and Date range) a MemberMatch ID is provided to the requesting Payer (Payer2)
- If a MemberMatch Id is returned from $MemberMatch, a request is made to OAuth2.0 Token endpoint for an OAuth2.0 Access Token that is scoped to the identified shared member.
- If a Token is granted the requesting payer performs data retrieval steps using appropriate methods, defined below.

The $MemberMatch operation is defined in the [Hrex MemberMatch operation](http://hl7.org/fhir/us/davinci-hrex/OperationDefinition-member-match.html). The profiles used in the Member Match Operation are also defined in the [HRex IG](http://hl7.org/fhir/us/davinci-hrex). These are:

- [HRex Patient Demographics Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-patient-demographics.html)
- [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-coverage.html)
- [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html)

The Coverage Profile is used to provide data for the CoverageToMatch and the CoverageToLink parameters in the MemberMatch operation. The CoverageToMatch is the information about the prior coverage. The CoverageToLink is the current coverage for the member at the new/requesting payer.

In the case where a match is confirmed the receiving payer will:

- Utilize the consent record to evaluate the request from the requesting payer (Payer2) for data about the matched member. For example, is the payer able to respond to a request for only non-sensitive data.
- Return a Unique MemberMatch Identifier in the $MemberMatch Operation Response.

If the receiving payer is unable to comply with the consent request a MemberMatch ID is NOT returned in the $MemberMatch response.

#### Consent Revocation

The following guidance is provided for a situation where a member wishes to revoke consent for a previously grannted Payer-to-payer exchange.

As part of Payer-to-Payer Exchange Consent is gathered by the New Payer.
Since the New Payer has the current relationship with the member it is proposed that the New Payer manages the Consent Revocation process. This would involve the New Payer cancelling any recurring request to the old payer for new information for the member.

This approach does not preclude the member contracting their old payer and issuing a consent directive to block the release of data to the new payer. However, this is anticipated to be a rare occurrence.

#### Consent Request Language

It is recommended that consistent language is used by Payers to present the information to a member when they are being asked to grant consent for a Payer-to-Payer exchange of their health information.

You [the Member] are:

- Instructing [New Payer] to retrieve your health information from [Old Payer]
- Instructing the Old Payer to release your health information to [New Payer]
- Requesting all information is to be retrieved, or sensitive data (such as mental health data) should be excluded from the retrieved health information.
- Granting consent for [New Payer] to request data from [Old Payer] for a period of up to 90 days after the activation of your health coverage with [New Payer]

Please note that:
- The scope of data sensitivity is determined by Federal and State regulations that apply in the state in which [Old Payer] operates.
- If [Old Payer] is unable to identify and exclude sensitive data and you have chosen to exclude sensitive data from the request then [Old Payer] will be unable to comply with your request.
- In the case where you have active coverage with both [Old Payer] and [New Payer] the ennd date for the Consent innstruction will be the anticipated end date of the health coverage with [New Payer]


### Evaluation of Consent

The receiving payer **MAY** store the Consent record for the member. 
The following minimal content from the Consent record is used to validate a data request:

- Member Identity is matched
- Consent Policy (Everything or only Non-Sensitive data) matches the data release segmentation capabilities of the receiving payer
- Date period for consent is valid
- Payer requesting retrieval of data is matched

If a Consent is provided by an Authorized Representative the person's demographic details should be included as a **contained** resource (such as Patient or RelatedPerson) within the consent record. The Authorized Representative should be identified as an actor with an appropriate SecurityRoleType, such as "DPOWATT", "HPOWATT" or similar value.

#### Period of Consent Validity

Here are some scenarios that could inform the decision about an appropriate period of validity for a consent to exchange health information:

- Medicare has an annual enrollment. This can result in beneficiaries signing up for a new health plan up to 3 months before their new health plan goes into effect.
- When a member's health plan is terminated it is not uncommon for claims and supporting information to be received by the health plan for a period of time after the plan terminates.
- Some plan beneficiaries may have concurrent coverage. For example, a Medicare and a Medicaid plan may be in effect for a beneficiary for the duration of coverage period. In this scenario health plans may need to exchange information about the beneficiary throughout the period of dual plan coverage in order to coordinate treatment.

It is a member's option to share their health information with their new health plan. When a member chooses to grant consent for a health plan to retrieve their health data from a prior health plan the proposed period of consent MAY be:

| Scenario  | Consent Start Date | Consent End Date |
|-----------|--------------------|------------------|
| Early Enrollment | Date of enrollment | 90 days after Plan Start Date |
| Immediate Enrollment | Date of enrollment | 90 days after Plan Start Date |
| Concurrent Plan Coverage | Date of enrollment | Plan Period End Date (typically 12 months from plan start date) |

#### Alternate Data Retrieval Flow

<div style="height=auto;width=90%;">
{% include credential-consent-flow.svg %}
</div>

<p id="publish-box">
NOTE: Ballot Feedback sought regarding where and hoe the scoping and consent verification steps are performed after a successful MemberMatch.
</p>

The choices to perform the scoping and consent verification are:

1. As part of the OAuth transaction that receives the MemberMatch ID
2. During the data retrieval for each resource or operation endpoint that is accessed.


### Data Retrieval Methods

Once Health Plans have completed the Member Access stage of the Exchange the requesting Health Plan **SHALL** utilize the access token returned from the Member Access step to request/retrieve 
data using one of the following three methods:

1. Query all clinical resource individually
2. [Patient/{id}/$everything-pdex](OperationDefinition-patient-everything-pdex.html) operation
3. Bulk FHIR Asynchronous protocols

Each of the above methods **SHALL** support the retrieval of the profiles and resources identified in the table below.

| Profile                                                                                                                                                                                                                                                                                    | Resource           |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| [US Core Allergy Intolerance](https://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance)                                                                                                                                                                                 | AllergyIntolerance |
| [US Core CarePlan](https://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan)                                                                                                                                                                                                      | CarePlan           |
| [US Core CareTeam](https://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam)                                                                                                                                                                                                      | CareTeam           |
| [US Core Condition](https://hl7.org/fhir/us/core/StructureDefinition/us-core-condition)                                                                                                                                                                                                    | Condition          |
| [PDex Device](https://hl7.org/fhir/us/davinci-pdex/STU1/StructureDefinition-pdex-device) <br/> [US Core ImplantableDevice](https://hl7.org/fhir/us/core/StructureDefinition/us-core-device)                                                                                                | Device             |
| [US Core DiagnosticReport for Laboratory Results Reporting](https://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab)<br/>[US Core DiagnosticReport for Report and Note Exchange](https://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note) | DiagnosticReport   |
| [US Core DocumentReference](https://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference)                                                                                                                                                                                    | DocumentReference  |
| [US Core Encounter](https://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter)                                                                                                                                                                                                    | Encounter          |
| [US Core Goal](https://hl7.org/fhir/us/core/StructureDefinition/us-core-goal)                                                                                                                                                                                                              | Goal               |
| [US Core Immunization](https://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization)                                                                                                                                                                                              | Immunization       |
| [US Core Location](https://hl7.org/fhir/us/core/StructureDefinition/us-core-location)                                                                                                                                                                                                      | Location           |
| [US Core Medication](https://hl7.org/fhir/us/core/StructureDefinition/us-core-medication)                                                                                                                                                                                                  | Medication         |
| [PDex MedicationDispense](https://build.fhir.org/ig/HL7/davinci-hrex/StructureDefinition-pdex-medicationdispense)                                                                                                                                                                          | MedicationDispense |
| [US Core MedicationRequest](https://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest)                                                                                                                                                                                    | MedicationRequest  |
| [US Core Laboratory Result Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab)<br/>[US Core Pediatric BMI for Age Observation](https://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age)<br/>[US Core Pediatric Head Occipital-frontal Circumference Observation](https://hl7.org/fhir/us/core/StructureDefinition/head-occipital-frontal-circumference-percentile)<br/>[US Core Pediatric Weight for Height Observation](https://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height)<br/>[US Core Pulse Oximetry](https://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry)<br/>[US Core Smoking Status Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus)<br/>[VitalSigns](https://hl7.org/fhir/StructureDefinition/vitalspanel)                                                                           | Observation  |
| [US Core Organization](https://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)                                                                                                                                                                                             | Organization |
| [US Core Patient](https://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)                                                                                                                                                                                                       | Patient      |
| [US Core Practitioner](https://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)                                                                                                                                                                                             | Practitioner |
| [US Core PractitionerRole](https://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole)                                                                                                                                                                                     | PractitionerRole  |
| [US Core Procedure](https://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)                                                                                                                                                                                                   | Procedure    |
| [PDex Provenance](https://hl7.org/fhir/us/davinci-pdex/STU1/StructureDefinition-pdex-provenance)<br/>[US Core Provenance](https://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance)                                                                                                                                                                                                                                   | Provenance   |


### Query all clinical resources individually

Health Plans **SHALL** support search of a member's clinical data to each USCDI/US Core clinical resource, as
identified in the table above. Using the search capability of each resource enables the _revInclude and _include
parameters to be used to retrieve the associated Provenance and supporting records.

### Patient/{id}/$everything-pdex operation

Health Plans **SHALL** support the use of the Patient/{id}/$everything-pdex operation. The $everything-pdex
operation operates as per the Patient/{id}/$everything operation defined in the FHIR R4 specification here:
[https://www.hl7.org/fhir/operation-patient-everything.html](https://www.hl7.org/fhir/operation-patient-everything.html).

However, $everything-pdex limits the data that can be retrieved to the resources and profiles detailed in the table above.

It must be noted that the [Patient/{id}/$everything-pdex](OperationDefinition-patient-everything-pdex.html) operation does not support the full range of query parameters
available to a regular search request. In cases where Provenance is being requested as part of the
$everything-pdex operation this is accomplished by specifying Provenance as one of a list of resources included in
the **_type** parameter of the $everything-pdex operation.

The following resource/profiles are retrievable using the $everything-pdex operation:

Example of _type parameter:

    _type= AllergyIntolerance,CarePlan,CareTeam,Condition,Device,DiagnosticReport,DocumentReference,Encounter,
           Goal,Immunization,Medication,MedicationDispense,MedicationRequest,Observation,Patient,Procedure,Provenance

The $everything-pdex operation should also return resources that are referenced by clinical resources, but are not
directly linked to a patient. These are: Location, Organization, Practitioner and PractitionerRole.

The server *SHOULD* filter the ExplanationOfBenefit resource to include only PDex Prior Authorization profiled records. e.g., ExplanationOfBenefit.use does not equal "claim". 

### Bulk FHIR Asynchronous protocols

    /Patient/{id}/$export

Payer-to-Payer Data Exchange **SHOULD** support the use of Bulk FHIR methods, as defined in the HL7 FHIR
[Bulk Data Access Implementation Guide](https://hl7.org/fhir/uv/bulkdata/authorization/). The
request/retrieval of data **SHOULD** use the [FHIR Bulk Data Patient Level
Export](https://hl7.org/fhir/uv/bulkdata/OperationDefinition-patient-export.html) and the
[Bulk Data Export Operation Request
Flow](https://hl7.org/fhir/uv/bulkdata/export.html#bulk-data-export-operation-request-flow).

The Patient Export Operation for Payer-to-Payer exchange should be constrained to the resources and profiles
identified in the table at the top of this section.


[Next Page - Data Mapping](DataMapping.html)
