Instance: ExampleProvenanceTransmitter
InstanceOf: pdex-provenance
Description: "Example of a Transmitter Provenance record for a bundle"
* id = "1000001"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
* target[0].reference = "bundle/2000002"
* recorded = "2020-07-09T15:26:23.217+00:00"
* agent[0].type.coding = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler
* agent[0].who.reference = "Organization/1"
* agent[0].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#TRANS

