// New Example mTLS Bundle after re-factoring to incorporate NDH Extensions, ValueSets and CodeSystems
// mTLS Bundle
Instance: example-mtls-endpoint-bundle
InstanceOf: mtls-bundle
Description: "Example of mTLS Endpoint bundle"
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* type = http://hl7.org/fhir/R4/codesystem-bundle-type.html#collection "Collection"
* timestamp = "2022-07-04T15:00:00.000Z"
* entry[0].resource.resourceType = "Organization"
* entry[0].resource.id = "DiamondOnyxHealth2"
* entry[0].resource.identifier.value = "DiamondOnyxHealth2"
* entry[0].resource.meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* entry[0].resource.active = true
* entry[0].resource.name = "DiamondOnyxHealth"
* entry[0].resource.type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"
* entry[0].resource.endpoint.reference = "diamond-mtls-endpoint2"

* entry[1].resource.resourceType = "Organization"
* entry[1].resource.id = "ServiceProviderOnyxHealth1"
* entry[1].resource.identifier.value = "ServiceOnyxHealth1"
* entry[1].resource.meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* entry[1].resource.active = true
* entry[1].resource.name = "ServiceProviderOnyxHealth"
* entry[1].resource.type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"

* entry[2].resource.resourceType = "Endpoint"
* entry[2].resource.id = "Diamond-mtls-endpoint2"
* entry[2].resource.identifier.value = "Diamond-mtls-endpoint2"
* entry[2].resource.status = http://hl7.org/fhir/endpoint-status#active "Active"
* entry[2].resource.meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* entry[2].resource.connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest "HL7 FHIR"
* entry[2].resource.name = "Diamond Health Payer-Payer endpoint"
* entry[2].resource.managingOrganization.reference = "ServiceProviderOnyxHealth1"
* entry[2].resource.address = "https://p2p.diamondonyx.example.com/mtlsendpoint"
* entry[2].resource.payloadType = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointTypeCS#NA
* entry[2].resource.extension[usecase]
* entry[2].resource.payloadType = http://hl7.org/fhir/us/directory-query/CodeSystem/EndpointPayloadTypeCS#NA "Not Applicable"
* entry[2].resource.payloadMimeType = urn:ietf:bcp:13#application/fhir+json
* entry[2].resource.extension[FhirIg].extension[ig-publication].url = "ig-publication"
* entry[2].resource.extension[FhirIg].extension[ig-publication].valueUri = "http://hl7.org/fhir/us/davinci-pdex/index.html"
* entry[2].resource.extension[FhirIg].extension[ig-name].url = "ig-name"
* entry[2].resource.extension[FhirIg].extension[ig-name].valueString = "DaVinciPayerDataExchange"
* entry[2].resource.extension[FhirIg].extension[ig-version].url = "ig-version"
* entry[2].resource.extension[FhirIg].extension[ig-version].valueString = "2.0.0 - STU2"
* entry[2].resource.extension[EndpointConnectionTypeVersion].valueCodeableConcept = http://hl7.org/fhir/FHIR-version#4.0.1 "FHIR Release 4 (Normative + STU) with 1 technical errata."
* entry[2].resource.extension[VerificationStatus].valueCodeableConcept = http://hl7.org/fhir/us/ndh/CodeSystem/NdhVerificationStatusCS#complete "Complete"

* signature.type.code = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2022-07-04T15:00:00.000Z"
* signature.who.reference = "Organization/diamondonyxhealth2"
* signature.sigFormat = urn:ietf:bcp:13#application/x-x509-ca-cert

