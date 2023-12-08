//
//  Extensions for Payer Data Exchange
//

Extension: ProvenanceSourceFrom
Title: "An attribute to describe the data source a resource was constructed from"
Description: "Attributes that identify the source record format from which data in the referenced resources was derived"

* insert PdexStructureDefinitionContent

//  * extension contains
//  source 0..1
* ^context.type = #element
* ^context.expression = "Provenance.entity"

* value[x] ^short = "Source record format from which data was derived"
//  * extension[source].url ProvenancePayerSourceFormat
//  * extension[source].value[x] only CodeableConcept
//  * extension[source].valueCodeableConcept from ProvenancePayerSourceFormat (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept from ProvenancePayerSourceFormat (extensible)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

//
//Extension for MedicationDispense
//

Extension: DispenseRefill
Title: "An attribute to express the refill number of a prescription"
Description: "Attribute that identifies the refill number of a prescription. e.g., 0, 1, 2, etc."
* insert PdexStructureDefinitionContent
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
//* ^context.type = #element
* ^context.type = #element
* ^context.expression = "MedicationDispense"

* value[x] ^short = "Refill number of this prescription"
* value[x] only Quantity
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

// * extension contains refillNum 0..1

// * extension[refillNum] ^short = "Refill number of this prescription"
// * extension[refillNum].valueSimpleQuantity only SimpleQuantity


Extension: PriorAuthorizationUtilization
Title: "An attribute to express the amount of a service or item that has been utilized"
Description: "Attribute that expresses the amount of an item or service that has been consumed under the current prior authorization."
* insert PdexStructureDefinitionContent
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
//* ^context.type = #element
* ^context.type = #element
* ^context.expression = "ExplanationOfBenefit.total"
* value[x] ^short = "Amount/Quantity of an item or service that has been consumed/utilized"
* value[x] only Quantity or Ratio
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

Extension: LevelOfServiceCode
Id: extension-levelOfServiceCode
Description: "A code specifying the level of service being requested (UM06)"
* ^context.type = #element
* ^context.expression = "ExplanationOfBenefit"
* value[x] only CodeableConcept
* valueCodeableConcept from https://valueset.x12.org/x217/005010/request/2000E/UM/1/06/00/1338 (required)
* valueCodeableConcept ^binding.description = "Codes specifying the level of service rendered. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: ReviewAction
Id: extension-reviewAction
Description: "The details of the review action that is necessary for the authorization."
* ^context.type = #element
* ^context.expression = "ExplanationOfBenefit.item.adjudication"
* extension contains ReviewActionCode named code 0..1 and number 0..1 and reasonCode 0..* and secondSurgicalOpinionFlag 0..1
* extension[code] ^short = "Healthcare Services Outcome"
* extension[number].value[x] only string
* extension[number] ^short = "Item Level Review Number"
* extension[reasonCode].value[x] only CodeableConcept
* extension[reasonCode].valueCodeableConcept from X12278ReviewDecisionReasonCode (required)
* extension[reasonCode] ^short = "Explanation of the review denial or partial approval"
* extension[secondSurgicalOpinionFlag].value[x] only boolean
* extension[secondSurgicalOpinionFlag] ^short = "Whether a second surgical opinion is need for approval"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

Extension: ReviewActionCode
Id: extension-reviewActionCode
Description: "The code describing the result of the review."
* ^context.type = #element
* ^context.expression = "ExplanationOfBenefit.item.adjudication.extension"
* value[x] only CodeableConcept
* valueCodeableConcept from https://valueset.x12.org/x217/005010/response/2000F/HCR/1/01/00/306 (required)
* valueCodeableConcept ^binding.description = "Codes indicating type of action. These codes are listed within an X12 implementation guide (TR3) and maintained by X12. All X12 work products are copyrighted. See their website for licensing terms and conditions."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


//Extension; Fhirig
//Id: fhir-ig-extension
//Description: "Payer-to-Payer FHIR IG"
//

// --------------------------------------------
// NDH Extensions
// --------------------------------------------

