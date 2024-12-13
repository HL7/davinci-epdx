//USCore
Alias: $USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $USCorePractitionerRole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $USCoreOrganization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias: $USCoreMedication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $USCoreAllergyIntolerance = http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Alias: $USCoreCarePlan = http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan
Alias: $USCoreCareTeam = http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam
Alias: $USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias: $USCoreDiagnosticReportLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Alias: $USCoreDiagnosticReportNote = http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Alias: $USCoreDocumentReference = http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference
Alias: $USCoreEncounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias: $USCoreGoal = http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal
Alias: $USCoreImmunization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Alias: $USCoreImplantableDevice = http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Alias: $USCoreMedicationRequest = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Alias: $USCorePediatricBmiForAge = http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age
Alias: $USCorePediatricWeightForHeight = http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height
Alias: $USCoreProcedure = http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Alias: $USCoreProvenance = http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance
Alias: $USCorePulseOximetry = http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Alias: $USCoreSmokingStatus = http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus

// R4 Base Specification
Alias: $R4ObservationVitalSigns = http://hl7.org/fhir/StructureDefinition/vitalsigns



// Da Vinci Pdex IG
Alias: $PdexDevice = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-device
Alias: $PdexMedicationDispense = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense
//  Alias: $PdexSourceProvenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-source-provenance
Alias: $PdexProvenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance
Alias: $Provenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance
Alias: $MemberMatchResult = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMultiMemberMatchResultCS
Alias: $MemberAttribution = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PdexMemberAttributionCS

// Code Systems
Alias: $FDANationalDrugCodeCS = http://hl7.org/fhir/sid/ndc
Alias: $DeviceStatus = http://hl7.org/fhir/device-status
Alias: $SignatureTypeCS = urn:iso-astm:E1762-95:2013
Alias: $V2IdentifierTypeCS = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $IdentifierTypeCS = http://terminology.hl7.org/CodeSystem/v2-0203


// SNOMED CT
Alias: $SnomedCT = http://snomed.info/sct|http://snomed.info/sct/731000124108

// PDex Base
Alias: $Base = http://hl7.org/fhir/us/davinci-pdex

// EOB
Alias: $Process-Priority = http://hl7.org/fhir/ValueSet/process-priority

Alias: $CPT = http://www.ama-assn.org/go/cpt
Alias: $HL7ClaimTypeCS = http://terminology.hl7.org/CodeSystem/claim-type
Alias: $HL7AdjudicationCS = http://terminology.hl7.org/CodeSystem/adjudication
Alias: $HL7DataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $HL7DiagnosisType = http://terminology.hl7.org/CodeSystem/ex-diagnosistype
Alias: $HL7ProcessPriority = http://terminology.hl7.org/CodeSystem/processpriority
Alias: $HL7FundsReserve = http://terminology.hl7.org/CodeSystem/fundsreserve
Alias: $HL7RelatedClaim = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship

// X12
Alias: $X12ServiceType = https://x12.org/codes/service-type-codes
Alias: $X12ClaimAdjustmentReasonCodes = https://x12.org/codes/claim-adjustment-reason-codes

// Point to CARIN BB Adjudication Code System
// FHIR-48088
Alias: $AdjudicationCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication

// National Directory
// NDH Import
Alias: $ConnectionTypeCS = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $FHIRVersionCS = http://hl7.org/fhir/FHIR-version
Alias: $DaysOfWeekVS  = http://hl7.org/fhir/ValueSet/days-of-week

//// NDH Aliases
Alias: $ExtnEndpointUsecase = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase
Alias: $ExtnIGsSupported = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-igsSupported
Alias: $ExtnSecureExchangeArtifacts = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-secureExchangeArtifacts
Alias: $ExtnTrustFramework = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-trustFramework
Alias: $ExtnSecureEndpoint = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-secureEndpoint
Alias: $ExtnAssociatedServers = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-associatedServers

Alias: $AssocServersTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhAssociatedServersTypeCS
Alias: $NdhAssociatedServersTypeVS = http://hl7.org/fhir/us/ndh/ValueSet/NdhAssociatedServersTypeVS
Alias: $CredentialStatusCS = http://hl7.org/fhir/us/ndh/CodeSystem/CredentialStatusCS

