Profile:        MtlsEndpoint
Parent:         Endpoint
Id:             mtls-endpoint
Title:          "mTLS Endpoint"
Description:    "The mTLS Endpoint is used to assist payers in defining their mTLS endpoints and discovering other Payer's mTLS endpoints"
* insert PdexStructureDefinitionContent
* identifier 1..1 MS
* identifier ^short = "Unique identifier for Payer"
* status 1..1 MS
* status ^short = "Active, Suspended, Test"
* connectionType 1..1 MS
* connectionType ^short = "hl7-fhir-rest"
* name 0..1 MS
* name ^short = "Payer-Payer Exchange"
* managingOrganization 0..1 MS
* contact 0..* MS
* address 1..1 MS
* address ^short = "Provide a URL"
* extension contains MtlsSignedObject named pdex-mtls-signedobject-extension 1..* MS
