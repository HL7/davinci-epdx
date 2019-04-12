---
title: FHIR Profiles and CDS Hooks Context
layout: default
active: FHIR Profiles and CDS Hooks Context
---

This specification makes significant use of FHIR profiles, search parameter definitions and terminology artifacts to describe the content to be shared as part of CDS Hook calls. The implementation guide supports three versions of FHIR: DSTU2, STU3 and R4 and profiles for both are listed for each type of hook. The primary implementation is for FHIR R4.

The profiles referenced in this implementation guide use Argonaut (based on FHIR DSTU2) and US Core (based on STU3 and R4) or, where profiles are not defined in those specifications, profiles defined in the HRex Implementation Guide.

The CDS Hooks Appointment-book call provides the Practitioner (UserId), Patient, Encounter identifiers and an appointments object.
Optional fields in the CDS Hooks for PDex context include:
* subscriberId
* tasks

The fields in the context of the CDS Hooks call are used as follows:
* userid: used to identify the provider requesting the information
* patientId: used to identify the patient/subject in the EMR system
* encounterid: used to identify the encounter in the provider's EMR
* subscriberId: used to describe the unique identifier for a health plan member. This identifier can be found in the Coverage resource as subscriber.id.
* tasks: an array that contains search requests for encounter, procedure and/or medicationdispense information.

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
    "Tasks": [
      {
        "resourceType": "Task",
        "identifier": [
          {
            "value": "e1577a69-dfca-44eb-be6d-1a05a953b2db"
          }
        ],
        "status": "requested",
        "intent": "proposal",
        "code": "MemberHistory-Encounter",
        "description": "Request for Member Encounter History",
        "focus": "Patient/{{Patient.Id}}",
        "for": "Practitioner/A12365498",
        "encounter": "654",
        "performerType": "56542007",
        "input": [
          {
            "type": "resourceType",
            "valueString": "Encounter"
          },
          {
            "type": "historyRange",
            "valuePeriod": {
              "start": "YYYY-MM-DD",
              "end": "YYYY-MM-DD"
            }
          },
          {
            "type": "entityExcluded",
            "valueExpression": "organization:not\u003dXYZ123ABC"
          }
        ]
      },
      {
        "resourceType": "Task",
        "identifier": [
          {
            "value": "e1577a69-dfcb-44ec-be6d-2a05a953b2bc"
          }
        ],
        "status": "requested",
        "intent": "proposal",
        "code": "MemberHistory-Procedure",
        "description": "Request for Member Procedure History",
        "focus": "Patient/{{Patient.Id}}",
        "for": "Practitioner/A12365498",
        "encounter": "654",
        "performerType": "56542007",
        "input": [
          {
            "type": "resourceType",
            "valueString": "Procedure"
          },
          {
            "type": "historyRange",
            "valuePeriod": {
              "start": "YYYY-MM-DD",
              "end": "YYYY-MM-DD"
            }
          }
        ]
      },
      {
        "resourceType": "Task",
        "identifier": [
          {
            "value": "e1577a69-dfcc-44ed-be6d-3a05a953b2cb"
          }
        ],
        "status": "requested",
        "intent": "proposal",
        "code": "MemberHistory-Medication",
        "description": "Request for Member Medication History",
        "focus": "Patient/{{Patient.Id}}",
        "for": "Practitioner/A12365498",
        "encounter": "654",
        "performerType": "56542007",
        "input": [
          {
            "type": "resourceType",
            "valueString": "medicationDispense"
          },
          {
            "type": "historyRange",
            "valuePeriod": {
              "start": "YYYY-MM-DD",
              "end": "YYYY-MM-DD"
            }
          }
        ]
      }
    ]
  }
}
</pre>



