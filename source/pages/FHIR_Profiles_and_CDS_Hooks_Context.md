---
title: FHIR Profiles and CDS Hooks Context
layout: default
active: FHIR Profiles and CDS Hooks Context
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
  "hook": "appointment-book",
  "user": "Practitioner/example",
  "context": {
    "userId": "Practitioner/A12365498",
    "patientId": "EMR1239876",
    "encounterId": "654",
    "appointments": [],
    "subscriberId": "HP567123489",
    "accessJwt": {  Java Web Token for access to Patient records}
  }
}
</pre>

