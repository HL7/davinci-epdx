Instance: ExampleProvenanceTransmitter
InstanceOf: pdex-provenance
Description: "Example of a Transmitter Provenance record for a bundle"
* id = "1000001"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-09T15:26:23.217+00:00"
* target[0].reference = "Bundle/2000002"
* recorded = "2020-07-09T15:26:23.217+00:00"
* agent[ProvenanceTransmitter][0].type = http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type#transmitter "Transmitter"
* agent[ProvenanceTransmitter][0].who.reference = "Organization/Payer1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = ProvenancePayerDataSource#hl7v2adt "HL7 v2 ADT"

Instance: ExampleProvenanceCustodian
InstanceOf: pdex-provenance
Description: "Example of a Custodian Provenance record for the contents of a bundle received from another payer"
* id = "1000101"
* meta.versionId = "1"
* meta.lastUpdated = "2020-08-09T15:26:23.217+00:00"
* target[0].reference = "Encounter/6"
* target[1].reference = "Encounter/7"
* recorded = "2020-08-09T15:26:23.217+00:00"
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#RECORDMGT
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#APPEND
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#custodian "Custodian"
// * agent[ProvenanceAuthor][0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#custodian "Custodian"
// * agent[ProvenanceAuthor][0].type = ProvenanceAgentRoleType#custodian "Custodian"
// Fails with error Cannot Assign
* agent[ProvenanceTransmitter][0].who.reference = "Organization/Payer1"


Instance: ExampleProvenanceAuthorEncounter6
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a practitioner's organization as the author"
* id = "1000002"
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-14T19:26:23.217+00:00"
* target[0].reference = "Encounter/6"
* recorded = "2020-07-10T16:26:23.217+00:00"
// * agent[ProvenanceAuthor][0].type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenanceAgentRoleType#author "Author"
* agent[ProvenanceAuthor][0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor][0].who.reference = "Organization/ProviderOrg1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"


Instance: ExampleProvenanceAuthorEncounter7
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a practitioner's organization as the author"
* id = "1000003"
* meta.versionId = "1"
* meta.lastUpdated = "2019-10-15T20:26:23.217+00:00"
* target[0].reference = "Encounter/7"
* recorded = "2020-07-10T16:26:23.217+00:00"
* agent[ProvenanceAuthor][0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor][0].who.reference = "Organization/ProviderOrg1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"


Instance: ExampleProvenanceSoloPractitioner
InstanceOf: pdex-provenance
Description: "Example of an author Provenance record displaying a sole practitioner as the author"
* id = "1000004"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-11T17:26:23.217+00:00"
* target[0].reference = "Encounter/7"
* recorded = "2020-07-11T17:26:23.217+00:00"
* agent[ProvenanceAuthor][0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor][0].who.reference = "Practitioner/4"
* agent[ProvenanceAuthor][=].onBehalfOf.reference = "Organization/ProviderOrg1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#x12837 "837 claim"



Instance: ExampleProvenancePayerSource
InstanceOf: pdex-provenance
Description: "Example of a payer being the source of the data"
* id = "1000005"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-12T18:26:23.217+00:00"
* target[0].reference = "MedicationDispense/1000001"
* recorded = "2020-07-12T18:26:23.217+00:00"
* agent[ProvenanceAuthor][0].type.coding = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor][0].who.reference = "Organization/Payer1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#ncpdp "NCPDP Telecommunication"


Instance: ExampleProvenancePayerModified
InstanceOf: pdex-provenance
Description: "Example of provenance based on security group recommendations"
* id = "1000006"
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-01T13:41:23.217+00:00"
* target[0].reference = "Encounter/7"
* recorded = "2020-07-12T18:26:23.217+00:00"
* agent[ProvenanceAuthor][0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor][0].who.reference = "Organization/Payer1"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"

