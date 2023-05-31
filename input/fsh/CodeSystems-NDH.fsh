// CodeSystems used for NDH. Ported here to enable publication of PDex IG.
//* CodeSystems
// CredentialStatusCS
// EndpointAccessControlMechanismCS
// EndpointConnectionTypeCS
// EndpointConnectionTypeVersionCS
// EndpointFhirMimeTypeCS
// EndpointHieSpecificConnectionTypeCS
// EndpointPayloadTypeCS
// NdhAssociatedServersTypeCS
// NdhFhirEndpointUseCaseCS
// NdhSecureExchangeArtifactsCS
// NdhVerificationStatusCS
// TrustFrameworkTypeCS
// TrustProfileCS


CodeSystem: CredentialStatusCS
Title: "Credential Status Code System"
Description: "This code system contains codes for indicating the status of a credential, such as an identifier or qualification."
* ^experimental = false
* #active	"active"	"The credential may be considered valid for use."
* #inactive "inactive"	"The credential may not be considered valid for use."
* #issued-in-error	"issued in error"	"The credential was mistakenly assigned and should not be considered valid for use."
* #revoked	"revoked"	"The credential was revoked by the issuing organization and should not be considered valid for use."
* #pending	"pending"	"The credential has not been officially assigned. It may or may not be considered valid for use."
* #unknown	"unknown"	"The status of this credential is unknown. It may or may not be considered valid for use."
* ^caseSensitive = true


//web-server security (username token, x.509 certificate, saml assertion, kerberos ticket)
CodeSystem: EndpointAccessControlMechanismCS
Title: "Endpoint Access Control Mechanism Code System"
Description: "Endpoint Access Control Mechanism"
* ^experimental = false
* ^caseSensitive = true
* #public  "Public" "Public"
* #opaque-access-token "Opaque Access Token" "Opaque Access Token"
* #jwt-access-token "JWT Access Token" "JWT Access Token"
* #mutual-tls "Mutual TLS" "Mutual TLS"
* #wss-saml-token "WSS SAML Token" "WSS SAML Token"
* #wss-username-token "WSS User Name Token" "WSS User Name Token"
* #wss-kerberos-token "WSS Kerberos Token" "WSS Kerberos Token"
* #wss-x509-token "WSS X509 Token" "WSS X509 Token"
* #wss-custom-token "WSS Custom Token" "WSS Custom Token"


CodeSystem:  EndpointConnectionTypeCS
  Title: "Endpoint Connection Types (additional) Code System"
  Description:  "Extension codes for http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
* ^experimental = false
* #hl7-fhir-opn "HL7 FHIR Operation" "Interact with a FHIR server interface using FHIR's RESTful interface using an operation other than messaging. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement."
* #rest-non-fhir "REST (not FHIR)" "Interact with a server using HTTP/REST but not FHIR.  Should be used for web portals."
* #ihe-xcpd "IHE XCPD" "IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery"
* #ihe-xca "IHE XCA" "IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access"
* #ihe-xdr "IHE XDR" "IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange"
* #ihe-xds "IHE XDS" "IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing"
* #ihe-iid "IHE IID" "IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display"
* #ihe-pdq "IHE PDQ" "IHE Patient Demographics Query (PDQ) - http://wiki.ihe.net/index.php/Patient_Demographics_Query"
* #ihe-pix "IHE PIX" "IHE Patient Identity Feed (PIX) - http://wiki.ihe.net/index.php/Patient_Identity_Feed"
* #ihe-mhd "IHE MHD" "IHE Mobile Healthcare (MHD) - http://wiki.ihe.net/index.php/Mobile_Healthcare"
* ^caseSensitive = true


//since our Ig fhir base is 4.0.1, http://hl7.org/fhir/FHIR-version will not contain the version beyond 4.0.1
//Therefore we have to define this value set to indicate the endpont beyond 4.0.1
CodeSystem: EndpointConnectionTypeVersionCS
Title: "Endpoint Connection Type Version Code System"
Description: "Endpoint Connection Type Version"
* ^experimental = false
* #4.3.0 "4.3.0" "FHIR Release 4B"
* ^caseSensitive = true


CodeSystem: EndpointFhirMimeTypeCS
Title: "Endpoint FHIR MimeType Code System"
Description: "Endpoint FHIR MimeType"
* ^experimental = false
* ^caseSensitive = true
* #application/fhir+json "fhr+json"
* #application/fhir+xml "fhir+xml"
* #application/fhir+turtle "fhir+turtle"