Alias: $EndpointAccessControlMechanismCS = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointAccessControlMechanismCS
Alias: $EndpointAccessControlMechanismVS = http://hl7.org/fhir/us/ndh/ValueSet/EndpointAccessControlMechanismVS
Alias: $EndpointConnectionTypeVersionCS = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointConnectionTypeVersionCS
Alias: $EndpointConnectionTypeVersionVS = http://hl7.org/fhir/us/ndh/ValueSet/EndpointConnectionTypeVersionVS
Alias: $EndpointConnectionTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointConnectionTypeCS
Alias: $EndpointConnectionTypeVS = http://hl7.org/fhir/us/ndh/ValueSet/EndpointConnectionTypeVS
Alias: $EndpointFhirMimeTypeVS = http://hl7.org/fhir/us/ndh/ValueSet/EndpointFhirMimeTypeVS
Alias: $EndpointPayloadTypeVS = http://hl7.org/fhir/us/ndh/ValueSet/EndpointPayloadTypeVS
Alias: $EndPointUseCaseCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhFhirEndpointUseCaseCS
Alias: $SecureExchangeArtifactsCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhSecureExchangeArtifactsCS
Alias: $EndpointPayloadTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointPayloadTypeCS
Alias: $EndpointTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointTypeCS
Alias: $OrgTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/OrgTypeCS
Alias: $NdhFhirEndpointUseCaseCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhFhirEndpointUseCaseCS
Alias: $NdhVerificationStatusCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhVerificationStatusCS
Alias: $TrustFrameworkTypeCS = http://hl7.org/fhir/us/ndh/CodeSystem/TrustFrameworkTypeCS
Alias: $TrustProfileCS = http://hl7.org/fhir/us/ndh/CodeSystem/TrustProfileCS
Alias: $TrustProfileVS = http://hl7.org/fhir/us/ndh/ValueSet/TrustProfileVS
Alias: $IdentifierStatusVS = http://hl7.org/fhir/us/ndh/ValueSet/IdentifierStatusVS
Alias: $NdhFhirEndpointUseCaseVS = http://hl7.org/fhir/us/ndh/ValueSet/NdhFhirEndpointUseCaseVS
Alias: $TrustFrameworkTypeVS = http://hl7.org/fhir/us/ndh/ValueSet/TrustFrameworkTypeVS
Alias: $NdhVerificationStatusCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhVerificationStatusCS
Alias: $NdhVerificationStatusVS = http://hl7.org/fhir/us/ndh/ValueSet/NdhVerificationStatusVS
Alias: $NdhSecureExchangeArtifactsCS = http://hl7.org/fhir/us/ndh/CodeSystem/NdhSecureExchangeArtifactsCS
Alias: $NdhSecureExchangeArtifactsVS = http://hl7.org/fhir/us/ndh/ValueSet/NdhSecureExchangeArtifactsVS

// NDH incorporated into PDex
// Alias: $AssocServersTypeCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/NdhAssociatedServersTypeCS
// Alias: $ExtnEndpointUsecase = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-endpoint-usecase
// Alias: $ExtnIGsSupported = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-igsSupported
// Alias: $ExtnSecureExchangeArtifacts = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-secureExchangeArtifacts
// Alias: $ExtnTrustFramework = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-trustFramework
// Alias: $ExtnSecureEndpoint = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-secureEndpoint
// Alias: $ExtnAssociatedServers = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-associatedServers
// Alias: $EndpointAccessControlMechanismCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/EndpointAccessControlMechanismCS
// Alias: $EndpointConnectionTypeCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/EndpointConnectionTypeCS
// Alias: $EndPointUseCaseCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/NdhFhirEndpointUseCaseCS
// Alias: $SecureExchangeArtifactsCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/NdhSecureExchangeArtifactsCS
// Alias: $EndpointPayloadTypeCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/EndpointPayloadTypeCS
// Alias: $EndpointTypeCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/EndpointTypeCS
// Alias: $NdhVerificationStatusCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/NdhVerificationStatusCS
// Alias: $TrustFrameworkTypeCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/TrustFrameworkTypeCS
// Alias: $TrustProfileCS = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/TrustProfileCS
Alias: $NUCCProviderTaxonomy = http://nucc.org/provider-taxonomy
Alias: $NPICS = http://hl7.org/fhir/sid/us-npi

// Replaced NDH ValueSets defined in ValueSets-NDH.fsh

// CMS HCPS Codes
Alias: $CMSHCPCSCodes = https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets
Alias: $CMSHIPPSCodes = https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes
Alias: $CMSRemittanceAdviceRemarkCodes = https://x12.org/codes/remittance-advice-remark-codes

// Da Vinci Prior Authorization Support 1.2.0-ballot
Alias: $ExtensionItemTraceNumber = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemTraceNumber
Alias: $ExtensionItemPreAuthIssueDate = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthIssueDate
Alias: $ExtensionItemPreAuthPeriod = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthPeriod
Alias: $ExtensionAuthorizationNumber = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-authorizationNumber
Alias: $ExtensionAdministrationReferenceNumber = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-administrationReferenceNumber
Alias: $ExtensionItemAuthorizedDate = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDate
Alias: $ExtensionItemAuthorizedDetail = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDetail
Alias: $ExtensionItemAuthorizedProvider = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedProvider
Alias: $ExtensionCommunicatedDiagnosis = http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-communicatedDiagnosis


//Other Aliases
Alias: $BCP13 = urn:ietf:bcp:13

// ATR
Alias: $ATRGroup = http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-group
Alias: $DaVinciPatientList = http://hl7.org/fhir/us/davinci-atr/StructureDefinition/davinci-patient-list

// HRex Aliases
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $coverage-class = http://terminology.hl7.org/CodeSystem/coverage-class
Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $uscore-provenance-participant-type = http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $standard-status = http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status
Alias: $fmm = http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm

// Da Vinci Hrex IG
Alias: $HrexCoverage = http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage
//Alias: $HrexCoverage = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/hrex-coverage
Alias: $HrexOperationMemberMatch = http://hl7.org/fhir/us/davinci-hrex/OperationDefinition/member-match
Alias: $HRexConsent = http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-consent

// Terminology Server
Alias: $CoverageRelationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship

// PDex Provenance Code Systems
Alias: $pdex-provenance-participant-type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType
Alias: $pdex-provenance-payer-data-source = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource
