// ValueSets used for NDH. Ported here to enable publication of PDex IG.
//* ValueSets
// NdhAssociatedServersTypeVS
// TrustProfileVS
// EndpointAccessControlMechanismVS
// EndpointConnectionTypeVS
// EndpointConnectionTypeVersionVS
// EndpointFhirMimeTypeVS
// EndpointPayloadTypeVS
// IdentifierStatusVS
// NdhFhirEndpointUseCaseVS
// NdhSecureExchangeArtifactsVS
// TrustFrameworkTypeVS
// NdhVerificationStatusVS


ValueSet: NdhAssociatedServersTypeVS
Title: "Associated Servers Type Value Set"
Description: "Associated Servers Type"
* ^experimental = false
* codes from system NdhAssociatedServersTypeCS


ValueSet: TrustProfileVS
Title: "Trust Profile Value Set"
Description:  "Codes for documenting trust profile"
* ^experimental = false
* codes from system TrustProfileCS


ValueSet: EndpointAccessControlMechanismVS
Title: "Endpoint Access Control Mechanism Value Set"
Description: "Codes for documenting access control mechanism"
* ^experimental = false
* codes from system EndpointAccessControlMechanismCS


ValueSet: EndpointConnectionTypeVS
Title: "Endpoint Connection Types Value Set"
Description:  "Endpoint Connection Types"
* ^experimental = false
* codes from system $ConnectionTypeCS
* codes from system EndpointConnectionTypeCS
* codes from system EndpointHieSpecificConnectionTypeCS


ValueSet: EndpointConnectionTypeVersionVS
Title: "Endpoint Connection Type Version Value Set"
Description: "Endpoint Connection Type Version"
* ^experimental = false
* $FHIRVersionCS#0.0.80 "DSTU 1 Official version"
* $FHIRVersionCS#0.0.81 "DSTU 1 Official version Technical Errata #1"
* $FHIRVersionCS#0.0.82 "DSTU 1 Official version Technical Errata #2"
* $FHIRVersionCS#1.0.1  "DSTU 2 (Official version)"
* $FHIRVersionCS#1.0.2  "DSTU 2 (Official version with 1 technical errata)"
* $FHIRVersionCS#3.0.0  "FHIR Release 3 (STU)"
* $FHIRVersionCS#3.0.1  "FHIR Release 3 (STU) with 1 technical errata"
* $FHIRVersionCS#4.0.0  "FHIR Release 4 (Normative + STU)"
* $FHIRVersionCS#4.0.1  "FHIR Release 4 Technical Correction"
//* codes from system EndpointConnectionTypeVersionCS
* EndpointConnectionTypeVersionCS#4.3.0 "FHIR Release 4B"


ValueSet: EndpointFhirMimeTypeVS
Title: "Endpoint FHIR Mimetype Value Set"
Description: "Endpoint FHIR mimetype"
* ^experimental = false
* codes from system EndpointFhirMimeTypeCS


ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Type Value Set"
Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* EndpointPayloadTypeCS#NA  "Not Applicable"


ValueSet: IdentifierStatusVS
Title: "Identifier Status Value Set"
Description: "Codes for Identifier Status"
* ^experimental = false
* codes from system CredentialStatusCS


ValueSet: NdhFhirEndpointUseCaseVS
Title: "NDH FHIR Endpoint Usecase Value Set"
Description:  "Codes for documenting business use case by a general grouping by business area."
* ^experimental = false
* codes from system NdhFhirEndpointUseCaseCS


ValueSet: NdhSecureExchangeArtifactsVS
Title: "Secure Exchange Artifacts Value Set"
Description: "Secure Exchange Artifacts"
* ^experimental = false
* codes from system NdhSecureExchangeArtifactsCS


ValueSet: TrustFrameworkTypeVS
Title: "Trust Framework Type Value Set"
Description: "Trust Framework Type"
* ^experimental = false
* codes from system TrustFrameworkTypeCS


ValueSet: NdhVerificationStatusVS
Title: "NDH Verification Status Value Set"
Description:  "Codes for verification status"
* ^experimental = false
* codes from system NdhVerificationStatusCS