CodeSystem: EndpointHieSpecificConnectionTypeCS
Title: "Endpoint HIE Specific Connection Type Code System"
Description: "Endpoint HIE Specific Connection Type"
* ^experimental = false
* #XCPD-InitGateway-PatientDiscovery-AsyncResponse "XCPD-InitGateway-PatientDiscovery-AsyncResponse" "XCPD InitiatingGateway ITI-55 Cross Gateway Patient Discovery Asynchronous Response"
* #XCPD-RespGateway-PatientDiscovery "XCPD-RespGateway-PatientDiscovery" "XCPD RespondingGateway ITI-55 Cross Gateway Patient Discovery Synchronous"
* #XCPD-RespGateway-PatientDiscovery-Async "XCPD-RespGateway-PatientDiscovery-Async" "XCPD RespondingGateway ITI-55 Cross Gateway Patient Discovery Asynchronous"
* #XCA-InitGateway-Query "XCA-InitGateway-Query" "XCA InitiatingGateway ITI-18 Registry Stored Query Synchronous"
* #XCA-InitGateway-Retrieve "XCA-InitGateway-Retrieve" "XCA InitiatingGateway ITI-43 Retrieve Document Set Synchronous"
* #XCA-InitGateway-Query-Async "XCA-InitGateway-Query-Async" "XCA InitiatingGateway ITI-18 Registry Stored Query Asynchronous"
* #XCA-InitGateway-Retrieve-Async "XCA-InitGateway-Retrieve-Async" "XCA InitiatingGateway ITI-43 Retrieve Document Set Asynchronous"
* #XCA-InitGateway-Query-AsyncResponse "XCA-InitGateway-Query-AsyncResponse" "XCA InitiatingGateway ITI-38 Cross Gateway Query Asynchronous Response"
* #XCA-InitGateway-Retrieve-AsyncResponse "XCA-InitGateway-Retrieve-AsyncResponse" "XCA InitiatingGateway ITI-39 Cross Gateway Retrieve Asynchronous Response"
* #XCA-RespGateway-Query "XCA-RespGateway-Query" "XCA RespondingGateway ITI-38 Cross Gateway Query Synchronous"
* #XCA-RespGateway-Retrieve "XCA-RespGateway-Retrieve" "XCA RespondingGateway ITI-39 Cross Gateway Retrieve Synchronous"
* #XCA-RespGateway-Query-Async "XCA-RespGateway-Query-Async" "XCA RespondingGateway ITI-38 Cross Gateway Query Asynchronous"
* #XCA-RespGateway-Retrieve-Async "XCA-RespGateway-Retrieve-Async" "XCA RespondingGateway ITI-39 Cross Gateway Retrieve Asynchronous"
* #XDS-Registry-Feed "XDS-Registry-Feed" "XDS Registry ITI-8 Patient Identity Feed Synchronous"
* #XDS-Registry-Feed-v3 "XDS-Registry-Feed-v3" "XDS Registry ITI-44 Patient Identity Feed HL7v3 Synchronous"
* #XDS-Registry-Register "XDS-Registry-Register" "XDS Registry ITI-42 Register Document Set-b Synchronous"
* #XDS-Registry-Query "XDS-Registry-Query" "XDS Registry ITI-18 Registry Stored Query Synchronous"
* #XDS-Registry-RegOnDemand "XDS-Registry-RegOnDemand" "XDS Registry ITI-61 Register On-Demand Document Entry Synchronous"
* #XDS-Registry-Register-Async "XDS-Registry-Register-Async" "XDS Registry ITI-42 Register Document Set-b Asynchronous"
* #XDS-Registry-Query-Async "XDS-Registry-Query-Async" "XDS Registry ITI-18 Registry Stored Query Asynchronous"
* #XDS-Registry-RegOnDemand-Async "XDS-Registry-RegOnDemand-Async" "XDS Registry ITI-61 Register On-Demand Document Entry Asynchronous"
* #XDS-Repository-ProvideReg "XDS-Repository-ProvideReg" "XDS Repository ITI-41 Provide&Register Document Set-b Synchronous"
* #XDS-Repository-Retrieve "XDS-Repository-Retrieve" "XDS Repository/IntegratedSourceRepository ITI-43 Retrieve Document Set Synchronous"
* #XDS-Repository-ProvideReg-Async "XDS-Repository-ProvideReg-Async" "XDS Repository ITI-41 Provide&Register Document Set-b Asynchronous"
* #XDS-Repository-Retrieve-Async "XDS-Repository-Retrieve-Async" "XDS Repository/IntegratedSourceRepository ITI-43 Retrieve Document Set Asynchronous"
* #XDS-Repository-Register-AsyncResponse "XDS-Repository-Register-AsyncResponse" "XDS Repository/IntegratedSourceRepository ITI-42 Register Document Set-b Asynchronous Response"
* #XDS-OnDemandSource-Retrieve "XDS-OnDemandSource-Retrieve" "XDS OnDemandSource ITI-43 Retrieve Document Set Synchronous"
* #XDS-OnDemandSource-Retrieve-Async "XDS-OnDemandSource-Retrieve-Async" "XDS OnDemandSource ITI-43 Retrieve Document Set Asynchronous"
* #XDS-OnDemandSource-RegOnDemand-AsyncResponse "XDS-OnDemandSource-RegOnDemand-AsyncResponse" "XDS OnDemandSource ITI-61 Register On-Demand Document Entry Asynchronous Response"
* #XDS-Source-ProvideReg-AsyncResponse "XDS-Source-ProvideReg-AsyncResponse" "XDS Document Source ITI-41 Provide&Register Document Set-b Asynchronous Response"
* #XDS-Consumer-Query-AsyncResponse "XDS-Consumer-Query-AsyncResponse" "XDS Document Consumer ITI-18 Registry Stored Query Asynchronous Response"
* #XDS-Consumer-Retrieve-AsyncResponse "XDS-Consumer-Retrieve-AsyncResponse" "XDS Document Consumer ITI-43 Retrieve Document Set Asynchronous Response"
* #PDQ-Supplier-Query "PDQ-Supplier-Query" "PDQ Patient Demographics Supplier ITI-21 Patient Demographics Query Synchronous"
* #PDQ-Supplier-VisitQuery "PDQ-Supplier-VisitQuery" "PDQ Patient Demographics Supplier ITI-22 Patient Demographics and Visit Query Synchronous"
* #PIX-Xmanager-Feed "PIX-Xmanager-Feed" "PIX Patient Identity Cross-Reference Manager ITI-8 Patient Identity Feed Synchronous"
* #PIX-Xmanager-Feed-v3 "PIX-Xmanager-Feed-v3" "PIX Patient Identity Cross-Reference Manager ITI-30 Patient Identity Management Synchronous"
* #PIX-Xmanager-Query "PIX-Xmanager-Query" "PIX Patient Identity Cross-Reference Manager ITI-9 PIX Query Synchronous"
* #PIX-Consumer "PIX-Consumer" "PIX Patient Identifier Cross-reference Consumer ITI-10 PIX Update Notification Synchronous"
* #XDR-Recipient-ProvideReg "XDR-Recipient-ProvideReg" "XDR Document Recipient ITI-41 Provide and Register Document Set-B Synchronous"
* #MHD-Recipient-ProvideReg "MHD-Recipient-ProvideReg" "MHD Document Recipient ITI-65 Provide Document Bundle"
* ^caseSensitive = true


