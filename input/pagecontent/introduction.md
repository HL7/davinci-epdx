[Previous Page - Overview](overview.html)

<div class="stu-note">

<b><i>This page has been updated to reflect the release of the CMS Prior Authorization Rule (CMS-0057).
The guide has also been updated to support the adoption of US Core 6.1.0, in addition to existing support for US Core 3.1.1. This change is implemented to enable implementers to comply with both the
CMS-0057 Rule and the ONC's HTI-1 rule that implements US Core 6.1.0 as the base standard of US Core
as of January 1, 2026.</i></b>

</div>

The PDex Implementation Guide (IG) identifies three actors and specifies three interactions that occur. Each interaction differs based upon the actors involved and the data payload that is being communicated. 

**Actors:**
1. Health Plans.
2. Providers.
3. Third-Party Applications.
  
**Interactions:**
1. Payer to Provider Exchange using CDS Hooks.
2. Member-authorized Health Plan to Health Plan Exchange.
3. Member-authorized Health Plan to Third Party Applications. 

### PDex STU2.1

The STU2.1 Version of the PDex IG introduces two important new Interactions:

1. Payer-to-Payer Bulk Exchange.
2. Payer-Provider Bulk Exchange.
	
Payer-Provider Bulk Exchange is a bulk exchange of data for Members that have not chosen to opt-out
of data sharing with providers. This exchange effectively supercedes the original Payer Provider 
exchange that used CDS Hooks.

Payer-to-Payer Bulk Exchange is a bulk exchange of data for Members that have opted in to enable a 
payer to retrieve data from a prior plan.

### Interaction with CARIN Consumer-Directed Exchange IG

The Blue Button 2.0 initiative (The CMS Blue Button 2.0 API and the CARIN Consumer-Directed Exchange IG) specifies the profiles used to communicate claims information between health plans and their members. The PDex Implementation Guide (IG) is focused on presenting a member's health and claims information as FHIR clinical profiles (based on US Core) that are more easily consumed by Electronic Medical Records (EMR) systems. 
                                                                                                          
Ad-hoc PDex Member History Requests via CDS Hooks provides a mechanism for providers/clinicians to request information from health plans about the medical history of their patient as part of their regular workflow.  The requestor should be aware that the Health Plan may not have a complete medical history of services provided due to delays in billing, patient ability to pay for services, etc.

The same FHIR profiles used to support communication between the health plan and providers will also be used to provide the payload of member health information which will be exchanged between health plans when authorized by a health plan member.

While the authorization and communication mechanisms may differ between the provider-to-payer exchange and the member-authorized  Payer-to-Payer exchange or member-authorized Payer to Third-Party Application exchange the API interactions and data formats may be the same.  

The objective with the above approach is to:

- Minimize the proliferation of FHIR profiles by encouraging the re-use of FHIR profiles that have seen significant development effort invested by stakeholders across health care systems.
- Consolidate the number of operational interfaces that health plans and  EMR systems need to maintain in order to meet regulatory requirements.

### Implementation Guide Scope

The first release of the PDex IG will focus on the following in-scope items. Items in the deferred scope category will be considered for future iterations of the IG or will be accommodated via an alternative Da Vinci Use Case. Out of scope items are not being considered at this time.
	
#### In Scope
	
- Ambulatory Care Provider queries.
- Member-authorized Payer-to-Payer information exchange.
- Member-authorized Payer-to-Third-Party Application information exchange.
	
#### Deferred Scope
	
- In Patient Care Provider queries.
- Provider initiated data push.
	
#### Out of Scope
	
- Wearable device data.

### Member Consent

Member/Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider-Health Plan Exchange
2. Member-mediated Information Exchange.


#### Payer-to-Payer Exchange

Under the CMS Prior Authorization Rule (CMS-0057) the Payer-to-Payer API is an op-in API. A member must
actively opt-in to have their payer retrieve data from their prior payer. The member must provide the 
necessary coverage and demographics information to their health plan to enable them to be matched by their
prior payer.

Claims and Encounter data included in the data exchange is required to exclude financial data.

