Instance: PdexServerCapabilityStatement
InstanceOf: CapabilityStatement
Description: "Payer Data Exchange Server Capability Statement"

* insert PdexCapabilityStatementContent
* id = "PdexServerCapabilityStatement"
* name = "PdexServerCapabilityStatement1"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement"
* description = "Payer Data Exchange Server Capability Statement"
* rest.mode = #server

// AllergyIntolerance
* rest.resource[0].supportedProfile = $USCoreAllergyIntolerance
* rest.resource[0].type = http://hl7.org/fhir/resource-types#AllergyIntolerance
* rest.resource[0].interaction[0].code = #read
* rest.resource[0].interaction[1].code = #search-type
* rest.resource[0].interaction[2].code = #vread
* rest.resource[0].interaction[3].code = #history-instance
* rest.resource[0].interaction[4].code = #history-type
* rest.resource[0].readHistory = true

* rest.resource[0].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[0].searchRevInclude = "Provenance"
* rest.resource[0].searchParam.name = "_id"
* rest.resource[0].searchParam.type = http://hl7.org/fhir/search-param-type#string

// CarePlan
* rest.resource[1].supportedProfile = $USCoreCarePlan
* rest.resource[1].type = http://hl7.org/fhir/resource-types#CarePlan
* rest.resource[1].interaction[0].code = #read
* rest.resource[1].interaction[1].code = #search-type
* rest.resource[1].interaction[2].code = #vread
* rest.resource[1].interaction[3].code = #history-instance
* rest.resource[1].interaction[4].code = #history-type
* rest.resource[1].readHistory = true

* rest.resource[1].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[1].searchRevInclude = "Provenance"
* rest.resource[1].searchParam.name = "_id"
* rest.resource[1].searchParam.type = http://hl7.org/fhir/search-param-type#string

// CareTeam
* rest.resource[2].supportedProfile = $USCoreCareTeam
* rest.resource[2].type = http://hl7.org/fhir/resource-types#CareTeam
* rest.resource[2].interaction[0].code = #read
* rest.resource[2].interaction[1].code = #search-type
* rest.resource[2].interaction[2].code = #vread
* rest.resource[2].interaction[3].code = #history-instance
* rest.resource[2].interaction[4].code = #history-type
* rest.resource[2].readHistory = true

* rest.resource[2].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[2].searchRevInclude = "Provenance"
* rest.resource[2].searchParam.name = "_id"
* rest.resource[2].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Condition
* rest.resource[3].supportedProfile = $USCoreCondition
* rest.resource[3].type = http://hl7.org/fhir/resource-types#Condition
* rest.resource[3].interaction[0].code = #read
* rest.resource[3].interaction[1].code = #search-type
* rest.resource[3].interaction[2].code = #vread
* rest.resource[3].interaction[3].code = #history-instance
* rest.resource[3].interaction[4].code = #history-type
* rest.resource[3].readHistory = true

* rest.resource[3].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[3].searchRevInclude = "Provenance"
* rest.resource[3].searchParam.name = "_id"
* rest.resource[3].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Coverage
* rest.resource[4].supportedProfile = $HrexCoverage
* rest.resource[4].type = http://hl7.org/fhir/resource-types#Coverage
* rest.resource[4].interaction[0].code = #read
* rest.resource[4].interaction[1].code = #search-type
* rest.resource[4].interaction[2].code = #vread
* rest.resource[4].interaction[3].code = #history-instance
* rest.resource[4].interaction[4].code = #history-type
* rest.resource[4].readHistory = true

* rest.resource[4].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[4].searchRevInclude = "Provenance"
* rest.resource[4].searchParam.name = "_id"
* rest.resource[4].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Device
* rest.resource[5].supportedProfile[0] = $PdexDevice
* rest.resource[5].supportedProfile[1] = $USCoreImplantableDevice
* rest.resource[5].type = http://hl7.org/fhir/resource-types#Device
* rest.resource[5].interaction[0].code = #read
* rest.resource[5].interaction[1].code = #search-type
* rest.resource[5].interaction[2].code = #vread
* rest.resource[5].interaction[3].code = #history-instance
* rest.resource[5].interaction[4].code = #history-type
* rest.resource[5].readHistory = true

* rest.resource[5].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[5].searchRevInclude = "Provenance"
* rest.resource[5].searchParam.name = "_id"
* rest.resource[5].searchParam.type = http://hl7.org/fhir/search-param-type#string

// DiagnosticReport
* rest.resource[6].supportedProfile[0] = $USCoreDiagnosticReportLab
* rest.resource[6].supportedProfile[1] = $USCoreDiagnosticReportNote

* rest.resource[6].type = http://hl7.org/fhir/resource-types#DiagnosticReport
* rest.resource[6].interaction[0].code = #read
* rest.resource[6].interaction[1].code = #search-type
* rest.resource[6].interaction[2].code = #vread
* rest.resource[6].interaction[3].code = #history-instance
* rest.resource[6].interaction[4].code = #history-type
* rest.resource[6].readHistory = true