CodeSystem: EndpointPayloadTypeCS
  Title: "Endpoint Payload Types Code System"
  Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* #NA "Not Applicable" "Not Applicable"
* ^caseSensitive = true


CodeSystem: NdhAssociatedServersTypeCS
Title: "NDH Associated Servers Type Code System"
Description: "NDH Associated Servers Type"
* ^experimental = false
//* #fhir "FHIR" "FHIR"
* #proxy-server "Proxy Server" "Proxy Server"
//* #paticipant-gateway-server "Participant Gateway Server"   "Participant Gateway Server"
//* #service-prvider-server "Service Provider Server" "Service Provider Server"
* #indentity-provider-server "Identity Provider Server" "Identity Provider Server"
* #record-locator-service-server "Record Locator Service Server"  "Record Locator Service Server"
//* #consent-managment-service-server "Consent Management Service Server" "Consent Management Service Server"
//* #audit-logging-server "Audit Logging Server"   "Audit Logging Server"
//* #payer-gateway-server "Payer Gateway Server" "Payer Gateway Server"
//* #data-requestor-server "Data Requestor Server"  "Data Requestor Server"
//* #data-provider-server "Data Provider Server" "Data Provider Server"
* #master-patient-index-server "Master Patient Index (MPI) Server" "Master Patient Index (MPI) Server"
* #authorization-authentication-server "Authorization/Authentication Server" "Authorization/Authentication Server"
//* #authorizartion-registration-server "Authorization/Registration Server" "Authorization/Registration Server"
//* #query-broker-server "Query Broker Server" "Query Broker Server"
//* #data-source-server "Data Source Server" "Data Source Server"
//* #hie-gateway-server "HIE Gateway Server"  "HIE Gateway Server"
//* #provider-directory-server "Provider Directory Server" "Provider Directory Server"
//* #patient-identity-matching-server "Patient Identity Matching Server" "Patient Identity Matching Server"
//* #query-health-service-server "Query Health Service Server" "Query Health Service Server"
//* #certificate-authority-server "Certificate Authority Server" "Certificate Authority Server"
//* #trust-anchor-bundle-server "Trust Anchor Bundle Server" "Trust Anchor Bundle Server"
//* #direct-service-server "Direct Service Server" "Direct Service Server"
* ^caseSensitive = true


