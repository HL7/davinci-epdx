Profile:        PdexProvenance
Parent:         Provenance
Id:             pdex-provenance
Title:          "PDex Provenance"
Description:    """ Provenance is provided by
the payer to identify the source of the information, whether the data came via a clinical record
or a claim record and whether the data was subject to manual transcription or other interpretive transformation.
"""
Mixins: PdexStructureDefinitionContent

<<<<<<< HEAD
* recorded 1..1
* recorded ^short = "Date/Time information was received by Payer"
* agent.type 1..1
* agent.type from http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenanceAgentType

* agent.who 1..1
* agent.who ^short = "Provide US Core Organization. If no Organization provide US Core Practitioner"
* agent.who only Reference(us-core-organization | us-core-practitioner)

* extension contains sourceFormat 0..1
* extension[sourceFormat] ^short = "Source format resource was converted from"
// * extension[sourceFormat].url = "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerConversionSource"
* extension[sourceFormat].valueCodeableConcept from ProvenancePayerConversionSource
=======
* occurredDateTime 0..1
* recorded 1..1
* recorded only instant
* agent.type 1..1
* agent.type from http://hl7.org/fhir/ValueSet/ValueSet-ProvenancePayerAgent
* agent.type  ^comment = "Amender"
* agent.role 1..1
* agent.role from http://hl7.org/fhir/ValueSet/security-role-type (example)
* agent.role  ^comment = "Informant"
* agent.who 1..1
* extension contains ProvenanceConversionFrom named sourceFormat 0..1
* extension[sourceFormat] ^short = "Source format resource was converted from"
>>>>>>> master
