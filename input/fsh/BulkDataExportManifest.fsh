// ─────────────────────────────────────────────────────────────────────────────
// Bulk Data Export with Manifest Response for Provider-Member-Match
// ─────────────────────────────────────────────────────────────────────────────
// This file documents the expected bulk data export response structure when using
// the Group resources returned by the Provider-Member-Match operation with the
// $davinci-data-export operation.

// ─────────────────────────────────────────────────────────────────────────────
// Bulk Data Export Response Manifest
// ─────────────────────────────────────────────────────────────────────────────
// The $davinci-data-export operation, when invoked on a Group resource created by
// Provider-Member-Match, returns a manifest file with references to bulk data files
// containing the member health information in ndjson format.

/*
BULK DATA EXPORT MANIFEST STRUCTURE (JSON)
============================================

When invoking: GET /Group/{id}/$davinci-data-export

The payer's FHIR server returns a manifest file with the following structure:

{
  "transactionTime": "2024-12-16T15:30:00Z",
  "request": "/Group/matched-treatment-relationship-group-001/$davinci-data-export",
  "requiresAccessToken": true,
  "output": [
    {
      "type": "Patient",
      "url": "https://fhir.example.org/export/patient-1000.ndjson",
      "count": 2
    },
    {
      "type": "Condition",
      "url": "https://fhir.example.org/export/condition-1000.ndjson",
      "count": 15
    },
    {
      "type": "MedicationRequest",
      "url": "https://fhir.example.org/export/medicationrequest-1000.ndjson",
      "count": 42
    },
    {
      "type": "Observation",
      "url": "https://fhir.example.org/export/observation-1000.ndjson",
      "count": 128
    },
    {
      "type": "Procedure",
      "url": "https://fhir.example.org/export/procedure-1000.ndjson",
      "count": 8
    },
    {
      "type": "DiagnosticReport",
      "url": "https://fhir.example.org/export/diagnosticreport-1000.ndjson",
      "count": 23
    },
    {
      "type": "DocumentReference",
      "url": "https://fhir.example.org/export/documentreference-1000.ndjson",
      "count": 5
    },
    {
      "type": "Coverage",
      "url": "https://fhir.example.org/export/coverage-1000.ndjson",
      "count": 2
    },
    {
      "type": "AllergyIntolerance",
      "url": "https://fhir.example.org/export/allergyintolerance-1000.ndjson",
      "count": 3
    },
    {
      "type": "Immunization",
      "url": "https://fhir.example.org/export/immunization-1000.ndjson",
      "count": 12
    }
  ],
  "error": []
}

WORKFLOW USAGE
==============

Step 1: Provider invokes Provider-Member-Match operation
   POST /OperationDefinition/ProviderMemberMatch/$provider-member-match
   
   Request Body: Parameters resource with:
   - MembersToMatch[0].MemberPatient
   - MembersToMatch[0].CoverageToMatch
   - MembersToMatch[0].TreatmentAttestation
   - MembersToMatch[1]...

Step 2: Payer returns Group resources
   Response: Parameters resource with:
   - parameter[0].name = "MatchedMembers"
   - parameter[0].resource = Group (MemberProviderTreatmentRelationship profile)
   - parameter[1].name = "NonMatchedMembers"
   - parameter[1].resource = Group (PDexMemberNoMatchGroup profile)
   - parameter[2].name = "TreatmentAttestationConstrainedMembers"
   - parameter[2].resource = Group (PDexMemberNoMatchGroup profile)
   - parameter[3].name = "OptOutConstrainedMembers"
   - parameter[3].resource = Group (MemberOptOut profile)

Step 3: Provider invokes $davinci-data-export on matched Group
   GET /Group/{matched-group-id}/$davinci-data-export
   
   Parameters (optional):
   - _outputFormat: application/fhir+ndjson (default)
   - _since: datetime for filtering (optional)
   - _type: comma-separated list of resource types to include (optional)

Step 4: Payer responds with Content-Location header and manifest
   HTTP 202 Accepted
   Content-Location: https://fhir.example.org/export/progress/{request-id}
   
   Manifest file at Content-Location contains URLs to ndjson files
   Each file contains one resource per line in ndjson format

Step 5: Provider retrieves bulk data files from URLs in manifest
   For each file in the manifest:
   GET https://fhir.example.org/export/patient-1000.ndjson
   
   Response: ndjson format (newline-delimited JSON)
   {"resourceType":"Patient","id":"member-001",...}
   {"resourceType":"Patient","id":"member-002",...}


IMPORTANT NOTES ON COMPLIANT BULK RESPONSE
===========================================

1. MANIFEST FILE REQUIREMENTS:
   - Must include "transactionTime" field
   - Must include "request" field (the original request URL)
   - Must include "requiresAccessToken" field (true for authenticated access)
   - Must include "output" array with file references
   - Must include "error" array (empty if no errors)

2. FILE REFERENCES in "output" array:
   - Each element must have "type" (FHIR resource type)
   - Each element must have "url" (fully qualified HTTPS URL)
   - Each element should have "count" (number of resources in file)

3. NDJSON FILE FORMAT:
   - Each line is a complete, valid FHIR JSON resource
   - Lines are separated by newline (\n)
   - No extra commas or array brackets
   - Example format:
     {"resourceType":"Patient","id":"1",...}\n
     {"resourceType":"Patient","id":"2",...}\n

4. SECURITY:
   - Manifest access requires OAuth2 bearer token
   - File access requires OAuth2 bearer token
   - Tokens should have appropriate scopes
   - HTTPS is mandatory
   - Consider short-lived tokens for file access

5. RESPONSE HEADERS:
   - Expires header should indicate when manifest/files expire
   - Content-Type: application/json (for manifest)
   - Content-Type: application/fhir+ndjson (for data files)
*/


