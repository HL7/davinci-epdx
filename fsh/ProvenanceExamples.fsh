Instance: ExampleProvenanceTransmitter
InstanceOf: pdex-provenance
Description: "Example of a Transmitter Provenance record for a bundle"
* id = "1000001"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
* target[0].reference = "bundle/2000002"
* recorded = "2020-07-09T15:26:23.217+00:00"
* agent[0].type = http://terminology.hl7.org/CodeSystem/ProvenanceAgentRoleType#transmitter
* agent[0].who.reference = "Organization/2"
//* extension[sourceFormat].valueCodeableConcept =  http://terminology.hl7.org/CodeSystem/ProvenancePayerDataSource#hl7v2adt

Instance: ExampleProvenanceAuthor
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a practitioner's organization as the author"
* id = "1000002"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-10T16:26:23.217+00:00"
* target[0].reference = "encounter/2000003"
* recorded = "2020-07-10T16:26:23.217+00:00"
* agent[0].type = http://terminology.hl7.org/CodeSystem/ProvenanceAgentRoleType#author
* agent[0].who.reference = "Organization/3"
* extension[sourceFormat].valueCodeableConcept =  http://terminology.hl7.org/CodeSystem/ProvenancePayerDataSource#hl7ccda


Instance: ExampleProvenanceSoloPractitioner
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a sole practitioner as the author"
* id = "1000003"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-11T17:26:23.217+00:00"
* target[0].reference = "encounter/2000004"
* recorded = "2020-07-11T17:26:23.217+00:00"
* agent[0].type = http://terminology.hl7.org/CodeSystem/ProvenanceAgentRoleType#author
* agent[0].who.reference = "Practitioner/4"
* extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerConversionSource#x12837



Instance: ExampleProvenancePayerSource
InstanceOf: pdex-provenance
Description: "Example of an payer being the source of the data"
* id = "1000004"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-12T18:26:23.217+00:00"
* target[0].reference = "MedicationDispense/1000001"
* recorded = "2020-07-12T18:26:23.217+00:00"
* agent[0].type = http://terminology.hl7.org/CodeSystem/ProvenanceAgentRoleType#source
* agent[0].who.reference = "Organization/2"
* extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/ValueSet/ValueSet-ProvenancePayerConversionSource#ncpdp

