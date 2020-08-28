Profile: PdexServerCapabilityStatement
Parent: CapabilityStatement
Id: pdex-server-capabilitystatement
Title: "Server CapabilityStatement profile for PDex with US Core"
Description: "CapabilityStatement server profile. Adds PDex specific profiles to US Core base."

* insert PdexStructureDefinitionContent


// Server
* rest ^slicing.discriminator.type = #value
* rest ^slicing.discriminator.path = "mode"
* rest contains server 1..1 MS
* rest[server].mode = #server
* rest[server].resource ^slicing.discriminator.type = #value
* rest[server].resource ^slicing.discriminator.path = "mode"
* rest[server].resource ^slicing.rules = #closed

* rest[server].resource contains
  us-core-allergyintolerance 0..1 and
  us-core-careplan 0..1 and
  us-core-careteam 0..1 and
  us-core-condition 0..1 and
  hrex-coverage 0..1 and
  pdex-device 0..1 and
  us-core-diagnosticreport-lab 0..1 and
  us-core-diagnosticreport-note 0..1 and
  us-core-documentreference 0..1 and
  us-core-encounter 0..1 and
  us-core-goal 0..1 and
  us-core-immunization 0..1 and
  us-core-implantable-device 0..1 and
  us-core-location 0..1 and
  us-core-medication 0..1 and
  pdex-medicationdispense 0..1 and
  us-core-medicationrequest 0..1 and
  us-core-organization 0..1 and
  us-core-patient 0..1 and
  pediatric-bmi-for-age 0..1 and
  pediatric-weight-for-height 0..1 and
  us-core-practitioner 0..1 and
  us-core-practitionerrole 0..1 and
  us-core-procedure 0..1 and
  pdex-provenance 0..1 and
  us-core-provenance 0..1 and
  us-core-pulse-oximetry 0..1 and
  us-core-smoking-status 0..1 and
  observation-vitalsigns 0..1



// Excluded Contains Section
/*

// Excluded type section
  * rest[server].resource[us-core-allergyintolerance].type = #AllergyIntolerance
  * rest[server].resource[us-core-allergyintolerance] ^slicing.rules = #closed
  * rest[server].resource[us-core-careteam].type = #CareTeam
  * rest[server].resource[us-core-careteam] ^slicing.rules = #closed
  * rest[server].resource[us-core-condition].type = #Condition
  * rest[server].resource[us-core-condition]  ^slicing.rules = #closed
  * rest[server].resource[hrex-coverage].type = #HrexCoverage
  * rest[server].resource[us-core-condition]  ^slicing.rules = #closed
  * rest[server].resource[pdex-device].type = #PdexDevice
  * rest[server].resource[us-core-condition]  ^slicing.rules = #closed
  * rest[server].resource[us-core-documentreference].type = #DocumentReference
  * rest[server].resource[us-core-condition]  ^slicing.rules = #closed

  * rest[server].resource[us-core-careplan].type = #CarePlan
  * rest[server].resource[us-core-diagnosticreport-lab].type = #DiagnosticReportLab
  * rest[server].resource[us-core-diagnosticreport-note].type = #DiagnosticReportNote
  * rest[server].resource[us-core-encounter].type = #Encounter

  * rest[server].resource[us-core-goal].type = #Goal
  * rest[server].resource[us-core-immunization].type = #Immunization
  * rest[server].resource[us-core-implantable-device].type = #ImplanatableDevice
  * rest[server].resource[us-core-location].type = #Location
  * rest[server].resource[us-core-medication].type = #Medication
  * rest[server].resource[us-core-medicationrequest].type = #MedicationRequest
  * rest[server].resource[pdex-medicationdispense].type = #PdexMedicationDispense
  * rest[server].resource[us-core-organization].type = #Organization
  * rest[server].resource[us-core-patient].type = #Patient
  * rest[server].resource[pediatric-bmi-for-age].type = #PediatricBmiForAge
  * rest[server].resource[pediatric-weight-for-height].type = #PediatricWeightForHeight
  * rest[server].resource[us-core-practitioner].type = #Practitioner
  * rest[server].resource[us-core-practitionerrole].type = #PractitionerRole
  * rest[server].resource[us-core-procedure].type = #Procedure
  * rest[server].resource[pdex-provenance].type = #PdexProvenance
  * rest[server].resource[us-core-provenance].type = #Provenance
  * rest[server].resource[us-core-pulse-oximetry].type = #PulseOximetry
  * rest[server].resource[us-core-smoking-status].type = #SmokingStatus
  * rest[server].resource[observation-vitalsigns].type = #VitalSigns
*/
