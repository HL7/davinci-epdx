---
title: CDS Hooks Customization
layout: default
active: CDS Hooks Customization
---

CDS Hooks is a relatively new technology and, at the time this version of the implementation guide was written the first published version had only just been released. It is considered a Standard for Trial Use (STU), meaning that it will continue to evolve based on implementer feedback and may change in ways that are not compatible with the current draft. As well, the initial version of the CDS Hooks specification has focused on the core architecture and a relatively simple set of capabilities. Additional capabilities will be introduced in future versions.

To meet requirements identified by Da Vinci project participants, it is necessary to introduce additional capabilities above and beyond what is currently found in the CDS Hooks specification. This section of the PDex implementation guide describes those additional capabilities and the mechanism the implementation guide proposes to implement them. The purpose of these customizations is to enable testing at connectathons and to support feedback into the CDS Hooks design process.

Each capability listed here and in the HRex Implementation Guide has been proposed to the CDS Hooks community and may become part of the official specification in a future release. However, there is a significant likelihood that the manner in which the requirements are met may vary from a syntax or even an architectural approach. Future versions of this implementation guide and the HRex Implementation Guide will be updated to align with how these requirements are addressed in future versions of the CDS Hook specification. Until the both the CDS Hooks content and the FHIR and US Core content underlying this specification is Normative (locked into backward compatibility mode), the PDex implementation guide will remain as STU.

This implementation guide extends/customizes CDS Hooks in 4 ways: using additional hook resources defined in the HRex Implementation Guide, a hook configuration mechanism, additional pre-fetch capabilities and additional response capabilities. Each are described below: