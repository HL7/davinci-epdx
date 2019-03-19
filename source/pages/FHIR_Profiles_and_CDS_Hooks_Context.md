---
title: FHIR Profiles and CDS Hooks Context
layout: default
active: FHIR Profiles and CDS Hooks Context
---

This specification makes significant use of FHIR profiles, search parameter definitions and terminology artifacts to describe the content to be shared as part of CDS Hook calls. The implementation guide supports three versions of FHIR: DSTU2, STU3 and R4 and profiles for both are listed for each type of hook.

The profiles referenced in this implementation guide use Argonaut (based on FHIR DSTU2) and US Core (based on STU3 and R4) or, where profiles are not defined in those specifications, profiles defined in the HRex Implementation Guide.

The CDS Hooks call provides the Practitioner, Patient and Encounter identifiers.

These are used to perform a pre-fetch of the Patient and  Coverage records.

<pre>
{
  "hookInstance": "d1577c69-dfbe-44ad-ba6d-3e05e953b2ea",
  "fhirServer": "http://fhir.example.com",
  "hook": "encounter-start",
  "user": "Practitioner/example",
  "context": {
    "userId" : "Practitioner/A12365498",
    "patientId" : "1239876",
    "encounter" : "654"
  },
  "prefetch" : {
    "healthPlanMember" : "Patient/{{Patient.id}}",
    "healthPlanCoverage" : "Coverage/?beneficiary=Patient/{{Patient.Id}}",
    "MemberEncounterHistory" : {
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfca-44eb-be6d-1a05a953b2db"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Encounter".
       "description" : "Request for Member Encounter History",
       "focus" : "Patient/{{Patient.Id}}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "hustoryRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
           },
           {
           "type" : "organizationExcluded",
           "valueExpression" : "organization:not=XYZ123ABC"
           }
        ] 
    }
    "MemberProcedureHistory" : { 
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfcb-44ec-be6d-2a05a953b2bc"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Procedure",
       "description" : "Request for Member Procedure History",
       "focus" : "Patient/{{Patient.Id}}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "hustoryRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
           }
       ] 
    }
    "MemberMedicationHistory" : { 
       "resourceType" : "Task",
       "identifier" : [{ "value" : "e1577a69-dfcc-44ed-be6d-3a05a953b2cb"}],
       "status" : "requested",
       "intent" : "proposal",
       "code" : "MemberHistory-Medication",
       "description" : "Request for Member Medication History",
       "focus" : "Patient/{{Patient.Id}}",
       "for" : "Practitioner/A12365498",
       "encounter" : "654",
       "performerType" : "56542007",
       "input" : [{
           "type: : "hustoryRange",
           "valuePeriod" : {
              "start" : "YYYY-MM-DD",
              "end" : "YYYY-MM-DD"
           }
       ] 
} 
</pre>



