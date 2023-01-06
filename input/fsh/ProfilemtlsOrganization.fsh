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
* text.status = "generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Organization</b><a name=\"rubicononyxhealth3\"> </a></p><div style=\"display:  inline-block; background-color:  #d9e0e7; padding:  6px; margin:  4px; border:  1px solid #8da1b4; border-radius:  5px; line-height:  60%\"><p style=\"margin-bottom:  0px\">Resource Organization &quot;rubicononyxhealth3&quot; Updated &quot;2022-07-04 15:00:00+0000&quot; </p><p style=\"margin-bottom:  0px\">Profile: <a href=\"StructureDefinition-mtls-managing-organization.html\">mTLS Organization</a></p></div><p><b>identifier</b>: id:Â rubicononyxhealth3</p><p><b>active</b>: true</p><p><b>type</b>: Payer <span style=\"background:  LightGoldenRodYellow; margin:  4px; border:  1px solid khaki\"> (<a href=\"CodeSystem-OrgTypeCS.html\">Organization Type</a>#payer)</span></p><p><b>name</b>: RubiconOnyxHealth</p><p><b>endpoint</b>: <a href=\"#Endpoint_rubicon-mtls-endpoint3\">See above (Endpoint/rubicon-mtls-endpoint3)</a></p></div>"
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
