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
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: TrustProfileVS
Title: "Trust Profile Value Set"
Description:  "Codes for documenting trust profile"
* ^experimental = false
* codes from system TrustProfileCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: EndpointAccessControlMechanismVS
Title: "Endpoint Access Control Mechanism Value Set"
Description: "Codes for documenting access control mechanism"
* ^experimental = false
* codes from system EndpointAccessControlMechanismCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: EndpointConnectionTypeVS
Title: "Endpoint Connection Types Value Set"
Description:  "Endpoint Connection Types"
* ^experimental = false
* codes from system $ConnectionTypeCS
* codes from system EndpointConnectionTypeCS
* codes from system EndpointHieSpecificConnectionTypeCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


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
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: EndpointFhirMimeTypeVS
Title: "Endpoint FHIR Mimetype Value Set"
Description: "Endpoint FHIR mimetype"
* ^experimental = false
* $BCP13#application/fhir+xml "FHIR XML"
* $BCP13#application/fhir+json "FHIR JSON"
* $BCP13#application/fhir+turtle "FHIR Turtle"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Type Value Set"
Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* EndpointPayloadTypeCS#NA  "Not Applicable"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: IdentifierStatusVS
Title: "Identifier Status Value Set"
Description: "Codes for Identifier Status"
* ^experimental = false
* codes from system CredentialStatusCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: NdhFhirEndpointUseCaseVS
Title: "NDH FHIR Endpoint Usecase Value Set"
Description:  "Codes for documenting business use case by a general grouping by business area."
* ^experimental = false
* codes from system NdhFhirEndpointUseCaseCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: NdhSecureExchangeArtifactsVS
Title: "Secure Exchange Artifacts Value Set"
Description: "Secure Exchange Artifacts"
* ^experimental = false
* codes from system NdhSecureExchangeArtifactsCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: TrustFrameworkTypeVS
Title: "Trust Framework Type Value Set"
Description: "Trust Framework Type"
* ^experimental = false
* codes from system TrustFrameworkTypeCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


ValueSet: NdhVerificationStatusVS
Title: "NDH Verification Status Value Set"
Description:  "Codes for verification status"
* ^experimental = false
* codes from system NdhVerificationStatusCS
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


