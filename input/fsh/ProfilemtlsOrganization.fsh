Profile:     MtlsOrganization
Parent:      ndh-Organization
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
* endpoint 0..1 MS
* endpoint ^short = "Reference to Payer-to-Payer mTLS endpoint resource"
* endpoint only Reference(MtlsEndpoint)

// ---------------------------
Instance: rubicononyxhealth3
InstanceOf: MtlsOrganization
Description: "Example of mTLS Managing Organization"
// * id = "diamondonyxhealth3"
* identifier.value = "rubicononyxhealth3"
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* active = true
* name = "RubiconOnyxHealth"
* type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"
* endpoint.reference = "Endpoint/rubicon-mtls-endpoint3"




// --------------------------
//ValueSet: OrgTypeVS
//Title: "Organization Type VS"
//Description:  "Categories of organizations based on criteria in provider directories."
//* ^experimental = true
//* codes from system OrgTypeCS
//* OrgTypeCS#payer   // Organization profile uses only this type


// --------------------------
//CodeSystem: OrgTypeCS
//Title: "Organization Type"
//Description: "Categories of organizations based on criteria in provider directories."
//* ^experimental = true
//* #fac "Facility" "A physical healthcare facility"
//* #prvgrp "Provider Group" "A healthcare provider entity"
//* #payer "Payer" "A healthcare payer"
//* #atyprv "Atypical Provider" "Providers that do not provide healthcare"
//* #bus "Non-Healthcare Business" "An organization that does not meet the definitions of a Healthcare or Atypical Provider, and is not a payer or healthcare facility"
//* #ntwk "Network" "A healthcare provider insurance network"
//* ^caseSensitive = true
