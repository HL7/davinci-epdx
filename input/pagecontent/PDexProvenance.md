[Previous Page - US Core Procedure](USCoreProcedure.html)

When a Health Plan forwards information as a FHIR Resource it **SHOULD** create related 
Provenance record(s) to reflect the original source. 

A Provenance resource **SHOULD** be provided with each member-related resource provided by the Health Plan's FHIR API. 

This **SHOULD** be used to:
- identify the source of the information. 
- whether the data came via a clinical record, or a claim record. 


The PDex-Provenance resource is based on the [US Core Provenance Profile](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-provenance.html) and is documented here: [StructureDefinition-pdex-provenance.html](StructureDefinition-pdex-provenance.html)

PDex Provenance adds an extension that uses the ProvenanceSourceFrom ValueSet to the entity element. In the PDex Provenance Profile the extension is included in the Provenance.entity base element.

Provenance.recorded value **SHOULD** be the date/time when the data is received by the payer.

The purpose of the extension is to identify the source format that the data in the provenance.target resource is taken from.


The [Pdex Provenance](StructureDefinition-pdex-provenance.html) record **SHOULD** be populated with the following essential fields (Must Support or Cardinality greater than 0..*) as follows:

{% include style_insert_table_blue.html %}

| R4 Element                                                | Name                         | Cardinality | Type                                                                    |
|-----------------------------------------------------------|------------------------------|:-----------:|-------------------------------------------------------------------------|
| Provenance.target                                         |  target                      |     1..*    | Reference(Resource)                                                     |
| Provenance.recorded                                       |  recorded                    |     1..1    | instant                                                                 |
| Provenance.agent                                          |  agent                       |     1..*    | (Slice Definition)                                                      |
| Provenance.agent:All Slices.type                          |  type                        |     1..1    | CodeableConcept                                                         |
| Provenance.agent:All Slices.who                           |  who                         |     1..1    | Reference(US Core Organization Profile \| US Core Practitioner Profile) |
| Provenance.agent:All Slices.onBehalfOf                    |  onBehalfOf                  |     0..1    | Reference(US Core Organization Profile)                                 |
| Provenance.agent:ProvenanceAuthor                         |  agent:ProvenanceAuthor      |     0..*    | BackboneElement                                                         |
| Provenance.agent:ProvenanceAuthor.type                    |  type                        |     1..1    | CodeableConcept                                                         |
| Provenance.agent:ProvenanceAuthor.type.coding             |  coding                      |     1..*    | Coding                                                                  |
| Provenance.agent:ProvenanceAuthor.type.coding.system      |  system                      |     1..1    | uri                                                                     |
| Provenance.agent:ProvenanceAuthor.type.coding.code        |  code                        |     1..1    | code                                                                    |
| Provenance.agent:ProvenanceAuthor.who                     |  who                         |     1..1    | Reference(US Core Organization Profile \| US Core Practitioner Profile) |
| Provenance.agent:ProvenanceTransmitter                    |  agent:ProvenanceTransmitter |     0..1    | BackboneElement                                                         |
| Provenance.agent:ProvenanceTransmitter.type               |  type                        |     1..1    | CodeableConcept                                                         |
| Provenance.agent:ProvenanceTransmitter.type.coding        |  coding                      |     1..*    | Coding                                                                  |
| Provenance.agent:ProvenanceTransmitter.type.coding.system |  system                      |     1..1    | uri                                                                     |
| Provenance.agent:ProvenanceTransmitter.type.coding.code   |  code                        |     1..1    | code                                                                    |
| Provenance.agent:ProvenanceTransmitter.who                |  who                         |     1..1    | Reference(US Core Organization Profile \| US Core Practitioner Profile) |
| Provenance.entity.ProvenanceSourceFrom.url                |  url                         |     1..1    | uri                                                                     |
| Provenance.entity.role                                    |  role                        |     1..1    | code                                                                    |
| Provenance.entity.what                                    |  what                        |     1..1    | Reference(Resource) In general this will be a text string indicating the source is defined by the role code                                                     |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

### Example Provenance Records

Four examples are provided to deal with four different scenarios:

1. Payer is transmitting a bundle [ExampleProvenanceTransmitter](Provenance-1000001.html)
2. Organization as source of a record [ExampleProvenanceAuthor](Provenance-1000002.html)
3. Solo Practitioner as source of a record [ExampleProvenanceSoloPractitioner](Provenance-1000003.html)
4. Payer as source of a record [ExampleProvenancePayerSource](Provenance-1000004.html)

#### Payer Receives a bundle from another Payer

If the payer is storing the content of the bundle rather than retaining the bundle intact then the content received
SHOULD be written to a FHIR server and the records assigned new FHIR IDs with references being re-written to maintain 
referential integrity.

Provenance records received need to have their target references re-written to maintain the link to the received
records. If the bundle include a Transmitter Provenance record the receiving payer would re-write the target 
reference(s) in the Transmitter record to link to the records received in the bundle that were written to the 
receiving payer's FHIR server.

Example bundles showing how records are updated as they pass from Payer to Payer are shown below. In these examples we
are only showing encounter records, however any US Core clinical record could be part of the transmitted bundle.

The first bundle is requested by Payer 2 from Payer 1.  Payer 1 also includes a Transmitter Provenance record for 
the content of the bundle.

[Payer 1 Bundle requested by Payer 2](Bundle-1000000-1.json.html)

When a member moves from Payer 2 to Payer 3 the bundle comprises a Patient Record from Payer 2. Encounter and 
Provenance records received from Payer 1. The Transmitter record from Payer 1. The Encounter record received from
a Provider for the member while covered by Payer 2. A supporting Provenance record for the encounter is included. 
A Transmitter Provenance record is also generated by Payer 2 to cover the content of the bundle.

[Payer 2 Bundle requested by Payer 3](Bundle-1000000-2.json.html)

When the member moves from Payer 2 to Payer 3 the bundle received from Payer 2 includes a Patient record written 
by Payer 2. The Encounter and Provenance records from Payer 1 plus the Encounter and Provenance records generated
while the member was covered by Payer 2. A re-written Transmitter record is included from Payer 1 and a Transmitter
record generated for the bundle by Payer 2 is also included.

[Payer 3 bundle requestewd by Payer 4](Bundle-1000000-3.json.html)

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

An example Author Provenance record appears below:

<pre>
{
  "resourceType" : "Provenance",
  "id" : "1000002",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2020-07-10T16:26:23.217+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-target-provenance"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p></div>"
  },
  "extension" : [
    {
      "url" : "sourceFormat",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerSourceFormatVS",
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
        "reference" : "Organization/Payer1"
      }
    }
  ]
}

</pre>

### Returning Provenance Records

Requesting a provenance resource is accomplished by adding the "_revinclude=Provenance:target" parameter to a search query. 

For servers that support the "_revinclude" parameter this will return Provenance records in a bundle along with 
the resources returned by the search query. 


[Next Page - US Core Provenance](USCoreProvenance.html)
