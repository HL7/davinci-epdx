---
title: 6-7 Handling Data Provenance
layout: default
active: 6-7 Handling Data Provenance
---

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

Health Plans **SHALL** accept and retain Provenance records received with data from other sources such as a Member-authorized Payer-to-Payer exchange.

When a Health Plan forwards information as a FHIR Resource it **SHALL** create or update a related Provenance record to reflect the original source, any subsequent data handlers or transformers and the action taken by the Health Plan in it's handling of the data. 

A Provenance resource **SHALL** be provided with each member-related resource provided by the Health Plan's FHIR API. This **SHALL** be used to:
- identify the source of the information. 
- whether the data came via a clinical record or a claim record. 
- Whether the data was subject to manual transcription or other interpretive transformation.

The FHIR R4 Provenance resource is documented here: http://hl7.org/fhir/R4/provenance.html

The Provenance record **SHOULD** be populated as follows:

| Field                              | Value                                                                                                                                              |
|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| occurredPeriod or occurredDataTime | dateTime or Period of the encounter/procedure/medication being provided                                                                            |
| recorded                           | Time of this transaction                                                                                                                           |
| agent.[0].type                     | AMENDER (for conversion of claims data to clinical resources) | TRANS (for information taken from manual input)| REVIEWER (for clinical resources) |
| agent.[0].role                     | informant | custodian                                                                                                                              |
| agent.[0].who                      | Organization resource identifying the health plan                                                                                                  |
| agent.[1].type                     | SOURCE                                                                                                                                             |
| agent.[1].role                     | enterer | performer | author                                                                                                                       |
| agent.[1].who                      | Organization | Practitioner or other resource identifying the entity providing the source information                                              |

### 6-7-1 Example Provenance Record for chain of custody

Three examples are provided to deal with four different scenarios:

1. Health Plan receives clinical document (C-CDA) or FHIR Clinical Resource (Encounter, Procedure, Observation, DiagnosticReport, etc.) from a Provider with Provenance resource attached.
2. Health Plan receives clinical document or FHIR Clinical Resource from a Provider with NO Provenance resource attached.
3. Health Plan receives FHIR Resource from another Health Plan as part of a member-authorized exchange of their health history.
4. Health Plan receive a claim from a provider and renders the data into FHIR clinical resources in order to pass information to a provider.

#### 6-7-1-1 Clinical Information with Provenance

The Health Plan **SHALL** store the Provenance information and maintain the correlation or links to the records the Provenance Record is documenting.
The Health Plan **SHALL** update the Provenance record to add information covering the identity of the health plan and the action taken to become the custodian of the data.
The updated Provenance record **SHALL** be passed on to any downstream entity requesting the associated records.   

#### 6-7-1-2 Clinical Information without Provenance

The Health Plan **SHALL** create a Provenance Provenance Record documenting the source of the records, the identity of the health plan and the action taken to become the custodian of the data.
The updated Provenance record **SHALL** be passed on to any downstream entity requesting the associated records.   

#### 6-7-1-3 FHIR Resource from prior Health Plan

The Health Plan **SHALL** store the Provenance information and maintain the correlation or links to the records the Provenance Record is documenting.
The Health Plan **SHALL** update the Provenance record to add information covering the identity of the health plan and the action taken to become the custodian of the data.
The updated Provenance record **SHALL** be passed on to any downstream entity requesting the associated records.   

#### 6-7-1-4 Claim Information from Provider

The Health Plan **SHALL** create a Provenance Provenance Record documenting the source of the records, the identity of the health plan and the action taken to transform the data to FHIR Clinical Resources.
The updated Provenance record **SHALL** be passed on to any downstream entity requesting the associated records.   

### 6-7-2 Example Provenance Record

An example Provenance record is shown below:

<pre>
Example JSON of Provenance record.

</pre>

