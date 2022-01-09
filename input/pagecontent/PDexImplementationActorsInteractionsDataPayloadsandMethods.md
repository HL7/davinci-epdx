---
title: PDex Implementation, Actors, Interactions, Data Payloads and Methods

---
[Previous Page - Introduction](Introduction.html)

{% include style_insert_table_blue.html %}
This section defines the Actors, Exchange Interactions and Data Payloads covered by the PDex IG.

The Member Health History is represented as a series of FHIR Resources that are based on a superset of [HL7 FHIR US Core](http://hl7.org/fhir/us/core/index.html), HRex and PDex profiles. The content/payload of the Member Health History may be augmented by FHIR resources that are generated outputs from other HL7 Da Vinci IG use cases, such as Coverage Requirements Determination.

### Actors

The following actors are recognized in the PDex IG:

- **Health Plan**: The Insurance entity, or Payer, who handles claims for services provided to their plan members. 
- **Member**: The health plan member / patient who is, or was, a member of a health plan.
- **Provider**: The practitioner or clinician, or their representative, that initiates a data access request to retrieve member data from a health plan.
- **Third-Party Application**: Health Plan Members / Patients have a right under the Health Insurance Portability and Accountability Act of 1996 (HIPAA) to direct the information held by a covered entity, such as a Hospital or Health Plan to a third party of their choosing.

There are different terms used for an individual or patient in the Health Plan industry. Terms such as subscriber or member may be used. A subscriber and a member are not necessarily equivalent. For example, the subscriber may be the primary family member on a plan that covers the entire family. Therefore, the term Member will be used throughout this guide to identify the individual subject of the "member health history".

### Exchange Interactions

The PDex IG is specifying three exchange interactions:
 
1. Providers and Health Plans exchanging information about a Member where the provider has a current or pending treatment relationship.
2. Health Plans via a Member authorized exchange when a Member has moved from enrollment in one health plan to another.
3. Health Plans and Third-Party Applications that a Member has authorized to share their health information that is held by the health plan.

### Data Payloads

The PDex IG defines two types of data payload:

1. Member Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Coverage (HealthPlan Membership data)

All resources and operations available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

See [Data Mapping](DataMapping.html) for details of the Data Payloads and operations.

### Interaction Methods

The PDex IG is focused on provider, member, or plan directed exchange of a member's data. 

All exchanges in this IG are for an individual. Where one member has permission to access the information for another member of the health plan, they should provide appropriate credentials to enable the exchange for that individual. 

The PDex IG specifies three interaction methods. Their use depends upon the Actors involved and the Data Payloads being exchanged.

There are three potential interaction methods:
1. CDS Hooks with SMART on FHIR
2. OAuth 2.0 and FHIR API
3. Payer-to-Payer Exchange

#### CDS Hooks with SMART-on-FHIR

Clinical systems will use the specification and workflows defined by [CDS Hooks](https://cds-hooks.hl7.org/) to initiate Payer Data Exchange  with Health Plans. Implementers must be familiar with all aspects of this specification.

SMART-on-FHIR is expected to be used in conjunction with CDS Hooks in two principal ways:

1. When a new patient books an appointment
2. When a patient returns for an appointment after a significant period (for example, after wintering in a different region).

The CDS Hooks and SMART-on-FHIR application configuration is detailed in [CDS-Hooks](CDS-Hooks.html).

##### Ad-hoc PDex Member History Request

The specification of a SMART-on-FHIR App to initiate a CDS-Hook call to a Health Plan's FHIR API enables:
* The CDS Hook to be fired from an automated workflow based upon EMR events.
* The SMART-on-FHIR triggering app enables an on-demand call to the Health Plan to enable access to a Health Plan member's information.
* The Health Plan to implement one entry point for a request for Member Information, which may require the Health Plan to trigger the compilation of information or perform an initial patient match rather than providing access for a Provider to openly search their member records.

CDS Hooks provides a mechanism for providers/clinicians to request a medical history for their patient from the Health Plan as part of their regular workflow - when scheduling an appointment. However, sometimes clinicians may be interested in updating the patient's medical history without going through the appointment booking steps within their EMR. I.e., They don't want to actually create an appointment, they just want to ask the question "Has anything new happened to my patient at some other location?"

Sometimes clinicians want to check and update a patient's history, for example during a patient review, or responding to a question from a patient. One solution to this need is the use of a SMART on FHIR app that will invoke a CDS Hook. This is possible because many EMR systems provide support for SMART on FHIR. This use of SMART is distinct from the use of SMART in CDS Hooks. This isn't launching a SMART app based upon the contents of a returned card. Instead, it is using SMART to invoke a CDS Hook in place of the EMR. It is emulating the workflow trigger that would normally trigger a hook within an EMR workflow.

The SMART on FHIR CDS Hook trigger approach was pioneered by the [Da Vinci Coverage Requirements Discovery IG](http://hl7.org/fhir/us/davinci%2Dcrd/2019May/) (CRD-IG). Developers interested in using this approach should refer to the CDS Hooks and SMART on FHIR sections of that IG for the latest guidance, examples and links to code samples. 

The PDex IG uses a similar approach to enable a CDS Hook. The CDS Hook used by PDex is:

- Appointment-book

This IG also proposes the creation of a new CDS Hook for the interaction defined in this IG. This hook would be:

- Request-member-history

An overview of the transaction flow is shown in figure 4-1:

![Figure 4-1: CDS-Hooks SMART-on-FHIR Transaction Flow](PDEX-SMART-Hook-SMART-InteractionMethods1.png){:height="auto" width="100%"}
**Figure 4-1: CDS-Hooks SMART-on-FHIR Transaction Flow
 
##### Hook Actions

When a Health Plan server responds to a CDS Hook, one of the possible actions is to allow the user to [invoke a SMART App](https://cds-hooks.hl7.org/1.0/#link). Support for this option by Health Plan systems **SHOULD** be provided. The SMART on FHIR app provided as a link from the returned CDS Hook **SHOULD** enable a clinician to review the available Health Plan's data for their patient, select the data they want to commit to their EMR system and upon confirming their selection, enable the selected data to be written to the clinician's EMR system.

The objective of this flow is to place the decision about the data being deposited into the EMR into the hands of the responsible organization and their providers. This does not prevent an organization from defining data selection criteria that filters Health Plan provided information and automatically importing records that meet their criteria. For the purposes of this IG and accompanying Reference Implementation the manual provider selection method was used to illustrate the record import capability.

The [Da Vinci Documentation Templates and Rules Implementation Guide](http://hl7.org/fhir/us/davinci-dtr/2019Sep/) (DTR-IG) provides additional guidance and expectations on the use of CDS Hook cards to launch SMART Apps and how payer-provided SMART Apps should function.

All requesters (e.g., EHRs) **SHOULD** store provenance associated with any data exchanged as part of this IG if it is committed to their system.

#### OAuth2.0 and FHIR API

The well-defined mechanism for enabling Member/Patient authorization to share information with an application using the FHIR API is to use OAuth2.0 as the Authorization protocol. The member **SHALL** authenticate using credentials they have been issued by the Health Plan. This is typically the member's customer portal credentials.

The member will typically select a third-party application, service or new (target) Health Plan with whom they wish to share data. The member should review and agree with the Terms of Service and a Privacy Policy that details how the application or service will use the member's data from the (source) Health Plan. While authenticated to the application or service, the member **MAY** connect to the (source) Health Plan's authorization server. After authenticating to the (source) Health Plan's authorization server, the Member **SHALL** be presented with an Authorization screen that enables them to approve the sharing of information with their intended application, service or (target) Health Plan. For this authorization to occur the Application, service or (target) Health Plan will require OAuth 2.0 client application credentials that are issued by the (source) Health Plan in order to register an authorization request.

The Authorization process, in accordance with applicable privacy policy, **SHALL** provide a mechanism to support current regulations allowing members the right to decide what information is permitted to be exchanged.  Examples of member authorized restrictions/permissions are 42CFR, State and Federal requirements for sensitive data. 

After successfully authorizing an application an Access Token and Optional Refresh Token **SHALL** be returned to the requesting application. 

The scopes of the access token **SHALL** be restricted to the authorizing Member's information and the scopes approved.

Any subsequent Access Token issued based on the Refresh Token **SHALL** be restricted (at least) to the same restrictions.

The requesting application **SHALL** use the access token to access the Health Plan's secure FHIR API to download the information that the Application is allowed to access. 

The OAuth2.0 Member-authorized exchange is detailed in [Section: Member-Authorized OAuth2.0 Exchange](Member-AuthorizedOAuth2Exchange.html).

An overview of the OAuth2.0 Flow using the FHIR API is shown below for both Health Plan exchange and Third-Party Application Exchange:

![Figure 4-2: Payer-to-Payer Exchange with Member Interaction](Payer-Payer-with-member-InteractionMethods2.png){:height="auto" width="100%"}
**Figure 4-2: Payer-to-Payer Exchange with Member Interaction

![Figure 4-3: Payer to Application Interaction](Payer-App-InteractionMethods3.png){:height="auto" width="100%"}
**Figure 4-3: Payer to Application Interaction

#### Payer-to-Payer Data Exchange

TODO: update link to replace build.fhir.org when HRex publishes.

The Exchange of all of a member's clinical data, as scoped by USCDI version 1 and represented in
FHIR by US Core, is a requirement of the CMS Interoperability Rule.

All PDex Payer to Payer FHIR-based data exchanges in this IG will be limited to the exchange of
data for a single member. Data Exchange for groups of Members is outside the current scope of this IG. Management
of attribution lists for exchange of data for groups of members may be considered in a future version of the IG.

Payer-to-Payer exchange can be accomplished by three methods. 

1. Query all clinical resource individually
2. Patient/{id}/$everything-pdex operation
3. Bulk FHIR Asynchronous protocols

Clients wishing to retrieve data should consult the Data Provider's Server Capability Statement to 
determine which methods are made available by the data holder. 

Please refer to [Section 4.2 - Payer To Payer Exchange](PayerToPayerExchange.html) for details about Payer-to-Payer
exchange workflows and data exchange methods. 


[Next Page - Handling Data Provenance](HandlingDataProvenance.html)
