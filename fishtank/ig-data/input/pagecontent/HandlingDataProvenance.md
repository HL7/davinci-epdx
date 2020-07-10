[Previous Page - Workflow Examples](WorkflowExamples.html)

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

The PDex IG will define Provenance examples that meet the needs of Health Plans. The value sets, including any new codes required, used to enable Health Plans to express Provenance Records will be supplied to the Security Work Group and others developing Provenance profiles as examples of real world requirements.

Provenance requirements for the Payer Community may be a super-set of those of the Provider focused-argonaut community.

Health Plans **SHOULD** accept and retain Provenance records received with data from other sources such as a Member-authorized Payer-to-Payer exchange.

When a Health Plan forwards information as a FHIR Resource it **SHOULD** create or update a related Provenance record to reflect the original source, any subsequent data handlers or transformers and the action taken by the Health Plan in its handling of the data. 

A Provenance resource **SHOULD** be provided with each member-related resource provided by the Health Plan's FHIR API. 

This **SHOULD** be used to:
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

#### Clinical Information with Provenance

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




[Next Page - Member-Authorized OAuth2 Exchange](Member-AuthorizedOAuth2Exchange.html)