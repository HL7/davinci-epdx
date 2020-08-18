

The PDex Implementation Guide (IG) identifies three actors and specifies three interactions that occur. Each interaction differs based upon the actors involved and the data payload that **SHALL** be communicated. 

**Actors:**
1. Health Plans
2. Providers
3. Third-Party Applications
  
**Interactions:**
1. Payer to Provider Exchange
2. Member-authorized Health Plan to Health Plan Exchange
3. Member-authorized Health Plan to Third Party Applications 
	
The Blue Button 2.0 initiative (The CMS Blue Button 2.0 API and the CARIN Consumer-Directed Exchange IG) specifies the profiles used to communicate claims information between health plans and their members. The PDex Implementation Guide (IG) is focused on presenting a member's health and claims information as FHIR clinical profiles (based on US Core) that are more easily consumed by Electronic Medical Records (EMR) systems. 
                                                                                                          
Ad-hoc PDex Member History Requests via CDS Hooks provides a mechanism for providers/clinicians to request information from health plans about the medical history for their patient as part of their regular workflow.  The requestor should be aware that the Health Plan may not have a complete medical history of services provided due to delays in billing, patient ability to pay for services, etc.

The same FHIR profiles used to support communication between the health plan and providers will also be used to provide the payload of member health information that will be exchanged between health plans when authorized by a health plan member.

The Patient-everything operation is also included as part of this implementation. This is included to provide Health Plans with the ability to pull or push member-authorized health history via a FHIR bundle that can be exchanged over existing, or future, secure transports between trusted parties.

While the authorization and communication mechanisms may differ between the provider-to-payer exchange and the member-authorized  Payer-to-Payer exchange or member-authorized Payer to Third-Party Application exchange the payload of member history will be the same.  
                                                                                                          
The objective with the above approach is to:

- Minimize the proliferation of FHIR profiles by encouraging the re-use of FHIR profiles that have seen significant development effort invested by stakeholders across health care
- Consolidate the number of operational interfaces that health plans and  EMR systems need to maintain in order to meet regulatory requirements.

## Implementation Guide Scope

The first release of the PDex IG will focus on the following in-scope items. Items in the deferred scope category will be considered for future iterations of the IG, or will be accommodated via an alternative Da Vinci Use Case project. Out of scope items are not being considered at this time.
	
### In Scope
	
- Ambulatory Care Provider queries
- Outpatient encounter
- Member-authorized Payer-to-Payer information exchange
- Member-authorized Payer-to-Third-Party-Application information exchange
- Use of Patient-everything operation to enable Payer Push via secure transport
	
### Deferred Scope
	
- In Patient Care Provider queries
- Provider initiated data push
	
### Out of Scope
	
- Wearable device data

## Member Consent

Member/Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider-Health Plan Exchange
2. Member-mediated Information Exchange

### Provider-Health Plan Exchange

Provider-Health Plan exchange of data is covered by the Health Insurance Portability and Accountability Act (HIPAA) under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) ( https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html ) provision.

### Member-mediated Information Exchange

The CMS Interoperability and Patient Access Rule requires that a member to a new health plan **SHALL** be able to request their information be passed from their old health plan to their new health plan.

The CMS rule also specifies that all data from the member's health record that is held by the health plan since January 1, 2016 be available via API.

A Member **SHALL** also be able to use APIs to share information with Third Party Applications. 

The Member-mediated Information Exchange method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The process of Member Authentication, typically using the member's user credentials from the Health Plan's portal, and OAuth2.0 authorization to share will form the basis of the member Consent to share.

The health history payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.

