// ValueSets used for NDH. Ported here to enable publication of PDex IG.
//* ValueSets
// NdhAssociatedServersTypeVS
// TrustProfileVS
// EndpointAccessControlMechanismVS
// EndpointConnectionTypeVersionVS
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

