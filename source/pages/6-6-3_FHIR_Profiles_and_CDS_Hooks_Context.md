---
title: 6-6-3 FHIR Profiles and CDS Hooks Context
layout: default
active: 6-6-3 FHIR Profiles and CDS Hooks Context
---

The PDex IG makes significant use of established FHIR profiles. These **MAY** be qualified with search parameter definitions and terminology artifacts to describe the content to be shared as part of CDS Hook calls. The output from the CDS Hooks service will use FHIR R4 profiles identified in the US Core and Da Vinci HRex IGs.


The CDS Hooks Appointment-book call provides the Practitioner (UserId), Patient, Encounter identifiers and an appointments object.
Optional fields in the CDS Hooks for PDex context include:
- subscriberId
- accessJwt

The fields in the context of the CDS Hooks call are used as follows:
- userid: used to identify the provider requesting the information
- patientId: used to identify the patient/subject in the EMR system
- encounterid: used to identify the encounter in the provider's EMR
- subscriberId: used to describe the unique identifier for a health plan member. This identifier can be found in the Coverage resource as subscriber.id.
- accessJwt: Used to provide secure access into the Provider's EMR system in order to access the Patient record.

<pre>
{
  "hookInstance": "d1577c69-dfbe-44ad-ba6d-3e05e953b2ea",
  "fhirServer": "http://fhir.example.com",
  "fhirAuthorization" : {
       "access_token" : "some-opaque-fhir-access-token",
       "token_type" : "Bearer",
       "expires_in" : 300,
       "scope" : "patient/Patient.read patient/Observation.read",
       "subject" : "cds-service4"
     },
  "hook": "appointment-book",
  "user": "Practitioner/example",
  "context": {
    "userId": "Practitioner/A12365498",
    "patientId": "EMR1239876",
    "encounterId": "654",
    "appointments": [],
    "subscriberId": "HP567123489",
  }
}
</pre>

#### 6-6-3-1 SMART-on-FHIR app for Provider data selection
When a SMART-on-FHIR App is provided as a link in the content returned from the CDS Hooks it **SHALL** receive:

- The URL entrypoint to the Health Plan's FHIR API
- An access token to enable secure access to the Member's health history via the FHIR API
- An access token to enable the app to write data to the Provider's EMR system.


The SMART App **SHALL** retrieve the CapabilityStatement/Metadata from the Health Plan's FHIR API.
 
The SMART App **SHALL** retrieve the ConformanceStatement/CapabilityStatement/Metadata from the Provider's EMR system. 

The Provider **MAY** select records from the Health Plan's FHIR API to be committed to their EMR system.  After selecting the relevant data the provider **MAY** triggers a write of the selected data to their EMR system. 

The SMART App **SHALL** use the EMRs Metadata to determine what records **MAY** be written to the EMR system. 

The SMART App **SHALL NOT** convert records from one FHIR version to another.

If the Provider's EMR system supports FHIR R4 the SMART App **SHALL** determine which resources may be written to the Patient's record in the EMR system. It will write these records to the Provider's EMR System. 

Any remaining selected records, where write operations are not permitted by the EMR system's FHIR API **SHOULD** take one of the actions identified in [section 6-6-3-2](#6-6-3-2-writing-records-using-documentreference), below.

If the Provider's EMR system does not support FHIR R4 the SMART App **SHOULD** create a DocumentReference record and write the selected records to the Provider's EMR System using one of the actions identified in  [section 6-6-3-2](#6-6-3-2-writing-records-using-documentreference), below.
    
#### 6-6-3-2 Writing Records Using DocumentReference

The format used to write information to a DocumentReference resource in the Provider's EMR System **SHOULD** be written in order of descending preference identified below:

1. Place the remaining selected records in a FHIR bundle and create a Human Readable PDF of those selected records and write both items to a DocumentReference record for the Patient.
2. Convert the remaining records to an XHTML document and write to a DocumentReference record for the Patient.
3. Convert the remaining records to an ASCII text document and write to a DocumentReference record for the Patient.

