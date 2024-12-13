[Previous Page - Home](index.html)

The PDex guide is based on the [HL7 FHIR 4.0.1](http://hl7.org/fhir/R4/) standard, as well as the [CDS Hooks](https://cds-hooks.org/),  [SMART on FHIR](http://docs.smarthealthit.org/) and [OAuth2.0](https://oauth.net/2/) standards, which build additional capabilities on top of FHIR. This architecture is intended to maximize the number of clinical systems that conform to this guide as well as to allow for easy growth and extensibility of system capabilities in the future.

To understand how to read an Implementation Guide implementers should refer to the [How to Read page](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html) in the FHIR Specification.

### FHIR

This implementation guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

- [FHIR Overview](http://hl7.org/fhir/R4/overview.html)
- [Developer's Introduction](http://hl7.org/fhir/R4/overview-dev.html) (or [Clinical Introduction](http://hl7.org/fhir/R4/overview-clinical.html))()
- [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html)
- [Using Codes](http://hl7.org/fhir/R4/terminologies.html)
- [References Between Resources](http://hl7.org/fhir/R4/references.html)
- [How to Read Resource & Profile Definitions](http://hl7.org/fhir/R4/) and additional [IG reading guidance](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html)
- [Base Resource](http://hl7.org/fhir/R4/resource.html)
- [Resource Formats](http://hl7.org/fhir/R4/formats.html)

- This implementation guide supports the [R4](http://hl7.org/fhir/R4/index.html) version of the FHIR standard and builds on the US Core [3.1 (USCDI v1)]({{site.data.fhir.ver.uscore3}}), 
- [6.1 (USCDI v3)]({{site.data.fhir.ver.uscore6}}) and [7.0 (USCDI v4)]({{site.data.fhir.ver.uscore7}}) implementation guides and implementers need to familiarize themselves with the profiles in those guides. The profiles in this IG conform with all three releases of US Core.

This Implementation Guide (IG) also utilizes the profiles detailed in the [HL7 FHIR� US Core Implementation Guide STU3 Release 3.1.1]({{site.data.fhir.ver.uscore3}}), [HL7 FHIR� US Core Implementation Guide STU6 Release 6.1.0]({{site.data.fhir.ver.uscore6}}), or [HL7 FHIR� US Core Implementation Guide STU7 Release 7.0.0]({{site.data.fhir.ver.uscore7}}) based on HL7 FHIR Release 4. This guide addresses use cases for payers to share clinical information with members, their authorized third-party applications, other payers or providers. In addition, the guide adds profiles and operations that are either not available or are unsuited for use by the payer community. An example of this is the MedicationDispense that is used to record the prescription medications supplied by a pharmacy to a health plan member. The relationship between US Core and Payer Data Exchange can be expressed in a Venn diagram as shown below.

This IG also utilizes resources from the FHIR R4 Base Specification. Implementers should therefore refer to the following resources from the base specification:

- [Bundle](http://hl7.org/fhir/R4/bundle.html)
- [CapabilityStatement](http://hl7.org/fhir/R4/capabilitystatement.html)
- [CodeSystem](http://hl7.org/fhir/R4/codesystem.html)
- [Consent](http://hl7.org/fhir/R4/consent.html)
- [Coverage](http://hl7.org/fhir/R4/coverage.html)
- [Device](http://hl7.org/fhir/R4/device.html)
- [DocumentReference](http://hl7.org/fhir/R4/documentreference.html)
- [Encounter](http://hl7.org/fhir/R4/encounter.html)
- [Endpoint](http://hl7.org/fhir/R4/endpoint.html)
- [ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html)
- [Group](http://hl7.org/fhir/R4/group.html)
- [Location](http://hl7.org/fhir/R4/location.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [OperationDefinition](http://hl7.org/fhir/R4/operationdefinition.html)
- [Organization](http://hl7.org/fhir/R4/organization.html)
- [Parameters](http://hl7.org/fhir/R4/parameters.html)
- [Patient](http://hl7.org/fhir/R4/patient.html)
- [Practitioner](http://hl7.org/fhir/R4/practitioner.html)
- [Provenance](http://hl7.org/fhir/R4/provenance.html)
- [SearchParameter](http://hl7.org/fhir/R4/searchparameter.html)
- [StructureDefinition](http://hl7.org/fhir/R4/structuredefinition.html)
- [ValueSet](http://hl7.org/fhir/R4/valueset.html)


<table><tr><td><img width="100%" height="auto" src="PDexAndUSCoreRelationship-v5.png" /></td></tr></table>
  
Implementers of this specification therefore need to understand some basic information about these specifications, which act as building blocks for this Implementation Guide.

The purpose of this Implementation Guide is to enable data to be exchanged between Health Plans (Payers) and Practitioners (Providers) and via Member-authorized exchange between Health Plans and Third-Party Applications, or with other health plans. 

All data exchanged by Health Plans using the interactions covered in this IG **SHALL** be transformed to FHIR R4 resources.  Health Plans **MAY** have both data from clinical and claims sources that they store in their Systems of Record. This IG does not require Health Plans to store this data in FHIR formats, rather only capable of transforming to FHIR resources for the purposes of data exchange with Providers, other Health Plans and Third-Party Applications for the interactions covered in this IG.

**There are items in this guide that are subject to update**. This includes:
- Value Sets
- Code Systems
- Examples.

We have mapped the CARIN Alliance CPCDS as a generic representation of information held by Payers relevant to representation in US Core profiles.

The schematic shown below provides an overview of this transformation.

<table><tr><td><img width="100%" height="auto" src="Payer-Admin-Financial-Clinical-Data-interchange.png" /></td></tr></table>

Health Plans receive data from many other sources that contribute to a Member's Health History. In addition to medical claims Health Plans may receive C-CDA documents or HL7 V2 messages, such as Admit, Discharge, Transfer (ADT) Messages. As an example, the diagram below shows how an ADT Message can be transformed into HL7 FHIR Resources:

<table><tr><td><img width="100%" height="auto" src="MappingFromV2toFHIR.png" /></td></tr></table>

If the same data element is included in the member’s record from multiple sources for the same event, that information only needs to be mapped to FHIR and made available via the Patient Access API once. Payers should look at the data they maintain and ensure that information relevant to the member’s care and treatment over time is accurately represented – in this way, it may not be appropriate to include a single data element only once across multiple events.

Where data is passed via Payer Data Exchange, Payers have the ability to indicate the provenance of the information they are sending. Receiving plans are not required to deduplicate data they have received from other payers or otherwise review or validate the data they receive from another payer.
 
### Exchange Methods

This IG covers three methods of information exchange:
1. CDS-Hooks and SMART-on-FHIR
2. OAuth2.0 or SMART-on-FHIR Member-authorized Exchange
3. $patient-everything exchange via alternate secure channels.

This version of the IG adds new APIs that support the requirements of the CMS Prior Authorization Rule (CMS-0057). 
These APIs are:

- [Provider Access API](provider-access-api.html).
- [Payer-to-Payer Bulk API](payertopayerbulkexchange.html)

Earlier versions of the PDex IG recommended the use of CDS Hooks to enable Provider Access to ember data. That 
method has been superseded by the [Provider Access API](provider-access-api.html) that meets the requirements of
the CMS Prior Authorization Rule (CMS-0057).

#### CDS-Hooks and SMART-on-FHIR

**Note: This section is being considered for removal in the next release of this IG.**

The [PDex Implementation, Actors, Interactions, Data Payloads and Methods](pdeximplementationactorsinteractionsdatapayloadsandmethods.html) section provides an introduction to the CDS Hooks method of exchange. That section also includes information the Actors involved in data exchange and the methods of exchange of the
data payloads covered by this IG.

An overview of the flow of the CDS-Hooks and SMART-on-FHIR exchange is shown in [section 8 - CDS Hooks](http://build.fhir.org/ig/HL7/davinci-epdx/cds-hooks.html#pdex-hooks). This exchange flow is used for communication between Providers and Health Plans. The CDS-Hook will be used to perform a Patient/Member match and return a token that enables a SMART-on-FHIR App to access information via the Health Plan's FHIR API for the matched member.


#### OAuth2.0 or SMART-on-FHIR Member-authorized Exchange

The sharing of data with a member controlled Third Party App is accomplished through the Member's HIPAA Right of Access. As such the member is able to use their data in any way they desire. 

The SMART-on-FHIR application framework is a well-defined mechanism for enabling Member/Patient authorization to share information with a SMART-on-FHIR application. The member **SHALL** authenticate using credentials that have been issued by or are recognized and accepted by the Health Plan. These are typically the member's customer portal credentials for accessing the health plan.

After authenticating the Member **SHALL** be presented with an Authorization screen that enables them to approve the sharing of information with the Third Party, or new Health Plan Application that has client application credentials registered with the Health Plan.


#### $patient-everything Exchange Via Alternate Secure Transport

The [$patient-everything](https://www.hl7.org/fhir/operation-patient-everything.html) operation for an individual member enables the potential use of Bulk FHIR, using such formats as ND-JSON. This IG does not define the alternate secure transport mechanisms that may be used for exchange between Health Plans. However, the IG does allow for the use of Bulk FHIR formats to exchange data for an individual member where the member has authorized that exchange or Federal, state or local regulations authorize the sharing of information between parties. 

The use of the Bulk FHIR specification for transmission of member data **SHALL** honor jurisdictional and personal privacy restrictions that are relevant to a member's health record.

Data Segmentation capabilities for Bulk Data Transfer are currently being developed by FHIR community members which may have an impact on future revisions of the IG.

### Provenance

Since Health Plans compile information from many sources to create a Member's Health History it is important that data traceability is maintained. This guide defines a Provenance resource that is used for this purpose. This resource supplements the US Core Provenance profile which is typically not suited to payer's common use cases. The PDex Provenance profile is used to identify the source of information, and the fact that the payer is acting as the transmitting agent.

Health Plans **SHALL** incorporate provenance records that they receive as part of any exchange of FHIR data. Where a FHIR Provenance resource is not provided, such as when data is received from other non-FHIR sources, the Health Plan **SHOULD** create FHIR Provenance record(s) to identify the source of the information being exchanged. Health Plans **SHALL** provide Provenance records that, at a minimum, indicate that they are playing the role of Transmitter of the data in any PDex information exchange.

In the case of historical data, the Health Plan **SHOULD** identify the author, source and source format of the data.

Retrieving Provenance for resources is accomplished by adding "_revinclude=Provenance:target" to a search request.

Provenance is covered in more detail in [Handling Data Provenance](handlingdataprovenance.html).


[Next Page - Introduction](introduction.html)
