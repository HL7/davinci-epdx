[Previous Page - VitalSigns](VitalSigns.html)

This implementation guide addresses Payer-to-Payer and Provider Access APIs that enable a members health history to be exchanged. The IG also enables a member's health history to be retrieved by a third-party application that the patient has authorized. This page outlines some patient personas to demonstrate how the exchange of the patient's health history could be used to benefit the member. For example:

- Patient at Primary Care Provider.

The other use case is for Member/Patient-mediated Payer-to-Payer Exchange:

- A member enrolls with a new health plan and accesses their prior health plan to authorize sharing of the health history.

The examples used in this guide are based on Payers providing claims from events where a member visits an ambulatory provider or when a member switches health plan.
		
Three example data requests from Providers to Health Plans are covered in this IG and the associated Reference Implementation:

1. What Encounters has the patient had since mm/dd/yyyy, excluding encounters at my organization.
2. What procedures has the patient had?
3. What medications has the patient received (i.e., a claim for a medication has been settled by the health plan).

Reference Implementations can be found in the Da Vinci GitHub account:
	
- [PDex SMART-on-FHIR+CDS-Hook Patient Import App](https://github.com/HL7-DaVinci/PDex-Patient-Import-App)
- [PDex Payer-to-Payer Patient Import App](https://github.com/HL7-DaVinci/PDex-Patient-Import-App).
	
### Patient Persona

#### Provider to Health Plan scenario:

Lauren Dent is a 62-year-old female, living in Wisconsin but she spends winters in Tampa Bay, FL.

Lauren works on a seasonal basis and has just accepted a new position with her employer and has moved to Madison, WI to live with her daughter, leaving her previous home in La Crosse, WI. As a result of the move, she has selected a new Primary Care Provider.

Lauren is in reasonable health but is managing a number of conditions:

- She has been diagnosed as Pre-Diabetic and is being treated with medications.
- She is taking medication for hypertension.
- She had a knee replacement 5 years ago.
- She had a procedure seven years ago to correct a problem with a disc in her lower back.
- A history of a normal colonoscopy 5 years earlier.
- A history of a pneumovax and zostavax 4 years earlier.

#### Member/Patient-mediated Payer-to-Payer Exchange:

Arthur Dent is a 68-year-old Male.

He has recently switched from Medicare Advantage Plan A and enrolled in Medicare Advantage Plan B.

In this scenario, Arthur has signed up for a new  Medicare advantage plan with payer C during the open enrollment period. Before the initiation of his coverage beginning January 1, payer C has established communication with the patient and has provided the patient with a secure log in to the payer C patient portal. Patient continues to have an active login to payer B patient portal.

### Useful Patient History for Providers

When providers are building a health history for a new patient the information they are interested in **MAY** include:

- Ambulatory events
- In-patient events
- Medications
- Procedures.

This Guide will focus on a method to enable a provider to query the health record of a health plan member they are treating for information that is of interest to them in relation to the care of the member. The CDS-Hooks method that is described in a later section enables a provider to query for information in the member's health record at the health plan using US Core profiles and search parameters and subsequently select, either manually or by pre-defined automated tools, the records they want to commit to the patient's health record in the provider's EMR.

For example, as part of an event or episode of care the provider **MAY** be interested in the following types of data:

* Consultations/Encounters
* Practitioners who the patient has seen
* Care Plans 
* Laboratory test results
* Image Studies
* Medical Devices
* Procedures
* Diagnoses
* Vital Signs
* Medications
* Immunizations
* Allergies
* Notes 
* Family History.

These types of data **SHALL** be mapped to FHIR clinical resources as follows:
{% include style_insert_table_blue.html %}

| Data type                              | FHIR R4/US Core STU3 profile                                                                                  |
|----------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Consultation                           | Encounter: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html) |
| Practitioners who the patient has seen | CareTeam: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html) |
| Care Plan                              | CarePlan: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html) |
| Laboratory test results                       | DiagnosticReport for Laboratory Results Reporting: [https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html) |
| Image studies                          | DocumentReference: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html) |
| Medical Devices                        | Device: [http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-device.html ](http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-device.html ) |
| Procedures                             | Procedure: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html) |
| Condition                              | Condition: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html) |
| Vital signs                            | Observation-VitalSigns: [http://hl7.org/fhir/R4/observation-vitalsigns.html](http://hl7.org/fhir/R4/observation-vitalsigns.html) |
| Medications                            | MedicationDispense: [http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-medicationdispense.html](http://hl7.org/fhir/us/davinci-epdx/StructureDefinition-pdex-medicationdispense.html) |
| Immunizations                          | Immunization: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html) |
| Allergies                              | AllergyIntolerance: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html) |
| Notes                                  | DiagnosticReport for report and Note Exchange: [https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html) |
| FamilyHistory                          | DocumentReference: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html) |

Payers may not have in-depth health history for a health plan member since the majority of the information may be derived from claims information which lacks the depth of clinical content that supports a claim.


### Versioning of FHIR Data

A payer **SHOULD** provide the most recent version of the Patient, Practitioner, Organization and Location resources.

A payer **MAY** choose to support FHIR resource data versioning in their API including Patient, Practitioner, Organization and Location resources. In such cases resources should follow the [vread](https://www.hl7.org/fhir/http.html#vread) guidance in the HTTP section of the FHIR specification.

If a payer chooses to support FHIR resource data versioning of related resource references, the referring resource **SHALL** use the [vread](https://www.hl7.org/fhir/http.html#vread) format of reference:

    [type]/[id]/_history/[vid]

Supporting versioning of FHIR data implies supporting the [vread](https://www.hl7.org/fhir/http.html#vread) and [history](https://www.hl7.org/fhir/http.html#history) interactions in the FHIR specification.

[Next Page - CDS-Hooks](cds-hooks.html)