CodeSystem: NdhFhirEndpointUseCaseCS
Title: "NDH FHIR Endpoint Use Case Code System"
Description: "NDH FHIR Endpoint Use Case"
* ^experimental = false
* ^caseSensitive = true
* #cdex "CDex" "Clinical Data Exchange"
* #patientAccess "Patient Access" "Patient Access"
* #pasOperation "PAS Operation" "PAS Operation"
* #payerAttachment "Payer Attachment" "Payer Attachment"
* #payerToPayer "Payer to Payer" "Payer to Payer"
* #providerApi "Provider API" "Provider API" //FHIR-41273


CodeSystem: NdhSecureExchangeArtifactsCS
Title: "NDH Secure Exchange Artifacts Code System"
Description: "NDH Secure Exchange Artifacts"
* ^experimental = false
* ^caseSensitive = true
* #x509-ssl-tls-certificates "X509 SSL/TLS certificates" "SSL/TLS certificates"
* #x509-mtls-certificate "X509 MTLS certificate" "MTLS certificate"
* #x509-identity-certificate "X509 identity certificate" "X509 identity certificate"
* #x509-signing-certificate "X509 signing certificate" "X509 signing certificate"
* #x509-encryption-certificate "X509 encryption certificate" "X509 encryption certificate"
//* #x-509-certificates "X.509 certificates" "X.509 certificates"
//* #open-pgp-certificates "OpenPGP certificates" "OpenPGP certificates"
//* #kerberos-certificates "Kerberos certificates" "Kerberos certificates"
//* #saml-certificates "SAML certificates" "SAML certificates"
//* #self-signed-certificates "Self-signed certificates" "Self-signed certificates"
//* #authorization-server-certificate "Authorization server certificate" "Authorization server certificate"
//* #token-endpoint-certificate "Token endpoint certificate" "Token endpoint certificate"
//* #jwks-endpoint-certificate "JWKS endpoint certificate" "JWKS endpoint certificate"
//* #userinfo-endpoint-certificate "Userinfo endpoint certificate" "Userinfo endpoint certificate"
//* #revocation-endpoint-certificate "Revocation endpoint certificate" "Revocation endpoint certificate"
//* #introspection-endpoint-certificate "Introspection endpoint certificate" "Introspection endpoint certificate"
//* #registration-endpoint-certificate "Registration endpoint certificate" "Registration endpoint certificate"
//* #management-endpoint-certificate "Management endpoint certificate" "Management endpoint certificate"


CodeSystem: NdhVerificationStatusCS
Title: "NDH Resource Instance Verification Status Code System"
Description: "NDH Resource Instance Verification Status"
* ^experimental = false
* ^caseSensitive = true
* #complete "Complete" "Complete"
* #incomplete "Incomplete" "Incomplete"
* #not-required "Not Required" "Not Required"


CodeSystem: TrustFrameworkTypeCS
Title: "Trust FrameworkType Code System"
Description: "Trust Framework Type"
* ^experimental = false
* #DirectTrust "Direct Trust"
* #CareQuality "Carequality"
* #Commonwell "Commonwell"
* #TEFCA "TEFCA"
* #PayerToPayer	"Payer to Payer Trust Network"
* #Exchange	"Exchange Required by Federal Regulations"
* #PCDH "Patient Centered Data Home"
* ^caseSensitive = true


CodeSystem: TrustProfileCS
Title: "Trust Profile Code System"
Description: "Trust Profile"
* ^experimental = false
* ^caseSensitive = true
* #udap "UDAP" "UDAP"
* #smart "SMART" "SMART"

