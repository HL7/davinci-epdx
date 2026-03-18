Instance: BulkMemberMatch
InstanceOf: OperationDefinition
Usage: #definition
// Id: bulk-member-match
Title: "PDex Bulk Member Match Operation"
Description: "Bulk Member Match Operation enables Payers to match multiple members against another Payer's records for bulk data exchange. This operation **SHALL** be performed asynchronously following the [FHIR Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html). The kick-off request (HTTP POST with `Prefer: respond-async`) returns HTTP 202 Accepted with a `Content-Location` header pointing to a status endpoint. Clients poll that endpoint until the operation completes, at which point the response contains Group resources categorizing members as matched, non-matched, or consent-constrained. The matched members Group Id is then used with the $davinci-data-export operation — also an async bulk export — to retrieve member health data in ndjson format.\n\nInput parameters SHALL conform to the [PDex Multi-Member Match Request](StructureDefinition-pdex-parameters-multi-member-match-bundle-in.html) profile. Output parameters SHALL conform to the [PDex Multi-Member Match Response](StructureDefinition-pdex-parameters-multi-member-match-bundle-out.html) profile."
* experimental = true
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch"
* version = "2.2.0"
* name = "BulkMemberMatch"
* status = #active
* kind     = #operation
* code     = #bulk-member-match
* resource = #Group
* system   = false
* type     = true
* instance = false
* date = "2025-05-14T21:28:59+02:00"
* publisher = "HL7 International / Financial Management"
* comment = "The Group resources returned by this operation can be used as input to the $davinci-data-export operation (defined in the Da Vinci Member Attribution IG) to perform bulk data export and retrieve the associated member health history in ndjson format."
* inputProfile  = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
* outputProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-out"

// // ─── Add “in” parameter for MemberBundle ─────────────────────────────────────
//* parameter[0].name = #MemberBundle
//* parameter[0].use = #in
//* parameter[0].min = 1
//* parameter[0].max = "1"
//* parameter[0].type = #Bundle
// * parameter[0].profile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
//* parameter[0].documentation = "Bundle containing multiple Members to be matched."

// 2) Declare your one slice for MemberBundle
//* parameter contains MemberBundle 1..*
* parameter[+].name = #MemberBundle
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
//* parameter[MemberBundle].type = #Bundle
// * parameter[0].profile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-parameters-multi-member-match-bundle-in"
//* parameter[=].documentation = "Bundle containing multiple Members to be matched."


* parameter[=].part[+].name = #MemberPatient
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Patient
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexPatientDemographics)


* parameter[=].part[+].name = #CoverageToMatch
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Coverage
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexCoverage)


* parameter[=].part[+].name = #CoverageToLink
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Coverage
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexCoverage)


* parameter[=].part[+].name = #Consent
* parameter[=].part[=].use = #in
* parameter[=].part[=].type = #Consent
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].targetProfile = Canonical($HRexConsent)



// ─── Output ──────────────────────────────────────────────────────────────────
// This operation is async. The immediate kick-off response is HTTP 202 Accepted
// with a Content-Location header; there is no synchronous Parameters response body.
// Clients SHALL poll the Content-Location URL until the operation completes.
// The completed response delivers Group resources via the async manifest (ndjson).
// Out parameters are declared here to satisfy the outputProfile consistency check.

* parameter[+].name = #MatchedMembers
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Group
* parameter[=].documentation = "Group of members successfully matched. Delivered asynchronously via the bulk data completion manifest."

* parameter[+].name = #NonMatchedMembers
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Group
* parameter[=].documentation = "Group of members that could not be matched. Delivered asynchronously via the bulk data completion manifest."

* parameter[+].name = #ConsentConstrainedMembers
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Group
* parameter[=].documentation = "Group of members matched but excluded due to consent constraints. Delivered asynchronously via the bulk data completion manifest."
