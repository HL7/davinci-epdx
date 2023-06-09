Profile:     MtlsOrganization
Parent:      $USCoreOrganization
Id:          mtls-managing-organization
Title:       "mTLS Organization"
Description: "The mTLS Organization record is used to identify the contact information for a Payer that owns a mTLS Endpoint."
* insert PdexStructureDefinitionContent
* identifier 1..* MS
* identifier ^short = "Unique identifiers for Payer"
// * active 1..1 MS
// * type 1..1 MS
// * type from OrgTypeVS (required)
// * type ^short = "Fixed value=payer"
* telecom 1..* MS
* telecom ^short = "Provide URL(s) for member support as required on Member ID card"
* telecom.system 1..1 MS
* telecom.system = http://hl7.org/fhir/contact-point-system#url "URL"
* telecom.value ^short = "URL of Member Support as published on Member ID card"
* endpoint 0..1 MS
* endpoint ^short = "Reference to Payer-to-Payer mTLS endpoint resource"
* endpoint only Reference(MtlsEndpoint)