* rest.resource[6].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[6].searchRevInclude = "Provenance"
* rest.resource[6].searchParam.name = "_id"
* rest.resource[6].searchParam.type = http://hl7.org/fhir/search-param-type#string

// DocumentReference
* rest.resource[7].supportedProfile = $USCoreDocumentReference
* rest.resource[7].type = http://hl7.org/fhir/resource-types#DocumentReference
* rest.resource[7].interaction[0].code = #read
* rest.resource[7].interaction[1].code = #search-type
* rest.resource[7].interaction[2].code = #vread
* rest.resource[7].interaction[3].code = #history-instance
* rest.resource[7].interaction[4].code = #history-type
* rest.resource[7].readHistory = true

* rest.resource[7].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[7].searchRevInclude = "Provenance"
* rest.resource[7].searchParam.name = "_id"
* rest.resource[7].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Encounter
* rest.resource[8].supportedProfile = $USCoreEncounter
* rest.resource[8].type = http://hl7.org/fhir/resource-types#Encounter
* rest.resource[8].interaction[0].code = #read
* rest.resource[8].interaction[1].code = #search-type
* rest.resource[8].interaction[2].code = #vread
* rest.resource[8].interaction[3].code = #history-instance
* rest.resource[8].interaction[4].code = #history-type
* rest.resource[8].readHistory = true

* rest.resource[8].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[8].searchRevInclude = "Provenance"
* rest.resource[8].searchParam.name = "_id"
* rest.resource[8].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Goal
* rest.resource[9].supportedProfile = $USCoreGoal
* rest.resource[9].type = http://hl7.org/fhir/resource-types#Goal
* rest.resource[9].interaction[0].code = #read
* rest.resource[9].interaction[1].code = #search-type
* rest.resource[9].interaction[2].code = #vread
* rest.resource[9].interaction[3].code = #history-instance
* rest.resource[9].interaction[4].code = #history-type
* rest.resource[9].readHistory = true

* rest.resource[9].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[9].searchRevInclude = "Provenance"
* rest.resource[9].searchParam.name = "_id"
* rest.resource[9].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Immunization
* rest.resource[10].supportedProfile = $USCoreImmunization
* rest.resource[10].type = http://hl7.org/fhir/resource-types#Immunization
* rest.resource[10].interaction[0].code = #read
* rest.resource[10].interaction[1].code = #search-type
* rest.resource[10].interaction[2].code = #vread
* rest.resource[10].interaction[3].code = #history-instance
* rest.resource[10].interaction[4].code = #history-type
* rest.resource[10].readHistory = true

* rest.resource[10].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[10].searchRevInclude = "Provenance"
* rest.resource[10].searchParam.name = "_id"
* rest.resource[10].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Location
* rest.resource[11].supportedProfile = $USCoreLocation
* rest.resource[11].type = http://hl7.org/fhir/resource-types#Location
* rest.resource[11].interaction[0].code = #read
* rest.resource[11].interaction[1].code = #search-type
* rest.resource[11].interaction[2].code = #vread
* rest.resource[11].interaction[3].code = #history-instance
* rest.resource[11].interaction[4].code = #history-type
* rest.resource[11].readHistory = true

* rest.resource[11].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[11].searchRevInclude = "Provenance"
* rest.resource[11].searchParam.name = "_id"
* rest.resource[11].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Medication
* rest.resource[12].supportedProfile = $USCoreMedication
* rest.resource[12].type = http://hl7.org/fhir/resource-types#Medication
* rest.resource[12].interaction[0].code = #read
* rest.resource[12].interaction[1].code = #search-type
* rest.resource[12].interaction[2].code = #vread
* rest.resource[12].interaction[3].code = #history-instance
* rest.resource[12].interaction[4].code = #history-type
* rest.resource[12].readHistory = true

* rest.resource[12].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[12].searchRevInclude = "Provenance"
* rest.resource[12].searchParam.name = "_id"
* rest.resource[12].searchParam.type = http://hl7.org/fhir/search-param-type#string

// MedicationDispense
* rest.resource[13].supportedProfile = $PdexMedicationDispense
* rest.resource[13].type = http://hl7.org/fhir/resource-types#MedicationDispense
* rest.resource[13].interaction[0].code = #read
* rest.resource[13].interaction[1].code = #search-type
* rest.resource[13].interaction[2].code = #vread
* rest.resource[13].interaction[3].code = #history-instance
* rest.resource[13].interaction[4].code = #history-type
* rest.resource[13].readHistory = true

* rest.resource[13].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[13].searchRevInclude = "Provenance"
* rest.resource[13].searchParam.name = "_id"
* rest.resource[13].searchParam.type = http://hl7.org/fhir/search-param-type#string

// MedicationRequest
* rest.resource[14].type = http://hl7.org/fhir/resource-types#MedicationRequest
* rest.resource[14].interaction[0].code = #read
* rest.resource[14].interaction[1].code = #search-type
* rest.resource[14].interaction[2].code = #vread
* rest.resource[14].interaction[3].code = #history-instance
* rest.resource[14].interaction[4].code = #history-type
* rest.resource[14].readHistory = true

