Profile:        PdexProvenance
Parent:         Provenance
Id:             pdex-provenance
Title:          "PDex Provenance"
Description:    """ Provenance is provided by
the payer to identify the source of the information, whether the data came via a clinical record
or a claim record and whether the data was subject to manual transcription or other interpretive transformation.
"""

* occurredDateTime 0..1
* recorded 1..1
* recorded only instant
* agent.type 1..1
* agent.type from http://hl7.org/fhir/ValueSet/provenance-agent-type
* agent.type  ^comment = "Amender"
* agent.role 1..1
* agent.role from http://hl7.org/fhir/ValueSet/security-role-type (example)
* agent.role  ^comment = "Informant"
* agent.who 1..1
