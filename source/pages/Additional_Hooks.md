---
title: Additional Hooks
layout: default
active: Additional Hooks
---

The base CDS hooks 1.0 specification defines the following hooks: 

* patient-view
* medication-prescribe
* order-review
* order-select
* order-sign
* appointment-book
* encounter-start
* encounter-discharge

The expectation is that new hooks will be defined by and eventually formally approved by the community. The formal process for this proposal and maturity development process is still evolving. Individuals interested in this process can provide feedback [here](https://cds-hooks.hl7.org).

Defining new hooks is an expected part of the CDS Hooks specification and there is no need for hooks to be officially registered with the community for them to be used. However, using registered hooks increases the likelihood of broad adoption by the community - which increases the likelihood of broad uptake of this implementation guide. The project is proposing hooks that build on proposals made in the Da Vinci CRD IG. 

Sharing of member health information via PDex will therefore use the CDS Hooks specification. Connection to health plan systems will be supported via the following hook:

* encounter-start

It is possible that this hook will change over the course of the review/approval process, including changes to the names of the hooks, their context parameters or other information. Future versions of this implementation guide will be updated to align with such changes. Additional hooks may also be added.

NOTE: Even pre-existing hooks are not yet locked down as normative and similar changes are possible, though perhaps less likely.