The exchange of Healthcare network/directory information and Pharmacy network/directory information is covered in the [PDex-plan-net IG](http://hl7.org/fhir/us/davinci-pdex-plan-net/2020Feb/) ( http://hl7.org/fhir/us/davinci-pdex-plan-net/2020Feb/ ).

The exchange of Prescription drug formulary information is covered in the [PDex-formulary IG](http://hl7.org/fhir/us/Davinci-drug-formulary//) ( http://hl7.org/fhir/us/Davinci-drug-formulary/ ).

The OAuth2.0-based exchange is covered in detail in the [Member-Authorized OAuth2 Exchange](Member-AuthorizedOAuth2Exchange.html)

## Supporting Specifications

This implementation guide is dependent on other specifications. Please submit any comments you have on these base specifications as follows:

- Feedback on CDS Hooks should be posted to the CDS Hooks [GitHub Issue List](https://github.com/cds-hooks/docs/issues)

- Feedback on this Implementation Guide and supporting HL7 specifications should be submitted as issue tickets via the [HL7 FHIR Jira system](https://jira.hl7.org/secure/Dashboard.jspa). Login to Jira and create an issue. Enter the following information to identify the relevant specification:

Project: FHIR Specification Feedback
Issue Type: Change Request
Specification:

- FHIR Core (FHIR)
- US Core (FHIR)
- US Da Vinci PDex (FHIR)

- Individuals interested in participating in Payer Data exchange (PDex) or other HL7 Da Vinci projects can find information about the Da Vinci accelerator project [here](http://www.hl7.org/about/davinci).

## FHIR

This implementation guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, its important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.


* [FHIR overview](http://build.fhir.org/overview.html)
* [Developer's Introduction](http://build.fhir.org/overview-dev.html)
* [Clinical Introduction](http://build.fhir.org/overview-clinical.html)
* [FHIR data types](http://build.fhir.org/datatypes.html)
* [Using codes](http://build.fhir.org/terminologies.html)
* [References between resources](http://build.fhir.org/references.html)
* [How to read resource and profile definitions](http://build.fhir.org/formats.html)
* [Base resource](http://build.fhir.org/resource.html)

## Implementation Assumptions

Wherever possible, the PDex IG will use established [US Core Profiles](http://hl7.org/fhir/us/core/index.html) ( http://hl7.org/fhir/us/core/ ). Where information must be presented in FHIR resources that fall outside of the US Core Implementation Guide (IG) the HL7 Da Vinci Health Record exchange (HRex) IG will define the necessary Da Vinci FHIR profiles or will refer to other Implementation Guides, as necessary.

Where profiles are specific to the PDex use case and are not shared with other Da Vinci IGs the profiles will be defined in this guide.

## Implementation Hierarchy and Priorities

The PDex Implementation Guide (IG) will utilize existing HL7 FHIR Profiles in the following order of descending priority:

1. HL7 FHIR US Core STU3 v3.1.0 (based on FHIR R4 - [http://hl7.org/fhir/us/core/](http://hl7.org/fhir/us/core/index.html) ) 
2. Da Vinci HRex IG profiles (based on FHIR R4 - [http://build.fhir.org/ig/HL7/davinci-ehrx/](http://build.fhir.org/ig/HL7/davinci-ehrx/) )

This Implementation Guide recognizes that Electronic Medical Record systems used by providers may have existing FHIR APIs that are based on versions of FHIR prior to FHIR R4 with DSTU2 (Argonaut) being the most popular implementation.

Amongst Health Plans there has been limited adoption of FHIR specifications and FHIR APIs. Therefore, for profiles and APIs identified in this IG the FHIR R4 version **SHALL** be used.

## PDex Data Payloads

The PDex IG defines four types of data payload:

1. Member Membership, Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

The CMS Interoperability rule requires Health Plans to make available data they hold for a member from Jan 1, 2016 onwards. When data is transferred from one plan to another the receiving health plan is only obligated to share data received from another health plan in the electronic form and format it was received in.   

The Directory and Formulary data payloads are covered in their respective Da Vinci Implementation Guides.

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

The FHIR CapabilityStatement defines the resources and operations supported on the resources exposed via the FHIR API.

The Read and Search Operations **SHALL** be supported for the FHIR Profiles covered in this payload section. The V-Read and History operations **MAY** be supported.

### Member Health History

The FHIR Resources that comprise the Member Clinical and Claims-derived history, otherwise referred to as the "Member Health History"  **SHOULD** include the following profiles where payers have data to support the use of those profiles:

#### US Core Profiles

Excluded:


US Core Pulse Oximetry Profile
US Core Smoking Status Observation Profile

- [US Core AllergyIntolerance Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)
- [US Core CarePlan Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html)
- [US Core CareTeam Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html)
- [US Core Condition Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html)
- [US Core DiagnosticReport Profile for Laboratory Results Reporting](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)
- [US Core Diagnostic Report Profile for Report and Note exchange](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html)
- [US Core DocumentReference Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html)
- [US Core Encounter Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html)
- [US Core Goal Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html)
- [US Core Immunization Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html)
- [US Core Implantable Device Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html)
- [US Core Laboratory Result Observation Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)
- [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-location.html)
- [US Core Medication Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html)
- [US Core MedicationRequest Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html)
- [US Core Organization Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html)
- [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html)
- [US Core Pediatric BMI for Age Observation Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-pediatric-bmi-for-age.html)
- [US Core Pediatric Weight for Height Observation Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-pediatric-weight-for-height.html)
- [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html)
- [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html)
- [US Core Procedure Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)
- [US Core Provenance Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-provenance.html)
- [US Core Pulse Oximetry Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html)
- [US Core Smoking Status Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html)

In addition US Core uses the [Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) from the FHIR Specification.

In addition the $patient-everything operation **SHOULD** be supported to enable a client application to request all, or a date-defined subset of FHIR resources for a member to be returned as a bundle. The $Patient-everything operation is defined [here](https://www.hl7.org/fhir/operation-patient-everything.html): [https://www.hl7.org/fhir/operation-patient-everything.html](https://www.hl7.org/fhir/operation-patient-everything.html). 

The FHIR bundle that is the output of the $patient-everything operation can be returned via the REST API as a paged bundle. If the bundle is compiled for transfer by another method the bundle **SHOULD** be compiled as a non-paged bundle.

#### Da Vinci PDex / HRex

- [HRex Coverage](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html)
- [PDex Device](StructureDefinition-pdex-device.html)
- [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.html) 
- [HRex Payer Provenance](http://hl7.org/fhir/us/davinci-hrex/2019Jun/StructureDefinition-hrex-provenance.html)

#### CapabilityStatement

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

| Resource Type                                 | Profile                                                                                        | Read | V-Read | Search | History |
|-----------------------------------------------|------------------------------------------------------------------------------------------------|------|--------|--------|---------|
| AllergyIntolerance                            | http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html   | Y    | Y      | Y | Y       |
| CarePlan                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html             | Y    | Y      | Y      | Y       |
| CareTeam                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html             | Y    | Y      | Y    | Y       |
| Condition                                     | http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html            | Y    | Y      | Y     | Y       |
| Coverage                                      | http://hl7.org/fhir/us/davinci-hrex/2019Jun/StructureDefinition-hrex-coverage.html               | Y    | Y      | Y      | Y       |
| Device                                        | http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-device.html               | Y    | Y      | Y      | Y       |
| DiagnosticReport for Laboratory Results Reporting | https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html    | Y    | Y      | Y     | Y       |
| DiagnosticReport for report and Note Exchange | https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html | Y    | Y      | Y      | Y       |
| DocumentReference                             | http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html    | Y    | Y      | Y       | Y       |
| Encounter                                     |http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html            | Y    | Y      | Y       | Y       |
| Goal                                          | http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html                 | Y    | Y      | Y     | Y       |
| Immunization                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html         | Y    | Y      | Y      | Y       |
| Implantable Device                      | https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html    | Y    | Y      | Y      | Y       |
| Location                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-location.html             | Y    | Y      | Y      | Y       |
| Medication                                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html           | Y    | Y      | Y      | Y       |
| MedicationDispense                            | http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-medicationdispense.html           | Y    | Y      | Y      | Y       |
| MedicationRequest                             | http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html    | Y    | Y      | Y      | Y       |
| Organization                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html         | Y    | Y      | Y    | Y       |
| Patient                                       | http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html              | Y    | Y      | Y      | Y       |
| Pediatric BMI for Age Observation  | https://www.hl7.org/fhir/us/core/StructureDefinition-pediatric-bmi-for-age.html      | Y    | Y      | Y     | Y       |
| Pediatric Weight for Height Observation  | https://www.hl7.org/fhir/us/core/StructureDefinition-pediatric-weight-for-height.html  | Y    | Y      | Y      | Y       |
| Practitioner                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html         | Y    | Y      | Y      | Y       |
| PractitionerRole                              | http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html     | Y    | Y      | Y      | Y       |
| Procedure                                     | http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html            | Y    | Y      | Y         | Y       |
| Provenance                                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-provenance.html           | Y    | Y      | Y      | Y       |
| Payer Provenance                                    | http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-provenance.html   | Y    | Y      | Y      | Y       |
| Pulse Oximetry                         | https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html   | Y    | Y      | Y    | Y       |
| Smoking Status Observation                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html        | Y    | Y      | Y       | Y       |
| Vital Signs                                   | http://hl7.org/fhir/R4/observation-vitalsigns.html                                             | Y    | Y      | Y       | Y       |


### Healthcare Network Directory 

The provision of a Member-accessible Healthcare Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net)).

### Pharmacy Network Directory

The provision of a Member-accessible Pharmacy Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/)). A Health Plan's Pharmacy Network **SHALL** be expressed using the same FHIR profiles used for the Healthcare Network Directory.

### Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  The provision of a Member-accessible Prescription Drug Formulary API is detailed in the companion, subsidiary Payer Data Exchange Drug Formulary Implementation Guide ([PDex-formulary IG](http://build.fhir.org/ig/HL7/davinci-pdex-formulary/)).



[Next Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](PDexImplementationActorsInteractionsDataPayloadsandMethods.html)