#### Provider-Health Plan Exchange

Provider-Health Plan exchange of data is covered by the Health Insurance Portability and Accountability Act (HIPAA) under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) provision. 

Under the CMS Prior Authorization Rule (CMS-0057) the Provider Access API is an opt-out API. A member's
data is included by default in an exchange with an in-network provider unless the member has chosen to
opt-out of sharing with any providers.

Claims and Encounter data included in the data exchange is required to exclude financial data.


#### Member-mediated Information Exchange

The CMS Interoperability and Patient Access Rule requires that a member to a new health plan **SHALL** be able to request that their information be passed from their old health plan to their new health plan.

The CMS rule also specifies that all data from the member's health record that is held by the health plan since January 1, 2016, be available via API.

A Member **SHALL** also be able to use APIs to share information with Third Party Applications. 

The Member-mediated Information Exchange method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The process of Member Authentication, typically using the member's user credentials from the Health Plan's portal, and OAuth2.0 authorization to share will form the basis of the member Consent to share.

The health history payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.

The exchange of healthcare network/directory information and Pharmacy network/directory information is covered in the [PDex-Plan-Net IG](http://hl7.org/fhir/us/davinci-pdex-plan-net/).

The exchange of Prescription drug formulary information is covered in the [PDex-formulary IG](http://hl7.org/fhir/us/Davinci-drug-formulary/).

The OAuth2.0-based exchange is covered in detail in the [Member-Authorized OAuth2 Exchange](member-authorizedoauth2exchange.html).

### Supporting Specifications

This Implementation Guide is dependent on other specifications. Please submit any comments you have on these base specifications as follows:

- Feedback on CDS Hooks should be posted to the CDS Hooks [GitHub Issue List](https://github.com/cds-hooks/docs/issues)

- Feedback on this Implementation Guide and supporting HL7 specifications should be submitted as issue tickets via the [HL7 FHIR Jira system](https://jira.hl7.org/secure/Dashboard.jspa). Login to Jira and create an issue. Next enter the following information to identify the relevant specification:

Project: FHIR Specification Feedback
Issue Type: Change Request
Specification:

- FHIR Core (FHIR)
- US Core (FHIR)
- US Da Vinci PDex (FHIR).

Individuals interested in participating in Payer Data exchange (PDex) or other HL7 Da Vinci projects can find information about the Da Vinci accelerator project [here](http://www.hl7.org/about/davinci).

#### FHIR

This Implementation Guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this Implementation Guide.


* [FHIR overview](http://hl7.org/fhir/R4/overview.html)
* [Developer's Introduction](http://hl7.org/fhir/R4/overview-dev.html)
* [Clinical Introduction](http://hl7.org/fhir/R4/overview-clinical.html)
* [FHIR data types](http://hl7.org/fhir/R4/datatypes.html)
* [Using codes](http://hl7.org/fhir/R4/terminologies.html)
* [References between resources](http://hl7.org/fhir/R4/references.html)
* [How to read resource and profile definitions](http://hl7.org/fhir/R4/formats.html)
* [Base resource](http://hl7.org/fhir/R4/resource.html).

### Implementation Assumptions

Wherever possible, the PDex IG will use established [US Core STU 3.1.1 Profiles]({{site.data.fhir.ver.uscore3}}) or [US Core STU 6.1.0 Profiles]({{site.data.fhir.ver.uscore6}}). Where information must be presented in FHIR resources that fall outside of the US Core Implementation Guide (IG) the HL7 Da Vinci Health Record exchange (HRex) IG will define the necessary Da Vinci FHIR profiles or will refer to other Implementation Guides, as necessary.

Where profiles are specific to the PDex use case, the profiles will be defined in this guide.

#### Implementation Hierarchy and Priorities

The PDex Implementation Guide (IG) will utilize existing HL7 FHIR Profiles in the following order of descending priority:

1. HL7 FHIR US Core STU3 v3.1.1 (based on FHIR R4 - [{{site.data.fhir.ver.uscore3}}/STU3.1.1]({{site.data.fhir.ver.uscore3}}))
2. HL7 FHIR US Core STU6 v6.1.0 (based on FHIR R4 - [{{site.data.fhir.ver.uscore}}/STU6.1]({{site.data.fhir.ver.uscore6}}))
3. Da Vinci HRex IG profiles (based on FHIR R4 - [http://hl7.org/fhir/us/davinci-hrex/](http://hl7.org/fhir/us/davinci-hrex/) ).

Note: The ONC HTI-1 rule has set a date for January 1, 2026 when US Core 6.1.0 becomes the base standard, superceding US Core 3.1.1. 
Prior to that date Implementers may choose to implement either version of US Core.

This Implementation Guide recognizes that Electronic Medical Record systems used by providers may have existing FHIR APIs that are based on versions of FHIR prior to FHIR R4, with DSTU2 (Argonaut) being the most popular implementation.

Amongst Health Plans there has been limited adoption of FHIR specifications and FHIR APIs. Therefore, for profiles and APIs identified in this IG, the FHIR R4 version **SHALL** be used.

### PDex Data Payloads

The PDex IG defines four types of data payload:

1. Member Membership, Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary.

The CMS Interoperability rule requires Health Plans to make available data they hold for a member from Jan 1, 2016, onwards. When data is transferred from one plan to another the receiving health plan is only obligated to share the data received from another health plan in the same electronic form and format in which it was received.   

The Directory and Formulary data payloads are covered in their respective Da Vinci Implementation Guides.

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

The FHIR CapabilityStatement defines the resources and operations supported by the resources exposed via the FHIR API.

The Read and Search Operations **SHALL** be supported for the FHIR Profiles covered in this payload section. The V-Read and History operations **MAY** be supported.

#### Member Health History

The FHIR Resources that comprise the Member Clinical and Claims-derived history, otherwise referred to as the "Member Health History"  **SHOULD** include the following profiles where payers have data to support the use of those profiles:

##### US Core

This IG supports three versions of US Core that represents a member's health history.

- US Core 3.1.1
- US Core 6.1.0
- US Core 7.0.0

To understand the changes between US Core 3.1.1, US Core 6.1.0 and US Core 7.0.0 check out the [Cross Version Comparisons Section]({{site.data.fhir.ver.uscore6}}/changes-between-versions.html#cross-version-comparisons) section of the US Core 6.1.0 and US Core 7.0.0. IGs.

##### US Core Profiles (STU3 - 3.1.1)

- [US Core AllergyIntolerance Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-allergyintolerance.html)
- [US Core CarePlan Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-careplan.html)
- [US Core CareTeam Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-careteam.html)
- [US Core Condition Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-condition.html)
- [US Core DiagnosticReport Profile for Laboratory Results Reporting]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-diagnosticreport-lab.html)
- [US Core DiagnosticReport Profile for Report and Note exchange]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-diagnosticreport-note.html)
- [US Core DocumentReference Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-documentreference.html)
- [US Core Encounter Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-encounter.html)
- [US Core Goal Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-goal.html)
- [US Core Immunization Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-immunization.html)
- [US Core Implantable Device Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html)
- [US Core Laboratory Result Observation Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)
- [US Core Location Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-location.html)
- [US Core Medication Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medication.html)
- [US Core MedicationRequest Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medicationrequest.html)
- [US Core Organization Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-organization.html)
- [US Core Patient Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-patient.html)
- [US Core Pediatric BMI for Age Observation Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-pediatric-bmi-for-age.html)
- [US Core Pediatric Weight for Height Observation Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-pediatric-weight-for-height.html)
- [US Core Practitioner Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitioner.html)
- [US Core PractitionerRole Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitionerrole.html)
- [US Core Procedure Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-procedure.html)
- [US Core Provenance Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-provenance.html)
- [US Core Pulse Oximetry Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-pulse-oximetry.html)
- [US Core Smoking Status Observation Profile]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-smokingstatus.html).

In addition, US Core 3.1.1 uses the [Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) from the FHIR Specification.

##### US Core Profiles (STU6 - 6.1.0)

- [USCore AllergyIntolerance Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-allergyintolerance.html)
- [USCore CarePlan Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-careplan.html)
- [USCore CareTeam Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-careteam.html)
- [USCore Condition Encounter Diagnosis Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-condition-encounter-diagnosis.html )
- [USCore Condition Problems and Health Concerns Profile]({{site.data.fhir.ver.uscore6}}StructureDefinition-us-core-condition-problems-health-concerns.html)
- [USCore Coverage Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-coverage.html)
- [USCore Implantable Device Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-implantable-device.html)
- [USCore DiagnosticReport Profile for Laboratory Results Reporting]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-diagnosticreport-lab.html)
- [USCore DiagnosticReport Profile for Report and Note Exchange]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-diagnosticreport-note.html) 
- [USCore DocumentReference Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-documentreference.html)
- [USCore Encounter Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-encounter.html)
- [USCore Goal Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-goal.html)
- [USCore Immunization Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-immunization.html)
- [USCore Location Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-location.html)
- [USCore Medication Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-medication.html)
- [USCore MedicationDispense Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-medicationdispense.html)
- [USCore MedicationRequest Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-medicationrequest.html)
- [USCore Observation Clinical Result Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-clinical-result.html)
- [USCore Laboratory Result Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-lab.html)
- [USCore Observation Occupation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-occupation.html)
- [USCore Observation Pregnancy Intent Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-pregnancyintent.html)
- [USCore Observation Pregnancy Status Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-pregnancystatus.html)
- [USCore Observation Screening Assessment Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-screening-assessment.html)
- [USCore Observation Sexual Orientation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-observation-sexual-orientation.html)
- [USCore Simple Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-simple-observation.html)
- [USCore Smoking Status Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-smokingstatus.html)
- [USCore Vital Signs Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-vital-signs.html)
- [USCore Pediatric Head Occipital Frontal Circumference Percentile Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-head-occipital-frontal-circumference-percentile.html)
- [USCore Pediatric BMI for Age Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-bmi-for-age.html)
- [USCore Pediatric Weight for Height Observation Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-pediatric-weight-for-height.html)
- [USCore Blood Pressure Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-blood-pressure.html)
- [USCore BMI Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-bmi.html)
- [USCore Body Height Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-height.html)
- [USCore Body Temperature Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-temperature.html)
- [USCore Body Weight Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-body-weight.html)
- [USCore Head Circumference Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-head-circumference.html)
- [USCore Heart Rate Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-heart-rate.html)
- [USCore Pulse Oximetry Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-pulse-oximetry.html)
- [USCore Respiratory Rate Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-respiratory-rate.html)
- [USCore Organization Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-organization.html)
- [USCore Patient Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-patient.html)
- [USCore Practitioner Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-practitioner.html)
- [USCore PractitionerRole Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-practitionerrole.html)
- [USCore Procedure Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-procedure.html)
- [USCore Provenance Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-provenance.html)
- [USCore QuestionnaireResponse Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-questionnaireresponse.html)
- [USCore RelatedPerson Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-relatedperson.html)
- [USCore ServiceRequest Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-servicerequest.html)
- [USCore Specimen Profile]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-specimen.html)

##### US Core Profiles (STU6 - 7.0.0)

**TO BE DONE**

##### Da Vinci PDex / HRex

- [HRex Coverage](http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-coverage.html)
- [PDex Provider Consent](StructureDefinition-pdex-provider-consent.html)
- [PDex Device](StructureDefinition-pdex-device.html)
- [PDex PriorAuthorization](StructureDefinition-pdex-priorauthorization.html)
- [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.html) - USCore 3.1.1 implementations only. Superceded by MedicationDispense profile in US Core 6.1.0 and US Core 7.0.0
- [PDex Provenance](StructureDefinition-pdex-provenance.html).

#### CapabilityStatement (STU3 - US Core 3.1.1)

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

{% include style_insert_table_blue.html %}

| Resource Type      | Profile                                                                            | Read | V-Read | Search | History | Create |
|--------------------|------------------------------------------------------------------------------------|------|--------|--------|---------| |
| AllergyIntolerance | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-allergyintolerance.html | Y    | Y      | Y | Y       | |
| CarePlan           | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-careplan.html           | Y    | Y      | Y      | Y       | |
| CareTeam           | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-careteam.html           | Y    | Y      | Y    | Y       | |
| Condition          | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-condition.html          | Y    | Y      | Y     | Y       | |
| Consent            | StructureDefinition-pdex-provider-consent.html                             | Y    | Y      | Y      | Y       | Y |
| Coverage                                                  | http://hl7.org/fhir/us/davinci-hrex/2019Jun/StructureDefinition-hrex-coverage.html | Y    | Y      | Y      |  Y       | |
| Device                                                    | http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-device.html         | Y    | Y      | Y      | Y       | |
| DiagnosticReport for Laboratory Results Reporting         | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-diagnosticreport-lab.html | Y    | Y      | Y     | Y       | |
| DiagnosticReport for Report and Note Exchange             | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-diagnosticreport-note.html | Y    | Y      | Y      | Y       | |
| DocumentReference                                         | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-documentreference.html | Y    | Y      | Y       | Y       | |
| Encounter                                                 |{{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-encounter.html         | Y    | Y      | Y       | Y       | |
| Goal                                                      | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-goal.html             | Y    | Y      | Y     | Y       | |
| Immunization                                              | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-immunization.html     | Y    | Y      | Y      | Y       | |
| Implantable Device                                        | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-implantable-device.html | Y    | Y      | Y      | Y       | |
| Laboratory Result Observation                             | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-observation-lab.html | Y    | Y      | Y      | Y       | |
| Location                                                  | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-location.html         | Y    | Y      | Y      | Y       | | 
| Medication                                                | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medication.html       | Y    | Y      | Y      | Y       | |
| MedicationDispense                                        | http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-medicationdispense.html | Y    | Y      | Y      | Y       | |
| MedicationRequest                                         | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-medicationrequest.html | Y    | Y      | Y      | Y       | |
| Organization                                              | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-organization.html     | Y    | Y      | Y    | Y       | |
| Patient                                                   | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-patient.html          | Y    | Y      | Y      | Y       | |
| Pediatric BMI for Age Observation                         | {{site.data.fhir.ver.uscore3}}/StructureDefinition-pediatric-bmi-for-age.html    | Y    | Y      | Y     | Y       | |
| Pediatric Head Occipital Frontal Circumference Percentile | {{site.data.fhir.ver.uscore3}}/StructureDefinition-head-occipital-frontal-circumference-percentile.html | Y    | Y      | Y      | Y       | |
| Pediatric Weight for Height Observation                   | {{site.data.fhir.ver.uscore3}}/StructureDefinition-pediatric-weight-for-height.html | Y    | Y      | Y      | Y       | |
| Practitioner                                              | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitioner.html     | Y    | Y      | Y      | Y       | |
| PractitionerRole                                          | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitionerrole.html | Y    | Y      | Y      | Y       | |
| Procedure                                                 | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-procedure.html        | Y    | Y      | Y         | Y       | |
| Provenance                                                | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-provenance.html       | Y    | Y      | Y      | Y       | |
| PDex Provenance                                           | http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-provenance.html   | Y    | Y      | Y      | Y       | |
| Pulse Oximetry                                            | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-pulse-oximetry.html   | Y    | Y      | Y    | Y       | |
| Smoking Status Observation                                | {{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-smokingstatus.html    | Y    | Y      | Y       | Y       | |
| Vital Signs                                               | http://hl7.org/fhir/R4/observation-vitalsigns.html                                | Y    | Y      | Y       | Y       | |


#### Healthcare Network Directory 

The provision of a Member-accessible Healthcare Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/)).

#### Pharmacy Network Directory

The provision of a Member-accessible Pharmacy Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/)). A Health Plan's Pharmacy Network **SHOULD** be expressed using the same FHIR profiles used for the Healthcare Network Directory.

#### Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  The provision of a Member-accessible Prescription Drug Formulary API is detailed in the companion, subsidiary Payer Data Exchange Drug Formulary Implementation Guide ([PDex-formulary IG](https://build.fhir.org/ig/HL7/davinci-pdex-formulary/)).


[Next Page: Implementation Guide](ImplementationGuide-hl7.fhir.us.davinci-pdex.html)
