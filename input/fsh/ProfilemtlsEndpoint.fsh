Profile: MtlsEndpoint
Parent: Endpoint
Id: mtls-endpoint
Title: "mTLS Endpoint"
Description: "The mTLS Endpoint is used to assist payers in defining their mTLS endpoints and discovering other Payer's mTLS endpoints"
* insert PdexStructureDefinitionContent
* extension contains
    EndpointUsecase named endpoint-usecase 0..* and
    FhirIg named fhir-ig 0..* and
    SecureExchangeArtifacts named secure-exchange-artifacts 0..*  and
    TrustFramework named trust-framework 0..*  and
    DynamicRegistration named dynamic-registration 0..*  and
    AssociatedServers named associated-servers 0..* and
    EndpointAccessControlMechanism named access-control-mechanism 0..1 and
    EndpointConnectionTypeVersion named connection-type-version 0..* and
    EndpointRank named endpoint-rank 0..1 and
    VerificationStatus named verification-status 0..1
* extension[endpoint-usecase] ^short = "Endpoint Usecase"
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[endpoint-rank] ^short = "Preferred order for connecting to the endpoint"
* identifier MS
* identifier ^short = "Unique identifier for Payer"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(MtlsOrganization)
* status MS
* status = #active (exactly)
* connectionType MS
* connectionType from EndpointConnectionTypeVS (extensible)
* name MS
* name ^short = "Payer-Payer Exchange"
* managingOrganization only Reference(MtlsOrganization)
* managingOrganization MS
* contact.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*
* payloadType 1..1
* payloadType from EndpointPayloadTypeVS (extensible)
* payloadMimeType from EndpointFhirMimeTypeVS
* payloadMimeType MS


