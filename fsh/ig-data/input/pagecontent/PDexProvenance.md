[Previous Page - US Core Procedure](USCoreProcedure.html)

When a Health Plan forwards information as a FHIR Resource it **SHOULD** create
related Provenance record(s) to reflect the original source, any subsequent data
handlers or transformers and the action taken by the Health Plan in its handling of
the data. 

A Provenance resource **SHOULD** be provided with each member-related resource
provided by the Health Plan's FHIR API. 

This **SHOULD** be used to:
- identify the source of the information. 
- whether the data came via a clinical record or a claim record. 
- Whether the data was subject to manual transcription or other interpretive transformation.

The PDex-Provenance resource is documented here: [StructureDefinition-pdex-provenance.html](StructureDefinition-pdex-provenance.html)

The PDexProvenance record **SHOULD** be populated with the following essential fields as follows:

| Field                              | Value                                                                                                                                              |
|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| occurredPeriod or occurredDataTime | dateTime or Period of the encounter/procedure/medication being provided                                                                            |
| recorded                           | Time of this transaction                                                                                                                           |
| agent.[0].type                     | transmitter (for conversion of claims data to clinical resources) | TRANS (for information taken from manual input)| REVIEWER (for clinical resources) |
| agent.[0].who                      | US Core Organization resource identifying the health plan                                                                                                  |

### Example Provenance Records

Four examples are provided to deal with four different scenarios:

1. Payer is transmitting a bundle [ExampleProvenanceTransmitter](Provenance-1000001.html)
2. Organization as source of a record [ExampleProvenanceAuthor](Provenance-1000002.html)
3. Solo Practitioner as source of a record [ExampleProvenanceSoloPractitioner](Provenance-1000003.html)
4. Payer as source of a record [ExampleProvenancePayerSource](Provenance-1000004.html)

#### Payer Transmitting a bundle

The payer acts as the transmitter. Setting: 

agent.type = "Transmitter" 
agent.who = Payer's US Core Organization record

#### Payer Converts a clinical record from a non-FHIR format

The Payer creates the Provenance record as follows:

target.reference = Reference of the converted record
recorded = Date original record was received
agent.type = Author
agent.who = US Core Organization record for the originating organization
extension.sourceFormat = "ccda" to identify that the record was transformed from a CCDA document

#### Payer Converts a practitioner's clinical record from a non-FHIR format

The Payer creates the Provenance record as follows:

target.reference = Reference of the converted record
recorded = Date original record was received
agent.type = Author
agent.who = US Core Practitioner record when the provider is NOT associated with an organization
extension.sourceFormat = "hl7v2" to identify that the record was transformed from a HL7 v2 message

#### Payer creates a clinical record from internal sources

The Payer creates the Provenance record as follows:

target.reference = Reference of the converted record
recorded = Date original record was received
agent.type = Source
agent.who = Payer's US Core Organization record
extension.sourceFormat = "custom" to identify that the record was transformed from a custom data format such as a CSV file.

The Health Plan **SHALL** accept and maintain Provenance information associated with information received from contributing entities. 
The Health Plan **SHALL** add Provenance record(s) as necessary to document relevant actions taken as the current custodian of the information. 
Provenance information **SHALL** be available for any information requested by an external entity as part of exchanges conformant to this implementation guide. 

This guide shall define extensions to the provenance value sets as required to document the provenance of the information exchange.

#### Clinical Information without Provenance

The Health Plan **SHOULD** create a Provenance Record documenting the source of the records, the identity of the health plan and the action taken to become the custodian of the data.

The updated Provenance record **SHOULD** be passed on to any downstream entity that requests Provenance information for the records they request.   

#### FHIR Resource from prior Health Plan

The Health Plan **SHOULD** store the Provenance information and maintain the correlation or links to the records the Provenance Record is documenting.

The Health Plan **SHOULD** update the Provenance records to add information covering the identity of the health plan and the action taken to become the custodian of the data.

The updated Provenance record **SHOULD** be passed on to any downstream entity requesting the associated records.   

#### Claim Information from Provider

The Health Plan **SHOULD** create a Provenance Record documenting the source of the records, the identity of the health plan and the action taken to transform the data to FHIR Clinical Resources.

The updated Provenance record **SHOULD** be passed on to any downstream entity requesting the associated records.   

### Example Provenance Record

An example Author Provenance record is shown below:

<pre>
{
  "resourceType" : "Provenance",
  "id" : "1000002",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-07-10T16:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>id</b>: 1000002</p><p><b>meta</b>: </p><p><b>target</b>: <a href=\"encounter/2000003\">encounter/2000003</a></p><p><b>recorded</b>: Jul 10, 2020 12:26:23 PM</p><h3>Agents</h3><table class=\"grid\"><tr><td>-</td><td><b>Type</b></td><td><b>Who</b></td></tr><tr><td>*</td><td><span title=\"Codes: {http://terminology.hl7.org/CodeSystem/provenanceagenttype author}\">author</span></td><td><a href=\"Organization/2\">Organization/2</a></td></tr></table></div>"
  },
  "extension" : [
    {
      "url" : "sourceFormat",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerConversionSourceVS",
            "code" : "hl7ccda"
          }
        ]
      }
    }
  ],
  "target" : [
    {
      "reference" : "encounter/2000003"
    }
  ],
  "recorded" : "2020-07-10T16:26:23.217+00:00",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/provenanceagenttype",
            "code" : "author"
          }
        ]
      },
      "who" : {
        "reference" : "Organization/2"
      }
    }
  ]
}

</pre>



[Next Page - US Core Provenance](USCoreProvenance.html)