* rest.resource[14].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[14].searchRevInclude = "Provenance"
* rest.resource[14].searchParam.name = "_id"
* rest.resource[14].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Organization
* rest.resource[15].supportedProfile = $USCoreOrganization
* rest.resource[15].type = http://hl7.org/fhir/resource-types#Organization
* rest.resource[15].interaction[0].code = #read
* rest.resource[15].interaction[1].code = #search-type
* rest.resource[15].interaction[2].code = #vread
* rest.resource[15].interaction[3].code = #history-instance
* rest.resource[15].interaction[4].code = #history-type
* rest.resource[15].readHistory = true

* rest.resource[15].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[15].searchRevInclude = "Provenance"
* rest.resource[15].searchParam.name = "_id"
* rest.resource[15].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Patient
* rest.resource[16].supportedProfile = $USCorePatient
* rest.resource[16].type = http://hl7.org/fhir/resource-types#Patient
* rest.resource[16].interaction[0].code = #read
* rest.resource[16].interaction[1].code = #search-type
* rest.resource[16].interaction[2].code = #vread
* rest.resource[16].interaction[3].code = #history-instance
* rest.resource[16].interaction[4].code = #history-type
* rest.resource[16].readHistory = true

* rest.resource[16].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[16].searchRevInclude = "Provenance"
* rest.resource[16].searchParam.name = "_id"
* rest.resource[16].searchParam.type = http://hl7.org/fhir/search-param-type#string

* rest.resource[16].operation.name = "member-match"
* rest.resource[16].operation.definition = $HrexOperationMemberMatch

// Observation
* rest.resource[17].supportedProfile[0] = $USCorePediatricBmiForAge
* rest.resource[17].supportedProfile[1] = $USCorePediatricWeightForHeight
* rest.resource[17].supportedProfile[2] = $USCorePulseOximetry
* rest.resource[17].supportedProfile[3] = $USCoreSmokingStatus
* rest.resource[17].supportedProfile[4] = $R4ObservationVitalSigns

* rest.resource[17].type = http://hl7.org/fhir/resource-types#Observation
* rest.resource[17].interaction[0].code = #read
* rest.resource[17].interaction[1].code = #search-type
* rest.resource[17].interaction[2].code = #vread
* rest.resource[17].interaction[3].code = #history-instance
* rest.resource[17].interaction[4].code = #history-type
* rest.resource[17].readHistory = true

* rest.resource[17].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[17].searchRevInclude = "Provenance"
* rest.resource[17].searchParam.name = "_id"
* rest.resource[17].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Practitioner
* rest.resource[18].supportedProfile = $USCorePractitioner
* rest.resource[18].type = http://hl7.org/fhir/resource-types#Practitioner
* rest.resource[18].interaction[0].code = #read
* rest.resource[18].interaction[1].code = #search-type
* rest.resource[18].interaction[2].code = #vread
* rest.resource[18].interaction[3].code = #history-instance
* rest.resource[18].interaction[4].code = #history-type
* rest.resource[18].readHistory = true

* rest.resource[18].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[18].searchRevInclude = "Provenance"
* rest.resource[18].searchParam.name = "_id"
* rest.resource[18].searchParam.type = http://hl7.org/fhir/search-param-type#string

// PractitionerRole
* rest.resource[19].supportedProfile = $USCorePractitionerRole
* rest.resource[19].type = http://hl7.org/fhir/resource-types#PractitionerRole
* rest.resource[19].interaction[0].code = #read
* rest.resource[19].interaction[1].code = #search-type
* rest.resource[19].interaction[2].code = #vread
* rest.resource[19].interaction[3].code = #history-instance
* rest.resource[19].interaction[4].code = #history-type
* rest.resource[19].readHistory = true

* rest.resource[19].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[19].searchRevInclude = "Provenance"
* rest.resource[19].searchParam.name = "_id"
* rest.resource[19].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Procedure
* rest.resource[20].supportedProfile = $USCoreProcedure
* rest.resource[20].type = http://hl7.org/fhir/resource-types#Procedure
* rest.resource[20].interaction[0].code = #read
* rest.resource[20].interaction[1].code = #search-type
* rest.resource[20].interaction[2].code = #vread
* rest.resource[20].interaction[3].code = #history-instance
* rest.resource[20].interaction[4].code = #history-type
* rest.resource[20].readHistory = true

* rest.resource[20].referencePolicy = http://hl7.org/fhir/reference-handling-policy#resolves

* rest.resource[20].searchRevInclude = "Provenance"
* rest.resource[20].searchParam.name = "_id"
* rest.resource[20].searchParam.type = http://hl7.org/fhir/search-param-type#string

// Provenance
* rest.resource[21].supportedProfile[0] = $PdexProvenance
* rest.resource[21].supportedProfile[1] = $USCoreProvenance

* rest.resource[21].type = http://hl7.org/fhir/resource-types#Provenance
* rest.resource[21].interaction[0].code = #read
* rest.resource[21].interaction[1].code = #search-type
* rest.resource[21].interaction[2].code = #vread
* rest.resource[21].interaction[3].code = #history-instance
* rest.resource[21].interaction[4].code = #history-type
* rest.resource[21].readHistory = true

