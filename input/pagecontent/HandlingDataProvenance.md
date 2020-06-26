[Previous Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](PDexImplementationActorsInteractionsDataPayloadsandMethods.html)

### The purpose of Provenance

> *Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility*  

US Core has implemented a Provenance profile. The purpose of the profile is to cover:
> *the minimal (basic) information to support lineage of information.*   

### Payer Data Exchange Objectives for Provenance 

As payers exchange information with each other, with providers and with third party applications using PDex and US Core profiles it is important that provenance is provided. The benefits to the Payer community in providing accompanying provenance resources are:

- Identifying the payer as the "transmitter" and not the author of the majority of the information they provide.
- Enabling downstream users of the information to make a value judgement when comparing information from different sources. 
- Recording how claims information was received and, if relevant, converted to FHIR. 
- As more healthcare organizations use and exchange information via FHIR, more provenance records will be exchanged. Payers shall preserve and pass on provenance resources when exchanging FHIR records received from other sources.

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

US Core defines a Provenance profile. The constraints on the US Core version do not fit the needs of the payer community for the majority of situations where a payer acts as a "transmitter". The Payer Provenance profile in this guide is defined to support health plan needs.

The PDex IG will define Provenance examples that meet the needs of Health Plans. The value sets, including any new codes required, used to enable Health Plans to express Provenance Records will be supplied to the Security Work Group and others developing Provenance profiles as examples of real world requirements.

Health Plans **SHOULD** accept and retain Provenance records received with data from other sources such as a Member-authorized Payer-to-Payer exchange.

When Health Plans forward information as a FHIR Resource they **SHOULD** create a related Provenance record to reflect the original source, any subsequent data handlers or transformers and the action taken by the Health Plan in its handling of the data. 

A Provenance resource **SHOULD** be provided with each member-related resource or bundle provided by the Health Plan's FHIR API. 

This **SHOULD** be used to:
- identify the source of the information. 
- whether the data came via a clinical record or a claim record. 
- Whether the data was subject to manual transcription or other interpretive transformation.


[Next Page - Data Mapping](DataMapping.html)