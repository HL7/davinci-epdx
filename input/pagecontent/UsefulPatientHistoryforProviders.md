[Previous Page - Patient Persona](PatientPersona.html)


When providers are building a health history for a new patient the information they are interested in **MAY** include:

- Ambulatory events
- In-patient events
- Medications
- Procedures

The PDex Implementation Guide will focus on examples related to Ambulatory events.

As part of an event or episode of care the provider will be interested in the following types of data:

* Consultations
* Practitioners who the patient has seen
* Care Plan 
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
* Family History

These types of data **SHALL** be mapped to FHIR clinical resources as follows:

| Data type                              | FHIR R4/US Core STU3 profile                                                                                  |
|----------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Consultation                           | Encounter: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html) |
| Practitioners who the patient has seen | CareTeam: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careteam.html) |
| Care Plan                              | CarePlan: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html) |
| Laboratory test results                       | DiagnosticReport: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html) |
| Result Observation                  | ResultObservation: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)  |
| Image studies                          | DocumentReference: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html) |
| Medical Devices                        | Device: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-device.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-device.html) |
| Procedures                             | Procedure: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html) |
| Diagnoses                              | DiagnosticReport: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html) |
| Vital signs                            | Observation: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-observation.html) |
| Medications                            | MedicationDispense: [http://hl7.org/fhir/medicationdispense.html](http://hl7.org/fhir/medicationdispense.html) |
| Immunizations                          | Immunization: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html) |
| Allergies                              | AllergyIntolerance: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html) |
| Notes                                  | DiagnosticReport: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html) |
| FamilyHistory                          | DocumentReference: [http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html](http://hl7.org/fhir/us/core/StructureDefinition-us-core-documentreference.html) |



[Next Page - Provider-controlled Information Requests and Filtering](Provider-controlledInformationRequestsandFiltering.html)