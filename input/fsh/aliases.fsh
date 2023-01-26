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

// Da Vinci Hrex IG
//  Alias:   $HrexCoverage = http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage
Alias: $HrexCoverage = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/hrex-coverage
Alias: $HrexOperationMemberMatch = http://hl7.org/fhir/us/davinci-hrex/OperationDefinition/member-match
// Alias: $HrexOperationMemberMatch = http://build.fhir.org/ig/HL7/davinci-ehrx/OperationDefinition/member-match

// Da Vinci Pdex IG
Alias: $PdexDevice = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-device
Alias: $PdexMedicationDispense = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense
//  Alias: $PdexSourceProvenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-source-provenance
Alias: $PdexProvenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance
Alias: $Provenance = http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance


// Code Systems
Alias: $FDANationalDrugCodeCS = http://hl7.org/fhir/sid/ndc
Alias: $DeviceStatus = http://hl7.org/fhir/device-status

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

// CARIN BB
Alias: $AdjudicationCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication

// National Directory
Alias: $EndpointTypeCS = http://hl7.org/fhir/us/directory-query/CodeSystem/EndpointTypeCS
Alias: $ExtnEndpointUsecase = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase
Alias: $ExtnIGsSupported = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-igsSupported
Alias: $ExtnSecureExchangeArtifacts = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-secureExchangeArtifacts
Alias: $ExtnTrustFramework = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-trustFramework
Alias: $ExtnSecureEndpoint = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-secureEndpoint
Alias: $ExtnAssociatedServers = http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-associatedServers

// CMS HCPS Codes
Alias: $CMSHCPCSCodes = https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets
Alias: $CMSHIPPSCodes = https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes
Alias: $CMSRemittanceAdviceRemarkCodes = https://x12.org/codes/remittance-advice-remark-codes
