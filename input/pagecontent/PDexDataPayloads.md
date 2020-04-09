[Previous Page - Implementation Hierarchy and Priorities](ImplementationHierarchyandPriorities.html)


The PDex IG defines four types of data payload:

1. Member Membership, Clinical and Claims-derived History. Referred to in this IG as the "Member Health History"
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

The CMS Interoperability rule requires Health Plans to make available data they hold for a member from Jan 1, 2016 onwards. When data is transfered from one plan to another the receiving health plan is only obligated to share data received from another health plan in the electronic form and format it was received in.   

The Directory and Formulary data payloads are covered in their respective subsidiary PDex IGs.

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

The FHIR CapabilityStatement defines the resources and operations supported on the resources exposed via the FHIR API.
The Read and Search Operations **SHALL** be supported for the FHIR Profiles covered in this payload section. The V-Read and History operations **MAY** be supported.

### Member Clinical and Claims-derived History

The FHIR Resources that comprise the Member Clinical and Claims-derived history, otherwise referred to as the "Member Health History"  **SHOULD** include the following profiles:

#### US Core

- [US Core AllergyIntolerance Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)
- [US Core CarePlan Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html)
- [US Core CareTeam Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html)
- [US Core Condition Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html)
- [US Core Device Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-device.html)
- [US Core DiagnosticReport Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html)
- [US Core Diagnostic Report Profile for Report and Note exchange](http://hl7.org/fhir/us/core/StructureDefinition-new-us-core-diagnosticreport.html)
- [US Core DocumentReference Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html)
- [US Core Encounter Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html)
- [US Core Goal Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html)
- [US Core Immunization Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html)
- [US Core Location Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-location.html)
- [US Core Medication Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html)
- [US Core MedicationRequest Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html)
- [US Core MedicationStatement Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationstatement.html)
- [US Core Organization Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html)
- [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html)
- [US Core Pediatric BMI Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-pediatric-bmi.html)
- [US Core Pediatric Weight Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-pediatric-weight.html)
- [US Core Practitioner Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html)
- [US Core PractitionerRole Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html)
- [US Core Procedure Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)
- [US Core Result Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observationresults.html)
- [US Core Observation Lab](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)
- [US Core Smoking Status Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html)
In addition US Core uses the [Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) from the FHIR Specification.

In addition the Patient-everything operation **SHOULD** be supported to enable a client application to request all, or a date-defined subset of  FHIR resources for a member to be returned as a bundle. The Patient-everything operation is defined [here](https://www.hl7.org/fhir/operation-patient-everything.html): [https://www.hl7.org/fhir/operation-patient-everything.html](https://www.hl7.org/fhir/operation-patient-everything.html). 

The FHIR bundle that is the output of the Patient-everything operation can be returned via the REST API as a paged bundle. If the bundle is compiled for transfer by another method the bundle **SHOULD** be compiled as a non-paged bundle.

#### Da Vinci PDex / HRex

- [ HRex Coverage](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html)
- [PDex MedicationDispense](StructureDefinition-pdex-medicationdispense.html) 
- [HRex Provenance](http://hl7.org/fhir/us/davinci-hrex/2019Jun/StructureDefinition-hrex-provenance.html)

#### CapabilityStatement

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

| Resource Type                                 | Profile                                                                                        | Read | V-Read | Search | History |
|-----------------------------------------------|------------------------------------------------------------------------------------------------|------|--------|--------|---------|
| AllergyIntolerance                            | http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html   | Y    | Y      | Y | Y       |
| CarePlan                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html             | Y    | Y      | Y      | Y       |
| CareTeam                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html             | Y    | Y      | Y    | Y       |
| Condition                                     | http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html            | Y    | Y      | Y     | Y       |
| Coverage                                      | http://hl7.org/fhir/us/core/StructureDefinition-hrex-coverage.html               | Y    | Y      | Y      | Y       |
| Device                                        | http://hl7.org/fhir/us/core/StructureDefinition-us-core-device.html               | Y    | Y      | Y      | Y       |
| DiagnosticReport                              | http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html     | Y    | Y      | Y     | Y       |
| DiagnosticReport for report and Note Exchange | http://hl7.org/fhir/us/core/StructureDefinition-new-us-core-diagnosticreport.html | Y    | Y      | Y      | Y       |
| DocumentReference                             | http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html    | Y    | Y      | Y       | Y       |
| Encounter                                     |http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html            | Y    | Y      | Y       | Y       |
| Goal                                          | http://hl7.org/fhir/us/core/StructureDefinition-us-core-goal.html                 | Y    | Y      | Y     | Y       |
| Immunization                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html         | Y    | Y      | Y      | Y       |
| Location                                      | http://hl7.org/fhir/us/core/StructureDefinition-us-core-location.html             | Y    | Y      | Y      | Y       |
| Medication                                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html           | Y    | Y      | Y      | Y       |
| MedicationDispense                            |                                                                                                | Y    | Y      | Y     | Y       |
| MedicationRequest                             | http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html    | Y    | Y      | Y      | Y       |
| MedicationStatement                           | http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationstatement.html  | Y    | Y      | Y    | Y       |
| Organization                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html         | Y    | Y      | Y    | Y       |
| Patient                                       | http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html              | Y    | Y      | Y      | Y       |
| Pediatric BMI Observation                     | http://hl7.org/fhir/us/core/StructureDefinition-us-core-pediatric-bmi.html        | Y    | Y      | Y     | Y       |
| Pediatric Weight Observation                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-pediatric-weight.html     | Y    | Y      | Y      | Y       |
| Practitioner                                  | http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html         | Y    | Y      | Y      | Y       |
| PractitionerRole                              | http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html     | Y    | Y      | Y      | Y       |
| Procedure                                     | http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html            | Y    | Y      | Y         | Y       |
| Provenance                                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-provenance.html           | Y    | Y      | Y      | Y       |
| Result Observation                            | http://hl7.org/fhir/us/core/StructureDefinition-us-core-observationresults.html   | Y    | Y      | Y    | Y       |
| Smoking Status Observation                    | http://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html        | Y    | Y      | Y       | Y       |
| Vital Signs                                   | http://hl7.org/fhir/R4/observation-vitalsigns.html                                             | Y    | Y      | Y       | Y       |


### Healthcare Network Directory 

The provision of a Member-accessible Healthcare Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net)).

The Latest build of the [PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/) can be found at: [http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/)

### Pharmacy Network Directory

The provision of a Member-accessible Pharmacy Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide ([PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/)). A Health Plan's Pharmacy Network **SHALL** be expressed using the same FHIR profiles used for the Healthcare Network Directory.

The Latest build of the [PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/) which includes the Pharmacy Network Directory can be found at: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/

### Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  The provision of a Member-accessible Prescription Drug Formulary API is detailed in the companion, subsidiary Payer Data Exchange Drug Formulary Implementation Guide ([PDex-formulary IG](http://build.fhir.org/ig/HL7/davinci-pdex-formulary/)).

The Latest build of the [PDex-formulary IG](http://build.fhir.org/ig/HL7/davinci-pdex-formulary/) can be found at [http://build.fhir.org/ig/HL7/davinci-pdex-formulary/](http://build.fhir.org/ig/HL7/davinci-pdex-formulary/)



[Next Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](PDexImplementationActorsInteractionsDataPayloadsandMethods.html)