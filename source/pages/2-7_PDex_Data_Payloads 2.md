---
title: 2-7 PDex Data Payloads
layout: default
active: 2-7 PDex Data Payloads
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="2_Introduction.html" id="markdown-toc-introduction">Introduction</a></li>
  <li><a href="2-1_Implementation_Guide_Scope.html" id="markdown-toc-scope">- Implementation Guide Scope</a></li>
  <li><a href="2-2_Member_Consent.html" id="markdown-toc-consent">- Member Consent</a></li>
	<li><a href="2-3_FHIR.html" id="markdown-toc-fhir">- FHIR</a></li>
	<li><a href="2-4_Supporting_Specifications.html" id="markdown-toc-supportingspecifications">- Supporting Specifications</a></li>
	<li><a href="2-5_Implementation_Assumptions.html" id="markdown-toc-assumptions">- Implementation Assumptions</a></li>
	<li><a href="2-6_Implementation_Hierarchy_and_Priorities.html" id="markdown-toc-hierarchy">- Implementation Hierarchy and Priorities</a></li>
	<li><a href="2-7_PDex_Data_Payloads.html" id="markdown-toc-payloads">- PDex Data Payloads</a></li>
</ul>

The PDex IG defines four types of data payload:

1. Member Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

The Directory and Formulary data payloads are covered in their respective subsidiary PDex IGs.

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

### 2-7-1 Member Clinical and Claims-derived History

The FHIR Resources that comprise the Member Clinical and Claims-derived history, otherwise referred to as the "Member Health History"  **SHOULD** include the following profiles:

#### 2-7-1-1 US Core

- [US Core AllergyIntolerance Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-allergyintolerance.html)
- [US Core CarePlan Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html)
- [US Core CareTeam Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careteam.html)
- [US Core Condition Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-condition.html)
- [US Core Device Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html)
- [US Core DiagnosticReport Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-diagnosticreport.html)
- [US Core Diagnostic Report Profile for Report and Note exchange](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-new-us-core-diagnosticreport.html)
- [US Core DocumentReference Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-documentreference.html)
- [US Core Encounter Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html)
- [US Core Goal Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html)
- [US Core Immunization Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-immunization.html)
- [US Core Location Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-location.html)
- [US Core Medication Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html)
- [US Core MedicationRequest Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationrequest.html)
- [US Core MedicationStatement Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationstatement.html)
- [US Core Organization Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-organization.html)
- [US Core Patient Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html)
- [US Core Pediatric BMI Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-bmi.html)
- [US Core Pediatric Weight Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-weight.html)
- [US Core Practitioner Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html)
- [US Core PractitionerRole Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitionerrole.html)
- [US Core Procedure Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html)
- [US Core Result Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-observationresults.html)
- [US Core Smoking Status Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-smokingstatus.html)
In addition US Core uses the [Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) from the FHIR Specification.

In addition the Patient-everything operation **SHOULD** be supported to enable a client application to request all, or a date-defined subset of  FHIR resources for a member to be returned as a bundle. The Patient-everything operation is defined here: https://www.hl7.org/fhir/operation-patient-everything.html. 

The FHIR bundle that is the output of the Patient-everything operation can be returned via the REST API as a paged bundle. If the bundle is compiled for transfer by another method the bundle **SHOULD** be compiled as a non-paged bundle.

#### 2-7-1-2 Da Vinci PDex / HRex

- [ HRex Coverage](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html)
- [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.html) 
- [HRex Provenance](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-provenance.html)

#### 2-7-1-3 CapabilityStatement

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

