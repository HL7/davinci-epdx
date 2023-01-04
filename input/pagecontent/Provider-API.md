[Previous Page - Payer-to-Payer Exchange](PayerToPayerExchange.html)

<div class="stu-note">

<b><i>Provider API bulk data guidance in this version of the IG is draft only. It has not appeared in ballot and has not been fully tested.</i></b>
</div>

## Provider API

In December 2022, CMS released the [Advancing Interoperability and Improving Prior Authorization Processes Proposed Rule CMS-0057-P](https://www.cms.gov/newsroom/fact-sheets/advancing-interoperability-and-improving-prior-authorization-processes-proposed-rule-cms-0057-p-fact). One of the requirements of the rule is for Impacted Payers to implement a Provider API. This is an API that conforms to the [HL7 FHIR Bulk Data API specification](https://hl7.org/fhir/uv/bulkdata/). The purpose of the Provider API is to enable Providers to query a Payer API for information about the members of the health plan where they have a current, or upcoming treatment relationship. The API will enable a provider to ask a Payer "What do you know about my Patients?"

The Payer Data Exchange Implementation Guide supports the Provider API by utilizing the [Da Vinci Data Export](http://build.fhir.org/ig/HL7/davinci-atr/OperationDefinition-davinci-data-export.html) operation in the [Da Vinci Member Attribution Implementation Guide](http://build.fhir.org/ig/HL7/davinci-atr/index.html).

The Da Vinci Data Export Operation in the Member Attribution IG supports the Bulk FHIR API specification. The operation uses the Group resource. For the PDex Provider API the following capabilities need to be supported:

- Get Group record
- Request all information for members in the Group
- Request information for a subset of members in the Group
- Request a limited set of information for a subset of members in the Group.

This combination of requests should cover all provider data requests, such as:

- Send all data for this set of patients that are new to my practice.
- Send new data since I last requested for this set of patients.
- Send just the lab results for this set of patients since this date.

Access to the Provider API will be controlled in a similar manner to the Payer-to-Payer mTLS discovery API. Access will be restricted to Providers with a contractual relationship with a Payer.

the _exportType_ parameter **SHALL** contain: _hl7.fhir.us.davinci-pdex_ 
to indicate that it is a PDex Provider API export.


[Next Page - Data Mapping](DataMapping.html)
