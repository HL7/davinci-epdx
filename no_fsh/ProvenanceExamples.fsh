Instance: ExampleProvenanceTransmitter
InstanceOf: pdex-provenance
Description: "Example of a Transmitter Provenance record for a bundle"
  * id = "1000001"
  * meta.versionId = "1"
  * meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
  * target[0].reference = "Bundle/2000002"
  * recorded = "2020-07-09T15:26:23.217+00:00"
  * agent[0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#transmitter "Transmitter"
  * agent[0].who.reference = "Organization/2"
  * entity.role = http://hl7.org/fhir/provenance-entity-role#source
  * entity.what.display = "No reference available"
  * entity.extension[sourceFormat].valueCodeableConcept = ProvenancePayerDataSource#hl7v2adt "HL7 v2 ADT"

Instance: ExampleProvenanceAuthor
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a practitioner's organization as the author"
* id = "1000002"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-10T16:26:23.217+00:00"
* target[0].reference = "Encounter/6"
* recorded = "2020-07-10T16:26:23.217+00:00"
* agent[0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#author "Author"
* agent[0].who.reference = "Organization/3"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"


Instance: ExampleProvenanceSoloPractitioner
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a sole practitioner as the author"
* id = "1000003"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-11T17:26:23.217+00:00"
* target[0].reference = "Encounter/7"
* recorded = "2020-07-11T17:26:23.217+00:00"
* agent[0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#author "Author"
* agent[0].who.reference = "Practitioner/4"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#x12837 "837 claim"



Instance: ExampleProvenancePayerSource
InstanceOf: pdex-provenance
Description: "Example of an payer being the source of the data"
* id = "1000004"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-12T18:26:23.217+00:00"
* target[0].reference = "MedicationDispense/1000001"
* recorded = "2020-07-12T18:26:23.217+00:00"
* agent[0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#source "Source"
* agent[0].who.reference = "Organization/2"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#ncpdp "NCPDP Telecommunication"


Instance: ExampleProvenancePayerModified
InstanceOf: pdex-provenance
Description: "Example of provenance based on security group recommendations"
  * id = "1000005"
  * meta.versionId = "1"
  * meta.lastUpdated = "2020-09-01T13:41:23.217+00:00"
  * target[0].reference = "Encounter/7"
  * recorded = "2020-07-12T18:26:23.217+00:00"
  * agent[0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#source "Source"
  * agent[0].who.reference = "Organization/2"
  * entity.role = http://hl7.org/fhir/provenance-entity-role#source
  * entity.what.display = "No reference available"
  * entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"

