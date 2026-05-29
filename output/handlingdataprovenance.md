# Handling Data Provenance - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* **Handling Data Provenance**

## Handling Data Provenance

| |
| :--- |
| *Page standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - PDex Implementation, Actors, Interactions, Data Payloads and Methods](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)

Handling Provenance is an essential element in establishing confidence and trust as data is exchanged with other parties. The Provenance resource is used to document the source and handling of data. It documents the chain of custody of the information.

The PDex IG will define [PDex Provenance](PDexProvenance.md) examples that meet the needs of Health Plans. The value sets, including any new codes required, used to enable Health Plans to express Provenance Records will be supplied to the Security Work Group and others developing Provenance profiles as examples of real-world requirements.

Provenance requirements for the Payer Community may be a super-set of those of the Provider-focused Argonaut community.

§pdex-84: Health Plans SHOULD accept and retain Provenance records received with data based on Member-authorized Payer-to-Payer exchange. §

§pdex-85: Health Plans SHOULD accept and retain Provenance records received with data from sources other than Member-authorized Payer-to-Payer exchange. §

§pdex-86: When a Health Plan forwards information as a FHIR Resource it SHOULD create related Provenance record(s) to reflect the original source of the data. §

§pdex-87: A Provenance resource describing the upstream origin (Author or Source) of each member-related resource **SHOULD** be provided with that resource when the Health Plan's FHIR API serves it — particularly when the requester adds the `_revinclude=Provenance:target` parameter to a search query. § This per-resource Provenance is in addition to the per-exchange Transmitter Provenance required by §pdex-127 (see [Overview](overview.md) and [PDex Provenance](PDexProvenance.md) for the full distinction); it is not a substitute for §pdex-127.

This guide provides a pdex-provenance resource that is customized to the needs of the payer by focusing on their role as a transmitter and not originator of data.

[Next Page - Provider Access API (v1)](provider-access-api.md)

