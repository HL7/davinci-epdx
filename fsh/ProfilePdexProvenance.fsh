Profile:        PdexProvenance
Parent:         us-core-provenance
Id:             Provenance
Title:          "PDex Provenance"
Description:    "Provenance is provided by the payer to identify the source of the information, whether the data came via a clinical record or a claim record and whether the data was subject to manual transcription or other interpretive transformation. This profile adds PayerSourceFormat as an extension on the entity base element."

* insert PdexStructureDefinitionContent

* recorded 1..1
* recorded ^short = "Date/Time information was received by Payer"
// * agent.type 1..1
// * agent.type from http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenanceAgentType

* agent.who 1..1 MS
* agent.who ^short = "Provide US Core Organization. If no Organization provide US Core Practitioner"
* agent.who only Reference(us-core-organization or us-core-practitioner)

* entity.extension contains ProvenanceSourceFrom named sourceFormat 0..1 MS
* entity.extension[sourceFormat] ^short = "Entity Source format that target resource was created from"
* entity.extension[sourceFormat].valueCodeableConcept from ProvenancePayerSourceFormat (required)