// Extensions used for NDH. Ported here to enable publication of PDex IG.
//* extension contains
//    AssociatedServers named associated-servers 0..* and
//    DynamicRegistration named dynamic-registration 0..*  and
//    EndpointAccessControlMechanism named access-control-mechanism 0..1 and
//    EndpointConnectionTypeVersion named connection-type-version 0..* and
//    EndpointRank named endpoint-rank 0..1 and
//    EndpointUsecase named endpoint-usecase 0..* and
//    FhirIg named fhir-ig 0..* and
//    IdentifierStatus
//    SecureExchangeArtifacts named secure-exchange-artifacts 0..*  and
//    TrustFramework named trust-framework 0..*  and
//    VerificationStatus named verification-status 0..1

Extension: AssociatedServers
Id: base-ext-associatedServers
Title: "NDH Associated Servers"
Description: "Associated Servers"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
   associatedServersType  1..1 MS and
   serverURL 0..1 MS
* extension[associatedServersType].value[x] only CodeableConcept
* extension[associatedServersType] ^short = "Associated Server Type"
* extension[associatedServersType].value[x] 1..1
* extension[associatedServersType].value[x] from NdhAssociatedServersTypeVS (extensible)
* extension[serverURL].value[x] only string
* extension[serverURL] ^short = "Binary"
* extension[serverURL].value[x] 1..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: ContactPointAvailableTime
Id: base-ext-contactpoint-availabletime
Title: "NDH Contactpoint Availabletime"
Description: "An extension representing the days and times a contact point is available"
* value[x] 0..0
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #fhirpath
* ^context.expression = "descendants()"
//* ^context.type = #element
//* ^context.expression = ["Endpoint",
* extension contains
   daysOfWeek 0..* MS and
   allDay 0..1 MS and
   availableStartTime 0..1 MS and
   availableEndTime 0..1 MS
* extension[daysOfWeek].value[x] only code
* extension[daysOfWeek].valueCode from $DaysOfWeekVS
* extension[allDay].value[x] only boolean
* extension[availableStartTime].value[x] only time
* extension[availableEndTime].value[x] only time
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: DynamicRegistration
Id: base-ext-dynamicRegistration
Title: "NDH Dynamic Registration"
Description: "Dynamic Registration"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
   trustProfile 0..1 and
   version  0..1 MS
   //binary 1..1 MS
* extension[trustProfile].value[x] only CodeableConcept
* extension[trustProfile].value[x] from TrustProfileVS (extensible)
* extension[version].value[x] only string
* extension[version] ^short = "Trust Profile Version"
* extension[version].value[x] 0..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: EndpointAccessControlMechanism
Id: base-ext-endpointAccessControlMechanism
Title: "NDH Endpoint Access Control Mechanism"
Description: "Endpoint Access Control Mechanism"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from EndpointAccessControlMechanismVS (extensible)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: EndpointConnectionTypeVersion
Id: base-ext-endpoint-connection-type-version
Title: "NDH Endpoint Connection Type Version"
Description: "An extension for endpoint connection type version"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
//* ^context.type = #element
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from EndpointConnectionTypeVersionVS (extensible)
//* valueCodeableConcept from EndpointConnectionTypeVersionVS (extensible)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: EndpointRank
Id: base-ext-endpoint-rank
Title: "NDH Endpoint Rank"
Description: "Order established by a Role, Organization… for Endpoints capable of transferring the same content"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
//* ^context.type = #element
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 1..1
* value[x] only positiveInt
//* valuePositiveInt 1..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: EndpointUsecase
Id: base-ext-endpoint-usecase
Title: "NDH Endpoint Usecase"
Description: "EndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 0..0
* extension contains
   endpointUsecasetype 1..1 MS and
   standard 0..1 MS
* extension[endpointUsecasetype] ^short = "An indication of the type of services supported by the endpoint"
* extension[endpointUsecasetype].value[x] only  CodeableConcept
* extension[endpointUsecasetype].value[x]  1..1
* extension[endpointUsecasetype].value[x] from NdhFhirEndpointUseCaseVS (extensible)
* extension[standard] ^short = "A URI to a published standard describing the services supported by the endpoint (e.g. an HL7 implementation guide)"
* extension[standard].value[x] only uri
* extension[standard].value[x] 1..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: FhirIg
Id: base-ext-fhir-ig
Title: "NDH FHIR IG"
Description: "FHIR IG"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 0..0
* extension contains
   ig-publication 0..1 and
   ig-name 0..1 and
   ig-version 0..1
