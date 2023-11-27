[Previous Page - PDex Implementation, Actors, Interactions, Data Payloads and Methods](pdeximplementationactorsinteractionsdatapayloadsandmethods.html)

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

The PDex IG will define [PDex Provenance](PDexProvenance.html) examples that meet the needs of Health Plans. The value sets, including any new codes required, used to enable Health Plans to express Provenance Records will be supplied to the Security Work Group and others developing Provenance profiles as examples of real-world requirements.

Provenance requirements for the Payer Community may be a super-set of those of the Provider-focused Argonaut community.

Health Plans SHALL accept and retain Provenance records received with data based on Member-authorized Payer-to-Payer exchange.

Health Plans SHOULD accept and retain Provenance records received with data from  sources other than Member-authorized Payer-to-Payer exchange.

When a Health Plan forwards information as a FHIR Resource it SHOULD create related Provenance record(s) to reflect the original source of the data.

A Provenance resource SHOULD be provided with each member-related resource provided by the Health Plan's FHIR API when requested, such as via the _RevInclude parameter.

This guide provides a pdex-provenance resource that is customized to the needs of the payer by focusing on their role as a transmitter and not originator of data.


[Next Page - Provider Access API](provider-access-api.html)
