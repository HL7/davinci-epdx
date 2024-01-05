Instance: ExampleProvenanceBundleTransmitter
InstanceOf: pdex-provenance
Description: "Example of a Transmitter Provenance record for a bundle"
* id = "1000017"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
* target[0].reference = "Bundle/3000002"
* recorded = "2020-07-09T15:26:23.217+00:00"
* agent[ProvenanceTransmitter][0].type = http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type#transmitter "Transmitter"
* agent[0].who.reference = "Organization/Payer1"
* agent[0].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#TRANS