| Resource Type                                 | Profile                                                                                        | Read | V-Read | Search | Update | Create | Updates | History |
|-----------------------------------------------|------------------------------------------------------------------------------------------------|------|--------|--------|--------|--------|---------|---------|
| AllergyIntolerance                            | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-allergyintolerance.html   | Y    | Y      | Y      |        |        |         | Y       |
| CarePlan                                      | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html             | Y    | Y      | Y      |        |        |         | Y       |
| CareTeam                                      | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careteam.html             | Y    | Y      | Y      |        |        |         | Y       |
| Condition                                     | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-condition.html            | Y    | Y      | Y      |        |        |         | Y       |
| Coverage                                      | http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html               | Y    | Y      | Y      |        |        |         | Y       |
| Device                                        | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html               | Y    | Y      | Y      |        |        |         | Y       |
| DiagnosticReport                              | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-diagnosticreport.html     | Y    | Y      | Y      |        |        |         | Y       |
| DiagnosticReport for report and Note Exchange | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-new-us-core-diagnosticreport.html | Y    | Y      | Y      |        |        |         | Y       |
| DocumentReference                             | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-documentreference.html    | Y    | Y      | Y      |        |        |         | Y       |
| Encounter                                     | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html            | Y    | Y      | Y      |        |        |         | Y       |
| Goal                                          | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html                 | Y    | Y      | Y      |        |        |         | Y       |
| Immunization                                  | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-immunization.html         | Y    | Y      | Y      |        |        |         | Y       |
| Location                                      | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-location.html             | Y    | Y      | Y      |        |        |         | Y       |
| Medication                                    | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html           | Y    | Y      | Y      |        |        |         | Y       |
| MedicationDispense                            |                                                                                                | Y    | Y      | Y      |        |        |         | Y       |
| MedicationRequest                             | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationrequest.html    | Y    | Y      | Y      |        |        |         | Y       |
| MedicationStatement                           | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationstatement.html  | Y    | Y      | Y      |        |        |         | Y       |
| Organization                                  | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-organization.html         | Y    | Y      | Y      |        |        |         | Y       |
| Patient                                       | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html              | Y    | Y      | Y      |        |        |         | Y       |
| Pediatric BMI Observation                     | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-bmi.html        | Y    | Y      | Y      |        |        |         | Y       |
| Pediatric Weight Observation                  | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-weight.html     | Y    | Y      | Y      |        |        |         | Y       |
| Practitioner                                  | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html         | Y    | Y      | Y      |        |        |         | Y       |
| PractitionerRole                              | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitionerrole.html     | Y    | Y      | Y      |        |        |         | Y       |
| Procedure                                     | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html            | Y    | Y      | Y      |        |        |         | Y       |
| Provenance                                    | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-provenance.html           | Y    | Y      | Y      |        |        |         | Y       |
| Result Observation                            | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-observationresults.html   | Y    | Y      | Y      |        |        |         | Y       |
| Smoking Status Observation                    | https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-smokingstatus.html        | Y    | Y      | Y      |        |        |         | Y       |
| Vital Signs                                   | http://hl7.org/fhir/R4/observation-vitalsigns.html                                             | Y    | Y      | Y      |        |        |         | Y       |


### 2-7-2 Healthcare Network Directory 

The provision of a Member-accessible Healthcare Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide (PDex-plan-net IG).

The Latest build of the PDex-plan-net IG can be found at: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/

### 2-7-3 Pharmacy Network Directory

The provision of a Member-accessible Pharmacy Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide (PDex-plan-net IG). A Health Plan's Pharmacy Network **SHALL** be expressed using the same FHIR profiles used for the Healthcare Network Directory.

The Latest build of the PDex-plan-net IG which includes the Pharmacy Network Directory can be found at: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/

### 2-7-4 Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  The provision of a Member-accessible Prescription Drug Formulary API is detailed in the companion, subsidiary Payer Data Exchange Drug Formulary Implementation Guide (PDex-formulary IG.

The Latest build of the PDex-formulary IG can be found at http://build.fhir.org/ig/HL7/davinci-pdex-formulary/

<ul>
  <li><a href="2-6_Implementation_Hierarchy_and_Priorities.html" >Previous</a></li>
  <li><a href="3_PDex_Implementation_Actors,_Interactions,_Data_Payloads_and_Methods.html" >Next</a></li>
</ul>