// ─────────────────────────────────────────────────────────────────────────────
// Bulk Data Export Operation Enhancement
// ─────────────────────────────────────────────────────────────────────────────
// This represents the expected behavior of the $davinci-data-export operation
// when used with Group resources returned from Provider-Member-Match

Instance: BulkMemberMatchDataExport
InstanceOf: OperationDefinition
Usage: #definition
Title: "Bulk Member Match Data Export"
Description: "When invoked on a Group resource returned from the Provider-Member-Match or Payer-to-Payer Bulk Member Match operations, this operation exports all member health data for the members in the Group. The response includes a manifest file with references to ndjson files containing FHIR resources for each member in the group."
* experimental = true
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatchDataExport"
* version = "2.1.0"
* name = "BulkMemberMatchDataExport"
* status = #active
* kind = #operation
* code = #davinci-data-export
* system = false
* type = true
* instance = true
* date = "2024-12-16T00:00:00Z"
* publisher = "HL7 International / Financial Management"
* comment = "This operation is invoked on Group resources to export bulk member health data in FHIR format. The response includes a manifest file with URLs to ndjson files."

// ─── Input Parameters ────────────────────────────────────────────────────────

* parameter[+].name = #_outputFormat
* parameter[=].use = #in
* parameter[=].type = #string
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The format for the bulk files (default: application/fhir+ndjson). Must be application/fhir+ndjson for this operation."
* parameter[=].searchType = #string

* parameter[+].name = #_since
* parameter[=].use = #in
* parameter[=].type = #instant
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Only include resources modified since this instant (format: YYYY-MM-DDTHH:MM:SS+HH:MM)"

* parameter[+].name = #_type
* parameter[=].use = #in
* parameter[=].type = #string
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Comma-separated list of resource types to include in the bulk export (e.g., Patient,Condition,MedicationRequest). If omitted, all relevant types are included."

* parameter[+].name = #_elements
* parameter[=].use = #in
* parameter[=].type = #string
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Comma-separated list of elements to include in the bulk export (e.g., Condition.code,Condition.subject)"

// ─── Output Parameter ────────────────────────────────────────────────────────

* parameter[+].name = #exportManifest
* parameter[=].use = #out
* parameter[=].type = #url
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "URL to the manifest file containing references to ndjson files with bulk member health data. The manifest file is accessed using the returned URL with an OAuth2 bearer token."
