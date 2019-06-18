---
title: 6-7 Handling Data Provenance
layout: default
active: 6-7 Handling Data Provenance
---

<ul id="markdown-toc">
	Section Guide:
  <li><a href="6_CDS-Hooks.html" id="markdown-toc-cds-hooks">6 CDS-Hooks</a></li>
  <li><a href="6-1_Support_for_FHIR_R4.html" id="markdown-toc-r4-support">6-1 Support for FHIR R4</a></li>
  <li><a href="6-2_Additional_or_Modified_Hooks.html" id="markdown-toc-additional">6-2 Additional or Modified Hooks</a></li>
  <li><a href="6-3_PDex_Hooks.html" id="markdown-toc-pdex-hooks">6-3 PDex Hooks</a></li>
  <li><a href="6-4_Hook_Configuration.html" id="markdown-toc-hook-configuration">6-4 Hook Configuration</a></li>
	<li><a href="6-5_Systems.html" id="markdown-toc-systems">6-5 Systems</a></li>
	<li><a href="6-6_Workflow_Examples.html" id="markdown-toc-examples">6-6 Workflow Examples</a></li>
	<li><a href="6-6-1_First_Visit_with_New_Provider.html" id="markdown-toc-first-visit">6-6-1 First Visit with New Provider</a></li>
	<li><a href="6-6-2_Return_Visit_with_Provider.html" id="markdown-toc-return-visit">6-6-2 Return Visit with Provider</a></li>
  <li><a href="6-6-3_FHIR_Profiles_and_CDS_Hooks_Context.html" id="markdown-toc-profiles-and-context">6-6-3 FHIR Profiles and CDS Hooks Context</a></li>
	<li><a href="6-7_Handling_Data_Provenance.html" id="markdown-toc-provenance">6-7 Handling Data Provenance</a></li>
</ul>

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

Health Plans **SHALL** accept and retain Provenance records received with data from other sources such as a Member-authorized Payer-to-Payer exchange.

When a Health Plan forwards information as a FHIR Resource it **SHALL** create or update a related Provenance record to reflect the original source, any subsequent data handlers or transformers and the action taken by the Health Plan in it's handling of the data. 

A Provenance resource **SHALL** be provided with each member-related resource provided by the Health Plan's FHIR API. This **SHALL** be used to:
- identify the source of the information. 
- whether the data came via a clinical record or a claim record. 
- Whether the data was subject to manual transcription or other interpretive transformation.

The FHIR R4 Provenance resource is documented here: http://hl7.org/fhir/R4/provenance.html

The Provenance record **SHOULD** be populated with the following essential fields as follows:

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
{
  "resourceType": "Provenance",
  "id": "example",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from XDS managed CDA Referral received 26-June as authorized by a referenced Consent.</div>"
  },
  "target": [
    {
      "reference": "Procedure/example/_history/1"
    }
  ],
  "occurredPeriod": {
    "start": "2015-06-27",
    "end": "2015-06-28"
  },
  "recorded": "2015-06-27T08:39:24+10:00",
  "policy": [
    "http://acme.com/fhir/Consent/25"
  ],
  "location": {
    "reference": "Location/1"
  },
  "reason": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "3457005",
          "display": "Referral"
        }
      ]
    }
  ],
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "AUT"
          }
        ]
      },
      "who": {
        "reference": "Practitioner/xcda-author"
      }
    },
    {
      "id": "a1",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "DEV"
          }
        ]
      },
      "who": {
        "reference": "Device/software"
      }
    }
  ],
  "entity": [
    {
      "role": "source",
      "what": {
        "reference": "DocumentReference/example",
        "display": "CDA Document in XDS repository"
      }
    }
  ]
}

</pre>

<ul>
  <li><a href="6-6-3_FHIR_Profiles_and_CDS_Hooks_Context.html" >Previous</a></li>
  <li><a href="7_Member-Authorized_OAuth2_Exchange.html" >Next</a></li>
</ul>