* extension[ig-publication].value[x] only uri
* extension[ig-publication] ^short = "IG Publication"
* extension[ig-name] ^short = "IG Name"
* extension[ig-name].value[x] only string
* extension[ig-name].value[x] 1..1
* extension[ig-version].value[x] only string
* extension[ig-version] ^short = "IG Version"
* extension[ig-version].value[x] 1..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: IdentifierStatus
Id: base-ext-identifier-status
Title: "NDH Identifier Status"
Description: "Describes the status of an identifier"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* ^context.expression = "Identifier"
* ^context.type = #element
* ^date = "2017-11-20T11:33:43.51-05:00"
* value[x] 1..1 MS
* value[x] only code
* value[x] from IdentifierStatusVS (required)
* value[x] ^short = "active|inactive|issued-in-error|revoked|pending"
//* valueCode from IdentifierStatusVS (required)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: SecureExchangeArtifacts
Id: base-ext-secureExchangeArtifacts
Title: "NDH Secure Exchange Artifacts"
Description: "Secure Exchange Artifacts"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
   secureExchangeArtifactsType  1..1 MS and
   certificate 0..1 MS and
   expirationDate 0..1
* extension[secureExchangeArtifactsType].value[x] only CodeableConcept
* extension[secureExchangeArtifactsType] ^short = "Secure Artifact Type"
* extension[secureExchangeArtifactsType].value[x] 1..1
* extension[secureExchangeArtifactsType].value[x] from NdhSecureExchangeArtifactsVS (extensible)
* extension[certificate].value[x] only base64Binary
* extension[certificate].value[x] 1..1
* extension[certificate] ^short = "Certificate"
* extension[expirationDate].value[x] only dateTime
* extension[expirationDate].value[x] 1..1
* extension[expirationDate] ^short = "Expiration Date"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: TrustFramework
Id: base-ext-trustFramework
Title: "NDH Trust Framework"
Description: "Trust Framework"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
   trustFrameworkType  1..1 MS and
   qualifier 0..1 MS and
   signedArtifact 0..1 and
   publicCertificate 0..1
* extension[trustFrameworkType].value[x] only CodeableConcept
* extension[trustFrameworkType] ^short = "Trust Framework Type"
* extension[trustFrameworkType].value[x] from TrustFrameworkTypeVS (extensible)
* extension[qualifier].value[x] only string
* extension[qualifier] ^short = "Qualifier"
* extension[qualifier].value[x] 1..1
* extension[signedArtifact].value[x] only base64Binary
* extension[signedArtifact] ^short = "Signed Artifact"
* extension[signedArtifact].value[x] 1..1
* extension[publicCertificate].value[x] only base64Binary
* extension[publicCertificate] ^short = "Public Certificate"
* extension[publicCertificate].value[x] 1..1
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


Extension: VerificationStatus
Id: base-ext-verification-status
Title: "NDH Verification Status"
Description: "Indicates a resource instance verification status"
// Attempting to resolve warning: Review the extension type: extensions should not have a context of Element unless it's really intended that they can be used anywhere
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from NdhVerificationStatusVS (extensible)
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm



// ---------------------------------------
// Payer-to-Payer Group Attribution Extensions
// date/time data exported for member
Extension: LastTransmission
Id: base-ext-last-transmission
Title: "Member Last Transmission"
Description: "Indicates the last date/time that data ware requested and transmitted for a member as part of a data delta access request."
* ^context.type = #element
* ^context.expression = "Group"
* value[x] 0..1
* value[x] only dateTime
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


// type of data exported (taken from _type parameter in DavinciDataExport Operation
Extension: LastTypes
Id: base-ext-last-types
Title: "Member Last Resource Types"
Description: "Indicates the resources exported in the last export operation. This string can be taken from the DaVinci Data Export Request _type Parameter."
* ^context.type = #element
* ^context.expression = "Group"
* value[x] 0..1
* value[x] only string
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


// type of data exported with filter (taken from _typeFilter parameter in DavinciDataExport Operation
Extension: LastFilters
Id: base-ext-last-typefilter
Title: "Member Last Resource Filters"
Description: "Indicates the filters applied to the resources exported in the last export operation. This string can be taken from the DaVinci Data Export Request _typeFilter Parameter."
* ^context.type = #element
* ^context.expression = "Group"
* value[x] 0..1
* value[x] only string
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
