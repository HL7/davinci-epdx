---
title: CDS-Hooks
layout: default
active: CDS-Hooks
---

The bulk of the functionality of this specification is implemented using CDS Hooks. The [Hooks specification](https://cds-hooks.org/) is small. Implementers should read and be familiar with all of it.

CDS Hooks is a relatively new technology. It is considered a Standard for Trial Use, meaning that it will continue to evolve based on implementer feedback and may change in ways that are not compatible with the current draft. As well, the initial version of the specification has focused on the core architecture and a relatively simple set of capabilities. Additional capabilities will be introduced in future versions.

To meet requirements identified by Da Vinci project participants, it is necessary to introduce some additional capabilities above and beyond what is currently found in the CDS Hooks specification. This section of the PDex implementation guide describes those additional capabilities and the mechanism the implementation guide proposes to implement them. The purpose of these customizations is to enable testing at connectathons and to support feedback into the CDS Hooks design process.

Each capability listed here has been proposed to the CDS Hooks community and may well become part of the official specification either in the initial release or in some future release. However, there is a significant likelihood that the manner in which the requirements are met may vary somewhat from a syntax or even an architectural approach. Future versions of this implementation guide will be updated to align with how these requirements are addressed in future versions of the CDS Hook specification. This implementation guide will not be able to be Normative (locked into backward compatibility mode) until the underlying CDS Hooks content is also normative.

This implementation guide extends/customizes CDS Hooks in 5 ways: support for R4, new hooks, a hook configuration mechanism, additional pre-fetch capabilities and additional response capabilities. Each are described below:
